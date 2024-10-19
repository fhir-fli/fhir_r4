// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// NLM codes Internet or Print.
@collection
class CitedMedium {
  /// Constructor for internal use (like enum)
  CitedMedium({this.fhirCode, this.element})
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

  /// CitedMedium values
  /// internet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedMedium internet = CitedMedium(
    fhirCode: 'internet',
  );

  /// print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedMedium print = CitedMedium(
    fhirCode: 'print',
  );

  /// offline_digital_storage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedMedium offline_digital_storage = CitedMedium(
    fhirCode: 'offline-digital-storage',
  );

  /// internet_without_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedMedium internet_without_issue = CitedMedium(
    fhirCode: 'internet-without-issue',
  );

  /// print_without_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedMedium print_without_issue = CitedMedium(
    fhirCode: 'print-without-issue',
  );

  /// offline_digital_storage_without_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedMedium offline_digital_storage_without_issue = CitedMedium(
    fhirCode: 'offline-digital-storage-without-issue',
  );

  /// For instances where an Element is present but not value

  static final CitedMedium elementOnly = CitedMedium();

  /// List of all enum-like values
  static final List<CitedMedium> values = [
    internet,
    print,
    offline_digital_storage,
    internet_without_issue,
    print_without_issue,
    offline_digital_storage_without_issue,
  ];

  /// Returns the enum value with an element attached
  CitedMedium withElement(Element? newElement) {
    return CitedMedium(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitedMedium] from JSON.
  static CitedMedium fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedMedium.elementOnly.withElement(element);
    }
    return CitedMedium.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedMedium.$fhirCode';
}
