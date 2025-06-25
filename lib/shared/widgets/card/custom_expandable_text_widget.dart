import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomExpandableTextWidget extends StatefulWidget {
  final String text;
  const CustomExpandableTextWidget(this.text, {super.key});

  @override
  State<CustomExpandableTextWidget> createState() =>
      CustomExpandableTextWidgetState();
}

class CustomExpandableTextWidgetState
    extends State<CustomExpandableTextWidget> {
  bool expanded = false;
  bool _isTextOverflow = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkTextOverflow();
    });
  }

  void _checkTextOverflow() {
    final textPainter = TextPainter(
      text: TextSpan(
        text: widget.text,
        style: context.bodyLarge(),
      ),
      textDirection: TextDirection.ltr,
      maxLines: 3,
    );

    textPainter.layout(maxWidth: MediaQuery.of(context).size.width - 32);

    if (mounted) {
      setState(() {
        _isTextOverflow = textPainter.didExceedMaxLines;
      });
    }
    textPainter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          crossFadeState:
              expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: Text(
            widget.text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: context.bodyLarge(),
            textAlign: TextAlign.justify,
          ),
          secondChild: Text(
            widget.text,
            style: context.bodyLarge(),
            textAlign: TextAlign.justify,
          ),
        ),
        if (_isTextOverflow)
          GestureDetector(
            onTap: () => setState(() => expanded = !expanded),
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                expanded
                    ? 'common'.message('readLess')
                    : 'common'.message('readMore'),
                style: context.labelSmall().copyWith(color: context.primary),
              ),
            ),
          ),
      ],
    );
  }
}
