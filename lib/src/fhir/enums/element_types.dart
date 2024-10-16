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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ElementTypes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ElementTypes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ElementTypes.elementOnly.withElement(element);
    }
    return ElementTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ElementTypes withElement(Element? newElement) {
    return ElementTypes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
