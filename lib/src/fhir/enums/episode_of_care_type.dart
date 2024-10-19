// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
@collection
class EpisodeOfCareType {
  /// Constructor for internal use (like enum)
  EpisodeOfCareType({this.fhirCode, this.element})
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

  /// EpisodeOfCareType values
  /// hacc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareType hacc = EpisodeOfCareType(
    fhirCode: 'hacc',
  );

  /// pac
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareType pac = EpisodeOfCareType(
    fhirCode: 'pac',
  );

  /// diab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareType diab = EpisodeOfCareType(
    fhirCode: 'diab',
  );

  /// da
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareType da = EpisodeOfCareType(
    fhirCode: 'da',
  );

  /// cacp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareType cacp = EpisodeOfCareType(
    fhirCode: 'cacp',
  );

  /// For instances where an Element is present but not value

  static final EpisodeOfCareType elementOnly = EpisodeOfCareType();

  /// List of all enum-like values
  static final List<EpisodeOfCareType> values = [
    hacc,
    pac,
    diab,
    da,
    cacp,
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareType withElement(Element? newElement) {
    return EpisodeOfCareType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EpisodeOfCareType] from JSON.
  static EpisodeOfCareType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareType.elementOnly.withElement(element);
    }
    return EpisodeOfCareType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EpisodeOfCareType.$fhirCode';
}
