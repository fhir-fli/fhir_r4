enum Severity {
  report,
  warning,
  error,
  trace,
  message,
}

extension SeverityExtension on Severity {
  static const Map<Severity, String> _names = {
    Severity.report: "report",
    Severity.warning: "warning",
    Severity.error: "error",
    Severity.trace: "trace",
    Severity.message: "message",
  };

  String get name => _names[this] ?? "unknown";

  static Severity fromIndex(int index) {
    switch (index) {
      case 0:
        return Severity.report;
      case 1:
        return Severity.warning;
      case 2:
        return Severity.error;
      case 3:
        return Severity.trace;
      case 4:
        return Severity.message;
      default:
        throw ArgumentError("Invalid index for Severity enum");
    }
  }

  int get index {
    switch (this) {
      case Severity.report:
        return 0;
      case Severity.warning:
        return 1;
      case Severity.error:
        return 2;
      case Severity.trace:
        return 3;
      case Severity.message:
        return 4;
      default:
        return -1; // This should never happen
    }
  }

  String get category => runtimeType.toString();
}
