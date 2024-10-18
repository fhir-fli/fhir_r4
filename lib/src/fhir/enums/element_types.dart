// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Allowed types for FHIR elements
enum ElementTypes {
  /// Display: String
  /// Definition:
  http___hl7_org_fhirpath_System_String(
      'http://hl7.org/fhirpath/System.String'),

  /// Display: Boolean
  /// Definition:
  http___hl7_org_fhirpath_System_Boolean(
      'http://hl7.org/fhirpath/System.Boolean'),

  /// Display: Date
  /// Definition:
  http___hl7_org_fhirpath_System_Date('http://hl7.org/fhirpath/System.Date'),

  /// Display: DateTime
  /// Definition:
  http___hl7_org_fhirpath_System_DateTime(
      'http://hl7.org/fhirpath/System.DateTime'),

  /// Display: Decimal
  /// Definition:
  http___hl7_org_fhirpath_System_Decimal(
      'http://hl7.org/fhirpath/System.Decimal'),

  /// Display: Integer
  /// Definition:
  http___hl7_org_fhirpath_System_Integer(
      'http://hl7.org/fhirpath/System.Integer'),

  /// Display: Time
  /// Definition:
  http___hl7_org_fhirpath_System_Time('http://hl7.org/fhirpath/System.Time'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ElementTypes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ElementTypes] instances.
  static ElementTypes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ElementTypes.elementOnly.withElement(element);
    }
    return ElementTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ElementTypes withElement(Element? newElement) {
    return ElementTypes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
