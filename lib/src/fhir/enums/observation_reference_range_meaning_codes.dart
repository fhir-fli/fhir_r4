import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular target population.
enum ObservationReferenceRangeMeaningCodes {
  /// Display: Type
  /// Definition: General types of reference range.
  @JsonValue('type')
  type,

  /// Display: Endocrine
  /// Definition: Endocrine related states that change the expected value.
  @JsonValue('endocrine')
  endocrine,
  ;

  @override
  String toString() {
    switch (this) {
      case type:
        return 'type';
      case endocrine:
        return 'endocrine';
    }
  }

  String toJson() => toString();
  ObservationReferenceRangeMeaningCodes fromString(String str) {
    switch (str) {
      case 'type':
        return ObservationReferenceRangeMeaningCodes.type;
      case 'endocrine':
        return ObservationReferenceRangeMeaningCodes.endocrine;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ObservationReferenceRangeMeaningCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
