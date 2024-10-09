/// TODO (and should this be required?).
enum AdverseEventOutcome {
  /// Display: Resolved
  resolved,

  /// Display: Recovering
  recovering,

  /// Display: Ongoing
  ongoing,

  /// Display: Resolved with Sequelae
  resolvedWithSequelae,

  /// Display: Fatal
  fatal,

  /// Display: Unknown
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case resolved:
        return 'resolved';
      case recovering:
        return 'recovering';
      case ongoing:
        return 'ongoing';
      case resolvedWithSequelae:
        return 'resolvedWithSequelae';
      case fatal:
        return 'fatal';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static AdverseEventOutcome fromString(String str) {
    switch (str) {
      case 'resolved':
        return AdverseEventOutcome.resolved;
      case 'recovering':
        return AdverseEventOutcome.recovering;
      case 'ongoing':
        return AdverseEventOutcome.ongoing;
      case 'resolvedWithSequelae':
        return AdverseEventOutcome.resolvedWithSequelae;
      case 'fatal':
        return AdverseEventOutcome.fatal;
      case 'unknown':
        return AdverseEventOutcome.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AdverseEventOutcome fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
