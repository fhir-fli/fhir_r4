// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes example Payment Type codes.
@collection
class ExamplePaymentTypeCodes {
  /// Constructor for internal use (like enum)
  ExamplePaymentTypeCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExamplePaymentTypeCodes values
  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExamplePaymentTypeCodes complete = ExamplePaymentTypeCodes(
    fhirCode: 'complete',
  );

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExamplePaymentTypeCodes partial = ExamplePaymentTypeCodes(
    fhirCode: 'partial',
  );

  /// For instances where an Element is present but not value

  static final ExamplePaymentTypeCodes elementOnly = ExamplePaymentTypeCodes();

  /// List of all enum-like values
  static final List<ExamplePaymentTypeCodes> values = [
    complete,
    partial,
  ];

  /// Returns the enum value with an element attached
  ExamplePaymentTypeCodes withElement(Element? newElement) {
    return ExamplePaymentTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExamplePaymentTypeCodes] from JSON.
  static ExamplePaymentTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExamplePaymentTypeCodes.elementOnly.withElement(element);
    }
    return ExamplePaymentTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExamplePaymentTypeCodes.$fhirCode';
}
