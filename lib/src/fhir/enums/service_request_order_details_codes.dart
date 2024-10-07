import 'package:json_annotation/json_annotation.dart';

/// An example value set of Codified order entry details concepts.  These concepts only make sense in the context of what is being ordered.  This example is for a patient ventilation order
enum ServiceRequestOrderDetailsCodes {
  /// Display: Continuous positive airway pressure ventilation treatment (regime/therapy)
  @JsonValue('47545007')
  value47545007,

  /// Display: Pressure controlled ventilation (procedure)
  @JsonValue('286812008')
  value286812008,

  /// Display: Patient triggered inspiratory assistance (procedure)
  @JsonValue('243144002')
  value243144002,

  /// Display: Assisted controlled mandatory ventilation (procedure)
  @JsonValue('243150007')
  value243150007,

  /// Display: Synchronized intermittent mandatory ventilation (procedure)
  @JsonValue('59427005')
  value59427005,
  ;

  @override
  String toString() {
    switch (this) {
      case value47545007:
        return '47545007';
      case value286812008:
        return '286812008';
      case value243144002:
        return '243144002';
      case value243150007:
        return '243150007';
      case value59427005:
        return '59427005';
    }
  }

  String toJson() => toString();
  ServiceRequestOrderDetailsCodes fromString(String str) {
    switch (str) {
      case '47545007':
        return ServiceRequestOrderDetailsCodes.value47545007;
      case '286812008':
        return ServiceRequestOrderDetailsCodes.value286812008;
      case '243144002':
        return ServiceRequestOrderDetailsCodes.value243144002;
      case '243150007':
        return ServiceRequestOrderDetailsCodes.value243150007;
      case '59427005':
        return ServiceRequestOrderDetailsCodes.value59427005;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ServiceRequestOrderDetailsCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
