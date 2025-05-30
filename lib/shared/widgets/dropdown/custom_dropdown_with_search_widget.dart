// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomDropdownWithSearchWidget<T> extends StatefulWidget {
  final String hintText;
  final String? errorText;
  final String Function(T) itemAsString;
  final void Function(T?) onChanged;
  final Future<List<T>> Function(String)? asyncItems;
  final List<T>? localItems;
  final String? Function(String?)? validator;
  final Duration searchDelay;
  final T? selectedItem;
  final bool isEnabled;
  final String? labelText;
  final Function()? onPressed;
  final bool autoFetch;
  final bool optional;
  final bool requiredField;
  final bool showAddButton;
  final Color? backgroundColorDropdown;

  const CustomDropdownWithSearchWidget({
    super.key,
    required this.hintText,
    this.errorText,
    required this.itemAsString,
    required this.onChanged,
    this.asyncItems,
    this.localItems,
    this.validator,
    this.searchDelay = const Duration(milliseconds: 300),
    this.selectedItem,
    this.isEnabled = true,
    this.labelText,
    this.onPressed,
    this.autoFetch = false,
    this.optional = false,
    this.requiredField = true,
    this.showAddButton = true,
    this.backgroundColorDropdown,
  });

  @override
  CustomDropdownWithSearchWidgetState<T> createState() =>
      CustomDropdownWithSearchWidgetState<T>();
}

class CustomDropdownWithSearchWidgetState<T>
    extends State<CustomDropdownWithSearchWidget<T>>
    with WidgetsBindingObserver {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  List<T> _items = [];
  bool _isLoading = false;
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;
  bool _isDropdownOpen = false;
  final GlobalKey _textFieldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _updateController();
    if (widget.localItems != null && widget.localItems!.isNotEmpty) {
      _items = widget.localItems!;
    } else if (widget.asyncItems != null && widget.isEnabled) {
      _fetchItems('');
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    if (_isDropdownOpen) {
      _closeDropdown();
    }
    super.didChangeMetrics();
  }

  void _updateController() {
    if (widget.selectedItem != null) {
      _controller.text = widget.itemAsString(widget.selectedItem as T);
    } else {
      _controller.text = '';
    }
  }

  Future<void> _fetchItems(String query) async {
    if (widget.asyncItems == null || !widget.isEnabled) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final items = await widget.asyncItems!(query);
      if (!mounted) return;
      setState(() {
        _items = items;
        _isLoading = false;
      });
      _updateDropdown();
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });
      _updateDropdown();
    }
  }

  void _onSearchTextChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(widget.searchDelay, () {
      if (widget.localItems != null && widget.localItems!.isNotEmpty) {
        setState(() {
          _items =
              widget.localItems!
                  .where(
                    (item) => widget
                        .itemAsString(item)
                        .toLowerCase()
                        .contains(value.toLowerCase()),
                  )
                  .toList();
        });
        _updateDropdown();
      } else if (widget.isEnabled && widget.asyncItems != null) {
        _fetchItems(value);
      }
    });
  }

  void _toggleDropdown() {
    if (!widget.isEnabled) return;
    if (_isDropdownOpen) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() {
      _isDropdownOpen = true;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.autoFetch) {
        _fetchItems(_controller.text);
      }
    });
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    setState(() {
      _isDropdownOpen = false;
    });
  }

  void _updateDropdown() {
    if (_isDropdownOpen) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _overlayEntry?.remove();
          _overlayEntry = _createOverlayEntry();
          Overlay.of(context).insert(_overlayEntry!);
        }
      });
    }
  }

  OverlayEntry _createOverlayEntry() {
    final RenderBox renderBox =
        _textFieldKey.currentContext?.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    final screenHeight = context.sHeight;
    const dropdownHeight = 150.0;

    bool isDropdownBelowVisibleArea =
        offset.dy + size.height + dropdownHeight > screenHeight;

    return OverlayEntry(
      builder:
          (context) => GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              _closeDropdown();
            },
            child: Stack(
              children: [
                Positioned(
                  left: offset.dx,
                  top:
                      isDropdownBelowVisibleArea
                          ? offset.dy - dropdownHeight
                          : offset.dy + size.height,
                  width: size.width,
                  child: Material(
                    elevation: 2.0,
                    child:
                        _isLoading
                            ? SizedBox(
                              height: 150,
                              child: Center(child: (customLoadingWidget)),
                            )
                            : _items.isEmpty
                            ? Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 4,
                              children: [
                                Center(
                                  child: Text(
                                    widget.errorText ??
                                        i18n.tr('general.error.default'),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _fetchItems(_controller.text);
                                  },
                                  icon: const Icon(Icons.refresh),
                                ),
                              ],
                            )
                            : Container(
                              constraints: const BoxConstraints(maxHeight: 150),
                              color:
                                  widget.backgroundColorDropdown ??
                                  Colors.transparent,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: _items.length,
                                itemBuilder: (context, index) {
                                  final item = _items[index];
                                  return ListTile(
                                    title: Text(widget.itemAsString(item)),
                                    onTap: () {
                                      widget.onChanged(item);
                                      _controller.text = widget.itemAsString(
                                        item,
                                      );
                                      _closeDropdown();
                                    },
                                  );
                                },
                              ),
                            ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final labelStyle = context.labelMediumW(500);
    final textStyle = context.bodyMediumW(500);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                if (widget.labelText != null &&
                    widget.labelText!.isNotEmpty) ...[
                  Text(widget.labelText!, style: textStyle),
                ],
                if (widget.optional == true) ...[
                  Text(
                    '(${i18n.tr('navigation.menu.title.optional')})',
                    style: labelStyle,
                  ),
                ],
                if (widget.requiredField == true) ...[
                  Text(
                    '*',
                    style: TextStyle(color: context.error, fontSize: 20),
                  ),
                ],
              ],
            ),
            if (widget.showAddButton == true) ...[
              InkWell(
                onTap: widget.onPressed,
                child: const Icon(Icons.add, size: 20),
              ),
            ],
          ],
        ),
        CompositedTransformTarget(
          link: _layerLink,
          child: TextFormField(
            key: _textFieldKey,
            controller: _controller,
            validator: widget.validator,
            style: textStyle,
            decoration: InputDecoration(
              hintText: widget.selectedItem == null ? widget.hintText : null,
              errorText: widget.errorText,
              suffixIcon:
                  widget.isEnabled
                      ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_controller.text.isNotEmpty)
                            IconButton(
                              icon: const Icon(Icons.clear, size: 20),
                              onPressed: () {
                                _controller.clear();
                                widget.onChanged(null);
                                _fetchItems('');
                                _updateDropdown();
                              },
                            ),
                          Container(
                            width: 1,
                            height: 20,
                            color: context.outline,
                          ),
                          _isDropdownOpen
                              ? IconButton(
                                icon: const Icon(Icons.arrow_drop_up),
                                onPressed: _toggleDropdown,
                              )
                              : IconButton(
                                icon: const Icon(Icons.arrow_drop_down),
                                onPressed: _toggleDropdown,
                              ),
                        ],
                      )
                      : Icon(Icons.arrow_drop_down, color: context.outline),
            ),
            onTap: () {
              if (widget.isEnabled && !_isDropdownOpen) {
                _toggleDropdown();
              }
            },
            onChanged: widget.isEnabled ? _onSearchTextChanged : null,
            textInputAction: TextInputAction.none,
            enabled: widget.isEnabled,
          ),
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(CustomDropdownWithSearchWidget<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedItem != oldWidget.selectedItem) {
      _updateController();
      if (_isDropdownOpen) {
        _updateDropdown();
      }
    }
  }
}
