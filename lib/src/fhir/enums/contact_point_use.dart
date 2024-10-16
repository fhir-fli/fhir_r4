import 'package:fhir_r4/fhir_r4.dart';

/// Use of contact point.
enum ContactPointUse {
  /// Display: Home
  /// Definition: A communication contact point at a home; attempted contacts for business purposes might intrude privacy and chances are one will contact family or other household members instead of the person one wishes to call. Typically used with urgent cases, or if no other contacts are available.
  home('home'),

  /// Display: Work
  /// Definition: An office contact point. First choice for business related contacts during business hours.
  work('work'),

  /// Display: Temp
  /// Definition: A temporary contact point. The period can provide more detailed information.
  temp('temp'),

  /// Display: Old
  /// Definition: This contact point is no longer in use (or was never correct, but retained for records).
  old('old'),

  /// Display: Mobile
  /// Definition: A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes, suitable for urgent matters, not the first choice for routine business.
  mobile('mobile'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContactPointUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContactPointUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUse.elementOnly.withElement(element);
    }
    return ContactPointUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContactPointUse withElement(Element? newElement) {
    return ContactPointUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
