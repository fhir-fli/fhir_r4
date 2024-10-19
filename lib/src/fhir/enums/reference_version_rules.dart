// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Whether a reference needs to be version specific or version independent, or whether either can be used.
@collection
class ReferenceVersionRules {
  /// Constructor for internal use (like enum)
  ReferenceVersionRules({this.fhirCode, this.element})
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

  /// ReferenceVersionRules values
  /// either
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceVersionRules either = ReferenceVersionRules(
    fhirCode: 'either',
  );

  /// independent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceVersionRules independent = ReferenceVersionRules(
    fhirCode: 'independent',
  );

  /// specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceVersionRules specific = ReferenceVersionRules(
    fhirCode: 'specific',
  );

  /// For instances where an Element is present but not value

  static final ReferenceVersionRules elementOnly = ReferenceVersionRules();

  /// List of all enum-like values
  static final List<ReferenceVersionRules> values = [
    either,
    independent,
    specific,
  ];

  /// Returns the enum value with an element attached
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReferenceVersionRules] from JSON.
  static ReferenceVersionRules fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly.withElement(element);
    }
    return ReferenceVersionRules.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReferenceVersionRules.$fhirCode';
}
