/// Structure Definition Use Codes / Keywords
enum DefinitionUseCodes {
  /// Display: FHIR Structure
  /// Definition: This structure is defined as part of the base FHIR Specification
  fhir_structure,

  /// Display: Custom Resource
  /// Definition: This structure is intended to be treated like a FHIR resource (e.g. on the FHIR API)
  custom_resource,

  /// Display: Domain Analysis Model
  /// Definition: This structure captures an analysis of a domain
  dam,

  /// Display: Wire Format
  /// Definition: This structure represents and existing structure (e.g. CDA, HL7 v2)
  wire_format,

  /// Display: Domain Analysis Model
  /// Definition: This structure captures an analysis of a domain
  archetype,

  /// Display: Template
  /// Definition: This structure is a template (n.b: 'template' has many meanings)
  template,
  ;

  @override
  String toString() {
    switch (this) {
      case fhir_structure:
        return 'fhir-structure';
      case custom_resource:
        return 'custom-resource';
      case dam:
        return 'dam';
      case wire_format:
        return 'wire-format';
      case archetype:
        return 'archetype';
      case template:
        return 'template';
    }
  }

  String toJson() => toString();
  static DefinitionUseCodes fromString(String str) {
    switch (str) {
      case 'fhir-structure':
        return DefinitionUseCodes.fhir_structure;
      case 'custom-resource':
        return DefinitionUseCodes.custom_resource;
      case 'dam':
        return DefinitionUseCodes.dam;
      case 'wire-format':
        return DefinitionUseCodes.wire_format;
      case 'archetype':
        return DefinitionUseCodes.archetype;
      case 'template':
        return DefinitionUseCodes.template;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DefinitionUseCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
