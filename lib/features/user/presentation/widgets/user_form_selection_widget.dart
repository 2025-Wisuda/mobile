import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UserFormSelectionWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final RxList<String> selectedIds;
  final RxList<UserEntity>? selectedUsers;
  final String? label;
  final String hint;
  final List<String>? allowedGroups;
  final String? controllerKey;
  final List<String>? restrictToUserIds;

  const UserFormSelectionWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.selectedIds,
    this.selectedUsers,
    this.label,
    required this.hint,
    this.allowedGroups,
    this.controllerKey,
    this.restrictToUserIds,
  });

  FetchListUserController get fetchListUserC =>
      Get.find<FetchListUserController>(
        tag: controllerKey ?? 'default',
      );

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final noUserFound = 'user'.message('fetchListUser.empty');

    Get.lazyPut(
      () => FetchListUserController(Get.find<FetchListUserUsecase>()),
      tag: controllerKey ?? 'default',
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (allowedGroups?.isNotEmpty == true) {
        fetchListUserC.searchWithGroupFilter('', allowedGroups);
      }

      scrollController.addListener(() {
        if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent &&
            !fetchListUserC.isLoadingMore &&
            fetchListUserC.canLoadMore) {
          fetchListUserC.loadMore();
        }
      });
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        CustomTextFormFieldWidget(
          requiredField: false,
          controller: controller,
          focusNode: focusNode,
          labelText: label,
          hintText: hint,
          keyboardType: TextInputType.text,
          onChanged: (query) {
            fetchListUserC.searchWithGroupFilter(query, allowedGroups);
          },
          suffixIcon: IconButton(
            icon: const Icon(Icons.search, size: 24),
            onPressed: () {
              fetchListUserC.searchWithGroupFilter(
                  controller.value.text, allowedGroups);
            },
          ),
        ),
        Obx(() {
          if (selectedIds.isEmpty) return const SizedBox.shrink();

          return Container(
            constraints: const BoxConstraints(maxHeight: 120),
            decoration: BoxDecoration(
              color: context.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: context.outline.withValues(alpha: 0.2)),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              child: Wrap(
                spacing: 6,
                runSpacing: 4,
                children: selectedIds.map((id) {
                  final user = selectedUsers
                          ?.firstWhereOrNull((u) => u.id == id) ??
                      fetchListUserC.items.firstWhereOrNull((u) => u.id == id);
                  if (user == null) return const SizedBox.shrink();

                  return Chip(
                    avatar: CircleAvatar(
                      backgroundColor: context.primary.withValues(alpha: 0.1),
                      child: Icon(
                        Icons.person,
                        size: 16,
                        color: context.primary,
                      ),
                    ),
                    label: Text(
                      user.fullNameOrUsername,
                      style: context.bodySmallW(500),
                    ),
                    backgroundColor: context.surfaceContainerLowest,
                    deleteIcon: Icon(
                      Icons.close,
                      size: 18,
                      color: context.error,
                    ),
                    onDeleted: () {
                      selectedIds.remove(id);
                      selectedIds.refresh();
                      selectedUsers?.removeWhere((u) => u.id == id);
                    },
                  );
                }).toList(),
              ),
            ),
          );
        }),
        Obx(() {
          final allUsers = fetchListUserC.items;
          final users = restrictToUserIds != null
              ? allUsers
                  .where((user) => restrictToUserIds!.contains(user.id))
                  .toList()
              : allUsers;
          final hasSearchText = controller.text.isNotEmpty;
          final hasSelectedUsers = selectedIds.isNotEmpty;
          final hasUsers = users.isNotEmpty;
          final hasSearchedOrSelected =
              hasSearchText || hasSelectedUsers || hasUsers;

          if (!hasSearchedOrSelected && !fetchListUserC.isLoading) {
            return Container(
              height: 120,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: context.surface,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: context.outline.withValues(alpha: 0.2)),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: context.outline,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Type to search users',
                      style: context.bodyMediumW(400).copyWith(
                            color: context.onSurface.withValues(alpha: 0.6),
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }

          if (users.isEmpty && !fetchListUserC.isLoading && hasSearchText) {
            return Container(
              height: 120,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: context.surface,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: context.outline.withValues(alpha: 0.2)),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_off,
                      size: 32,
                      color: context.outline,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      noUserFound,
                      style: context.bodyMediumW(400).copyWith(
                            color: context.onSurface.withValues(alpha: 0.6),
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }

          if (fetchListUserC.isLoading && users.isEmpty) {
            return Container(
              height: 120,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: context.surface,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: context.outline.withValues(alpha: 0.2)),
              ),
              child: const Center(
                child: CustomPrimaryLoadingWidget(),
              ),
            );
          }

          return Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: context.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: context.outline.withValues(alpha: 0.2)),
              boxShadow: [
                BoxShadow(
                  color: context.shadow.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListView.separated(
              separatorBuilder: (_, __) => Divider(
                height: 1,
                color: context.outline.withValues(alpha: 0.1),
              ),
              controller: scrollController,
              itemCount: users.length + (fetchListUserC.isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == users.length) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    child: const Center(
                      child: CustomPrimaryLoadingWidget(),
                    ),
                  );
                }

                final user = users[index];
                final isSelected = selectedIds.contains(user.id);

                return ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  leading: CircleAvatar(
                    radius: 18,
                    backgroundColor: context.primary.withValues(alpha: 0.1),
                    child: Icon(
                      Icons.person,
                      size: 20,
                      color: context.primary,
                    ),
                  ),
                  title: Text(
                    user.fullNameOrUsername,
                    style: context.bodyMediumW(500),
                  ),
                  subtitle: user.email?.isNotEmpty == true
                      ? Text(
                          user.email!,
                          style: context.bodySmallW(400).copyWith(
                                color: context.onSurface.withValues(alpha: 0.6),
                              ),
                        )
                      : null,
                  trailing: isSelected
                      ? Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: context.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 16,
                            color: context.primary,
                          ),
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 20,
                            color: context.primary,
                          ),
                          onPressed: () {
                            selectedIds.add(user.id ?? '');
                            if (selectedUsers != null &&
                                !selectedUsers!.any((u) => u.id == user.id)) {
                              selectedUsers!.add(user);
                            }
                          },
                        ),
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
