import 'package:json_annotation/json_annotation.dart';

/// The reason why the supply item was requested.
enum SupplyRequestReason {
  /// Display: Patient Care
  /// Definition: The supply has been requested for use in direct patient care.
  @JsonValue('patient-care')
  patient_care,

  /// Display: Ward Stock
  /// Definition: The supply has been requested for creating or replenishing ward stock.
  @JsonValue('ward-stock')
  ward_stock,
  ;

  @override
  String toString() {
    switch (this) {
      case patient_care:
        return 'patient-care';
      case ward_stock:
        return 'ward-stock';
    }
  }

  String toJson() => toString();
  static SupplyRequestReason fromString(String str) {
    switch (str) {
      case 'patient-care':
        return SupplyRequestReason.patient_care;
      case 'ward-stock':
        return SupplyRequestReason.ward_stock;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SupplyRequestReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
