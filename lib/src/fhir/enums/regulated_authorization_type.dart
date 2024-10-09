import 'package:json_annotation/json_annotation.dart';

/// Overall type of this authorization.
enum RegulatedAuthorizationType {
  /// Display: Marketing Authorization
  @JsonValue('MarketingAuth')
  MarketingAuth,

  /// Display: Orphan Drug Authorization
  @JsonValue('Orphan')
  Orphan,

  /// Display: Pediatric Use Drug Authorization
  @JsonValue('Pediatric')
  Pediatric,
  ;

  @override
  String toString() {
    switch (this) {
      case MarketingAuth:
        return 'MarketingAuth';
      case Orphan:
        return 'Orphan';
      case Pediatric:
        return 'Pediatric';
    }
  }

  String toJson() => toString();
  static RegulatedAuthorizationType fromString(String str) {
    switch (str) {
      case 'MarketingAuth':
        return RegulatedAuthorizationType.MarketingAuth;
      case 'Orphan':
        return RegulatedAuthorizationType.Orphan;
      case 'Pediatric':
        return RegulatedAuthorizationType.Pediatric;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static RegulatedAuthorizationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
