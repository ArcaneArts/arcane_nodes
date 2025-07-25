import 'package:flutter/material.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';

bool isContextMenuVisible = false;

void createAndShowContextMenu(
  BuildContext context, {
  required List<ContextMenuEntry> entries,
  required Offset position,
  Function(String? value)? onDismiss,
}) async {
  if (isContextMenuVisible) return;

  isContextMenuVisible = true;

  final menu = ContextMenu(
    entries: entries,
    position: position,
    padding: const EdgeInsets.all(8),
  );

  final copiedValue = await showContextMenu(
    context,
    contextMenu: menu,
  ).then((value) {
    isContextMenuVisible = false;
    return value;
  });

  if (onDismiss != null) onDismiss(copiedValue);
}
