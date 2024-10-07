import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Benefit Term codes.
enum BenefitTermCodes {
  /// Display: Annual
  /// Definition: Annual, renewing on the anniversary
  @JsonValue('annual')
  annual,
  /// Display: Day
  /// Definition: Per day
  @JsonValue('day')
  day,
  /// Display: Lifetime
  /// Definition: For the total term, lifetime, of the policy or coverage
  @JsonValue('lifetime')
  lifetime,
;

@override
  String toString() {
      switch(this) {
        case annual: return 'annual';
        case day: return 'day';
        case lifetime: return 'lifetime';
      }
      }
String toJson() => toString();
  BenefitTermCodes fromString(String str) {
    switch(str) {
      case 'annual': return BenefitTermCodes.annual;
      case 'day': return BenefitTermCodes.day;
      case 'lifetime': return BenefitTermCodes.lifetime;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 BenefitTermCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

