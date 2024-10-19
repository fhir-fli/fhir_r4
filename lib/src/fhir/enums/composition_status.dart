// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The workflow/clinical status of the composition.
@collection
class CompositionStatus {
  /// Constructor for internal use (like enum)
  CompositionStatus({this.fhirCode, this.element})
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

  /// CompositionStatus values
  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus preliminary = CompositionStatus(
    fhirCode: 'preliminary',
  );

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus final_ = CompositionStatus(
    fhirCode: 'final',
  );

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus amended = CompositionStatus(
    fhirCode: 'amended',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionStatus entered_in_error = CompositionStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CompositionStatus elementOnly = CompositionStatus();

  /// List of all enum-like values
  static final List<CompositionStatus> values = [
    preliminary,
    final_,
    amended,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompositionStatus] from JSON.
  static CompositionStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus.elementOnly.withElement(element);
    }
    return CompositionStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CompositionStatus.$fhirCode';
}
