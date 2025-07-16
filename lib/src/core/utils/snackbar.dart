import 'package:fast_log/fast_log.dart';

enum SnackbarType { success, error, warning, info }

void nodeLog(String message, SnackbarType type) {
  switch (type) {
    case SnackbarType.success:
      success("[Arcane Nodes]: $message");
      break;
    case SnackbarType.error:
      error("[Arcane Nodes]: $message");
      break;
    case SnackbarType.warning:
      warn("[Arcane Nodes]: $message");
      break;
    case SnackbarType.info:
      info("[Arcane Nodes]: $message");
      break;
  }
}
