import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Payee Type codes.
enum ClaimPayeeTypeCodes {
  /// Display: Subscriber
  /// Definition: The subscriber (policy holder) will be reimbursed.
  @JsonValue('subscriber')
  subscriber,

  /// Display: Provider
  /// Definition: Any benefit payable will be paid to the provider (Assignment of Benefit).
  @JsonValue('provider')
  provider,

  /// Display: Provider
  /// Definition: Any benefit payable will be paid to a third party such as a guarrantor.
  @JsonValue('other')
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case subscriber:
        return 'subscriber';
      case provider:
        return 'provider';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  ClaimPayeeTypeCodes fromString(String str) {
    switch (str) {
      case 'subscriber':
        return ClaimPayeeTypeCodes.subscriber;
      case 'provider':
        return ClaimPayeeTypeCodes.provider;
      case 'other':
        return ClaimPayeeTypeCodes.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ClaimPayeeTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
