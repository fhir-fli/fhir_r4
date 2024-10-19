// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The status of a resource narrative.
@collection
class NarrativeStatus {
  /// Constructor for internal use (like enum)
  NarrativeStatus({this.fhirCode, this.element})
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

  /// NarrativeStatus values
  /// generated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NarrativeStatus generated = NarrativeStatus(
    fhirCode: 'generated',
  );

  /// extensions
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NarrativeStatus extensions = NarrativeStatus(
    fhirCode: 'extensions',
  );

  /// additional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NarrativeStatus additional = NarrativeStatus(
    fhirCode: 'additional',
  );

  /// empty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NarrativeStatus empty = NarrativeStatus(
    fhirCode: 'empty',
  );

  /// For instances where an Element is present but not value

  static final NarrativeStatus elementOnly = NarrativeStatus();

  /// List of all enum-like values
  static final List<NarrativeStatus> values = [
    generated,
    extensions,
    additional,
    empty,
  ];

  /// Returns the enum value with an element attached
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NarrativeStatus] from JSON.
  static NarrativeStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly.withElement(element);
    }
    return NarrativeStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NarrativeStatus.$fhirCode';
}
