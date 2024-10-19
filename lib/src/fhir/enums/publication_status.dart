// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The lifecycle status of an artifact.
@collection
class PublicationStatus {
  /// Constructor for internal use (like enum)
  PublicationStatus({this.fhirCode, this.element})
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

  /// PublicationStatus values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublicationStatus draft = PublicationStatus(
    fhirCode: 'draft',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublicationStatus active = PublicationStatus(
    fhirCode: 'active',
  );

  /// retired
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublicationStatus retired = PublicationStatus(
    fhirCode: 'retired',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PublicationStatus unknown = PublicationStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final PublicationStatus elementOnly = PublicationStatus();

  /// List of all enum-like values
  static final List<PublicationStatus> values = [
    draft,
    active,
    retired,
    unknown,
  ];

  /// Returns the enum value with an element attached
  PublicationStatus withElement(Element? newElement) {
    return PublicationStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PublicationStatus] from JSON.
  static PublicationStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatus.elementOnly.withElement(element);
    }
    return PublicationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PublicationStatus.$fhirCode';
}
