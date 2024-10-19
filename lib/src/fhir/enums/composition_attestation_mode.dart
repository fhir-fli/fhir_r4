// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The way in which a person authenticated a composition.
@collection
class CompositionAttestationMode {
  /// Constructor for internal use (like enum)
  CompositionAttestationMode({this.fhirCode, this.element})
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

  /// CompositionAttestationMode values
  /// personal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode personal = CompositionAttestationMode(
    fhirCode: 'personal',
  );

  /// professional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode professional =
      CompositionAttestationMode(
    fhirCode: 'professional',
  );

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode legal = CompositionAttestationMode(
    fhirCode: 'legal',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode official = CompositionAttestationMode(
    fhirCode: 'official',
  );

  /// For instances where an Element is present but not value

  static final CompositionAttestationMode elementOnly =
      CompositionAttestationMode();

  /// List of all enum-like values
  static final List<CompositionAttestationMode> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Returns the enum value with an element attached
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompositionAttestationMode] from JSON.
  static CompositionAttestationMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly.withElement(element);
    }
    return CompositionAttestationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CompositionAttestationMode.$fhirCode';
}
