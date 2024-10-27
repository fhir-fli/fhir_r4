// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to.
class ObservationReferenceRangeAppliesToCodes {
  // Private constructor for internal use (like enum)
  ObservationReferenceRangeAppliesToCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObservationReferenceRangeAppliesToCodes values
  /// value248153007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeAppliesToCodes value248153007 =
      ObservationReferenceRangeAppliesToCodes._(
    '248153007',
  );

  /// value248152002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeAppliesToCodes value248152002 =
      ObservationReferenceRangeAppliesToCodes._(
    '248152002',
  );

  /// value77386006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeAppliesToCodes value77386006 =
      ObservationReferenceRangeAppliesToCodes._(
    '77386006',
  );

  /// For instances where an Element is present but not value

  static final ObservationReferenceRangeAppliesToCodes elementOnly =
      ObservationReferenceRangeAppliesToCodes._('');

  /// List of all enum-like values
  static final List<ObservationReferenceRangeAppliesToCodes> values = [
    value248153007,
    value248152002,
    value77386006,
  ];

  /// Returns the enum value with an element attached
  ObservationReferenceRangeAppliesToCodes withElement(Element? newElement) {
    return ObservationReferenceRangeAppliesToCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObservationReferenceRangeAppliesToCodes] from JSON.
  static ObservationReferenceRangeAppliesToCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeAppliesToCodes.elementOnly
          .withElement(element);
    }
    return ObservationReferenceRangeAppliesToCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
