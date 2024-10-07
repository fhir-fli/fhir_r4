import 'package:json_annotation/json_annotation.dart';

/// Indication of the degree of conformance expectations associated with a binding.
enum BindingStrength {
  /// Display: Required
  /// Definition: To be conformant, the concept in this element SHALL be from the specified value set.
  @JsonValue('required')
  required_,
  /// Display: Extensible
  /// Definition: To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated.  If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.
  @JsonValue('extensible')
  extensible,
  /// Display: Preferred
  /// Definition: Instances are encouraged to draw from the specified codes for interoperability purposes but are not required to do so to be considered conformant.
  @JsonValue('preferred')
  preferred,
  /// Display: Example
  /// Definition: Instances are not expected or even encouraged to draw from the specified value set.  The value set merely provides examples of the types of concepts intended to be included.
  @JsonValue('example')
  example,
;

@override
  String toString() {
      switch(this) {
        case required_: return 'required';
        case extensible: return 'extensible';
        case preferred: return 'preferred';
        case example: return 'example';
      }
      }
String toJson() => toString();
  BindingStrength fromString(String str) {
    switch(str) {
      case 'required': return BindingStrength.required_;
      case 'extensible': return BindingStrength.extensible;
      case 'preferred': return BindingStrength.preferred;
      case 'example': return BindingStrength.example;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 BindingStrength fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

