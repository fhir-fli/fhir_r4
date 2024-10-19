// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for general categories of communications such as alerts, instructions, etc.
@collection
class CommunicationCategory {
  /// Constructor for internal use (like enum)
  CommunicationCategory({this.fhirCode, this.element})
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

  /// CommunicationCategory values
  /// alert
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationCategory alert = CommunicationCategory(
    fhirCode: 'alert',
  );

  /// notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationCategory notification = CommunicationCategory(
    fhirCode: 'notification',
  );

  /// reminder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationCategory reminder = CommunicationCategory(
    fhirCode: 'reminder',
  );

  /// instruction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationCategory instruction = CommunicationCategory(
    fhirCode: 'instruction',
  );

  /// For instances where an Element is present but not value

  static final CommunicationCategory elementOnly = CommunicationCategory();

  /// List of all enum-like values
  static final List<CommunicationCategory> values = [
    alert,
    notification,
    reminder,
    instruction,
  ];

  /// Returns the enum value with an element attached
  CommunicationCategory withElement(Element? newElement) {
    return CommunicationCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommunicationCategory] from JSON.
  static CommunicationCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationCategory.elementOnly.withElement(element);
    }
    return CommunicationCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommunicationCategory.$fhirCode';
}
