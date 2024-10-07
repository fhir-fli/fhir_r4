import 'package:json_annotation/json_annotation.dart';

/// The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
enum VariableType {
  /// Display: Dichotomous
  /// Definition: The variable is dichotomous, such as present or absent.
  @JsonValue('dichotomous')
  dichotomous,
  /// Display: Continuous
  /// Definition: The variable is a continuous result such as a quantity.
  @JsonValue('continuous')
  continuous,
  /// Display: Descriptive
  /// Definition: The variable is described narratively rather than quantitatively.
  @JsonValue('descriptive')
  descriptive,
;

@override
  String toString() {
      switch(this) {
        case dichotomous: return 'dichotomous';
        case continuous: return 'continuous';
        case descriptive: return 'descriptive';
      }
      }
String toJson() => toString();
  VariableType fromString(String str) {
    switch(str) {
      case 'dichotomous': return VariableType.dichotomous;
      case 'continuous': return VariableType.continuous;
      case 'descriptive': return VariableType.descriptive;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 VariableType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

