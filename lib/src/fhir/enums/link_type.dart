import 'package:fhir_r4/fhir_r4.dart';

/// The type of link between this patient resource and another patient resource.
enum LinkType {
  /// Display: Replaced-by
  /// Definition: The patient resource containing this link must no longer be used. The link points forward to another patient resource that must be used in lieu of the patient resource that contains this link.
  replaced_by('replaced-by'),

  /// Display: Replaces
  /// Definition: The patient resource containing this link is the current active patient record. The link points back to an inactive patient resource that has been merged into this resource, and should be consulted to retrieve additional referenced information.
  replaces('replaces'),

  /// Display: Refer
  /// Definition: The patient resource containing this link is in use and valid but not considered the main source of information about a patient. The link points forward to another patient resource that should be consulted to retrieve additional patient information.
  refer('refer'),

  /// Display: See also
  /// Definition: The patient resource containing this link is in use and valid, but points to another patient resource that is known to contain data about the same person. Data in this resource might overlap or contradict information found in the other patient resource. This link does not indicate any relative importance of the resources concerned, and both should be regarded as equally valid.
  seealso('seealso'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const LinkType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static LinkType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkType.elementOnly.withElement(element);
    }
    return LinkType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  LinkType withElement(Element? newElement) {
    return LinkType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
