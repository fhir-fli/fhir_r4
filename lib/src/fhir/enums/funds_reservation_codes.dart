import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample funds reservation type codes.
enum FundsReservationCodes {
  /// Display: Patient
  /// Definition: The payor is requested to reserve funds for the provision of the named services by any provider for settlement of future claims related to this request.
  @JsonValue('patient')
  patient,
  /// Display: Provider
  /// Definition: The payor is requested to reserve funds solely for the named provider for settlement of future claims related to this request.
  @JsonValue('provider')
  provider,
  /// Display: None
  /// Definition: The payor is not being requested to reserve any funds for the settlement of future claims.
  @JsonValue('none')
  none,
;

@override
  String toString() {
      switch(this) {
        case patient: return 'patient';
        case provider: return 'provider';
        case none: return 'none';
      }
      }
String toJson() => toString();
  FundsReservationCodes fromString(String str) {
    switch(str) {
      case 'patient': return FundsReservationCodes.patient;
      case 'provider': return FundsReservationCodes.provider;
      case 'none': return FundsReservationCodes.none;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 FundsReservationCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
