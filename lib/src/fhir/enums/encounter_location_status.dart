// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The status of the location.
@collection
class EncounterLocationStatus {
  /// Constructor for internal use (like enum)
  EncounterLocationStatus({this.fhirCode, this.element})
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

  /// EncounterLocationStatus values
  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterLocationStatus planned = EncounterLocationStatus(
    fhirCode: 'planned',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterLocationStatus active = EncounterLocationStatus(
    fhirCode: 'active',
  );

  /// reserved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterLocationStatus reserved = EncounterLocationStatus(
    fhirCode: 'reserved',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterLocationStatus completed = EncounterLocationStatus(
    fhirCode: 'completed',
  );

  /// For instances where an Element is present but not value

  static final EncounterLocationStatus elementOnly = EncounterLocationStatus();

  /// List of all enum-like values
  static final List<EncounterLocationStatus> values = [
    planned,
    active,
    reserved,
    completed,
  ];

  /// Returns the enum value with an element attached
  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EncounterLocationStatus] from JSON.
  static EncounterLocationStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatus.elementOnly.withElement(element);
    }
    return EncounterLocationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EncounterLocationStatus.$fhirCode';
}
