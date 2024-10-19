// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of Prescription Product codes.
@Entity()
class ExampleVisionPrescriptionProductCodes extends FhirCode {
  /// Factory constructor to create [ExampleVisionPrescriptionProductCodes] from JSON.
  factory ExampleVisionPrescriptionProductCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleVisionPrescriptionProductCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleVisionPrescriptionProductCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleVisionPrescriptionProductCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// lens
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleVisionPrescriptionProductCodes.lens([this.element])
      : dbValue = 'lens',
        super('lens', element);

  /// contact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleVisionPrescriptionProductCodes.contact([this.element])
      : dbValue = 'contact',
        super('contact', element);

  /// For instances where an Element is present but not value

  ExampleVisionPrescriptionProductCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleVisionPrescriptionProductCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'lens',
    'contact',
  ];

  /// Returns the enum value with an element attached
  ExampleVisionPrescriptionProductCodes withElement(Element? newElement) {
    return ExampleVisionPrescriptionProductCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleVisionPrescriptionProductCodes.$value';
}
