import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
enum ContributorRole {
  /// Display: Publisher
  /// Definition: Entity that makes the content available for public use
  publisher('publisher'),

  /// Display: Author/Creator
  /// Definition: An entity primarily responsible for making the resource, often called author or creator
  author('author'),

  /// Display: Reviewer
  /// Definition: Entity that examines the content, formally or informally, and suggests revisions or comments
  reviewer('reviewer'),

  /// Display: Endorser
  /// Definition: Entity that supports, approves, or advocates for the content
  endorser('endorser'),

  /// Display: Editor
  /// Definition: Entity that revises or has authority to control the content
  editor('editor'),

  /// Display: Informant
  /// Definition: Entity that supplies information
  informant('informant'),

  /// Display: Funder
  /// Definition: Entity that supplies financial support
  funder('funder'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContributorRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContributorRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorRole.elementOnly.withElement(element);
    }
    return ContributorRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContributorRole withElement(Element? newElement) {
    return ContributorRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
