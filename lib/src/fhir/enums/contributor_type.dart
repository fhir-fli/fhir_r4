import 'package:fhir_r4/fhir_r4.dart';

/// The type of contributor.
enum ContributorType {
  /// Display: Author
  /// Definition: An author of the content of the module.
  author('author'),

  /// Display: Editor
  /// Definition: An editor of the content of the module.
  editor('editor'),

  /// Display: Reviewer
  /// Definition: A reviewer of the content of the module.
  reviewer('reviewer'),

  /// Display: Endorser
  /// Definition: An endorser of the content of the module.
  endorser('endorser'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContributorType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContributorType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorType.elementOnly.withElement(element);
    }
    return ContributorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContributorType withElement(Element? newElement) {
    return ContributorType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
