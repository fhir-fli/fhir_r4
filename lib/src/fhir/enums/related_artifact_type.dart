/// The type of relationship to the related artifact.
enum RelatedArtifactType {
  /// Display: Documentation
  /// Definition: Additional documentation for the knowledge resource. This would include additional instructions on usage as well as additional information on clinical context or appropriateness.
  documentation,

  /// Display: Justification
  /// Definition: A summary of the justification for the knowledge resource including supporting evidence, relevant guidelines, or other clinically important information. This information is intended to provide a way to make the justification for the knowledge resource available to the consumer of interventions or results produced by the knowledge resource.
  justification,

  /// Display: Citation
  /// Definition: Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is intended to allow for citation of related material, but that was not necessarily specifically prepared in connection with this knowledge resource.
  citation,

  /// Display: Predecessor
  /// Definition: The previous version of the knowledge resource.
  predecessor,

  /// Display: Successor
  /// Definition: The next version of the knowledge resource.
  successor,

  /// Display: Derived From
  /// Definition: The knowledge resource is derived from the related artifact. This is intended to capture the relationship in which a particular knowledge resource is based on the content of another artifact, but is modified to capture either a different set of overall requirements, or a more specific set of requirements such as those involved in a particular institution or clinical setting.
  derived_from,

  /// Display: Depends On
  /// Definition: The knowledge resource depends on the given related artifact.
  depends_on,

  /// Display: Composed Of
  /// Definition: The knowledge resource is composed of the given related artifact.
  composed_of,
  ;

  @override
  String toString() {
    switch (this) {
      case documentation:
        return 'documentation';
      case justification:
        return 'justification';
      case citation:
        return 'citation';
      case predecessor:
        return 'predecessor';
      case successor:
        return 'successor';
      case derived_from:
        return 'derived-from';
      case depends_on:
        return 'depends-on';
      case composed_of:
        return 'composed-of';
    }
  }

  String toJson() => toString();
  static RelatedArtifactType fromString(String str) {
    switch (str) {
      case 'documentation':
        return RelatedArtifactType.documentation;
      case 'justification':
        return RelatedArtifactType.justification;
      case 'citation':
        return RelatedArtifactType.citation;
      case 'predecessor':
        return RelatedArtifactType.predecessor;
      case 'successor':
        return RelatedArtifactType.successor;
      case 'derived-from':
        return RelatedArtifactType.derived_from;
      case 'depends-on':
        return RelatedArtifactType.depends_on;
      case 'composed-of':
        return RelatedArtifactType.composed_of;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static RelatedArtifactType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
