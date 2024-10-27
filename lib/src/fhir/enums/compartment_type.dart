// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Which type a compartment definition describes.
class CompartmentType {
  // Private constructor for internal use (like enum)
  CompartmentType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CompartmentType values
  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompartmentType Patient = CompartmentType._(
    'Patient',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompartmentType Encounter = CompartmentType._(
    'Encounter',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompartmentType RelatedPerson = CompartmentType._(
    'RelatedPerson',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompartmentType Practitioner = CompartmentType._(
    'Practitioner',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompartmentType Device = CompartmentType._(
    'Device',
  );

  /// For instances where an Element is present but not value

  static final CompartmentType elementOnly = CompartmentType._('');

  /// List of all enum-like values
  static final List<CompartmentType> values = [
    Patient,
    Encounter,
    RelatedPerson,
    Practitioner,
    Device,
  ];

  /// Returns the enum value with an element attached
  CompartmentType withElement(Element? newElement) {
    return CompartmentType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompartmentType] from JSON.
  static CompartmentType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompartmentType.elementOnly.withElement(element);
    }
    return CompartmentType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
