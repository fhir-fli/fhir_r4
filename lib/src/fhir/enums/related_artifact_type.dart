import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship to the related artifact.
enum RelatedArtifactType {
  /// Display: Documentation
  /// Definition: Additional documentation for the knowledge resource. This would include additional instructions on usage as well as additional information on clinical context or appropriateness.
  documentation('documentation'),

  /// Display: Justification
  /// Definition: A summary of the justification for the knowledge resource including supporting evidence, relevant guidelines, or other clinically important information. This information is intended to provide a way to make the justification for the knowledge resource available to the consumer of interventions or results produced by the knowledge resource.
  justification('justification'),

  /// Display: Citation
  /// Definition: Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is intended to allow for citation of related material, but that was not necessarily specifically prepared in connection with this knowledge resource.
  citation('citation'),

  /// Display: Predecessor
  /// Definition: The previous version of the knowledge resource.
  predecessor('predecessor'),

  /// Display: Successor
  /// Definition: The next version of the knowledge resource.
  successor('successor'),

  /// Display: Derived From
  /// Definition: The knowledge resource is derived from the related artifact. This is intended to capture the relationship in which a particular knowledge resource is based on the content of another artifact, but is modified to capture either a different set of overall requirements, or a more specific set of requirements such as those involved in a particular institution or clinical setting.
  derived_from('derived-from'),

  /// Display: Depends On
  /// Definition: The knowledge resource depends on the given related artifact.
  depends_on('depends-on'),

  /// Display: Composed Of
  /// Definition: The knowledge resource is composed of the given related artifact.
  composed_of('composed-of'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RelatedArtifactType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RelatedArtifactType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactType.elementOnly.withElement(element);
    }
    return RelatedArtifactType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
