import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Prescription Product codes.
enum ExampleVisionPrescriptionProductCodes {
  /// Display: Lens
  /// Definition: A lens to be fitted to a frame to comprise a pair of glasses.
  @JsonValue('lens')
  lens,
  /// Display: Contact Lens
  /// Definition: A lens to be fitted for wearing directly on an eye.
  @JsonValue('contact')
  contact,
;

@override
  String toString() {
      switch(this) {
        case lens: return 'lens';
        case contact: return 'contact';
      }
      }
String toJson() => toString();
  ExampleVisionPrescriptionProductCodes fromString(String str) {
    switch(str) {
      case 'lens': return ExampleVisionPrescriptionProductCodes.lens;
      case 'contact': return ExampleVisionPrescriptionProductCodes.contact;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleVisionPrescriptionProductCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
