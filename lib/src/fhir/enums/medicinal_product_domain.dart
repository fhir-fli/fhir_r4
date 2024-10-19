// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Applicable domain for this product (e.g. human, veterinary)
@collection
class MedicinalProductDomain {
  /// Constructor for internal use (like enum)
  MedicinalProductDomain({this.fhirCode, this.element})
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

  /// MedicinalProductDomain values
  /// Human
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductDomain Human = MedicinalProductDomain(
    fhirCode: 'Human',
  );

  /// Veterinary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductDomain Veterinary = MedicinalProductDomain(
    fhirCode: 'Veterinary',
  );

  /// HumanAndVeterinary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductDomain HumanAndVeterinary =
      MedicinalProductDomain(
    fhirCode: 'HumanAndVeterinary',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductDomain elementOnly = MedicinalProductDomain();

  /// List of all enum-like values
  static final List<MedicinalProductDomain> values = [
    Human,
    Veterinary,
    HumanAndVeterinary,
  ];

  /// Returns the enum value with an element attached
  MedicinalProductDomain withElement(Element? newElement) {
    return MedicinalProductDomain(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicinalProductDomain] from JSON.
  static MedicinalProductDomain fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductDomain.elementOnly.withElement(element);
    }
    return MedicinalProductDomain.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicinalProductDomain.$fhirCode';
}
