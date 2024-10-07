import 'package:json_annotation/json_annotation.dart';

/// Defines the type of structure that a definition is describing.
enum StructureDefinitionKind {
  /// Display: Primitive Data Type
  /// Definition: A primitive type that has a value and an extension. These can be used throughout complex datatype, Resource and extension definitions. Only the base specification can define primitive types.
  @JsonValue('primitive-type')
  primitive_type,

  /// Display: Complex Data Type
  /// Definition: A  complex structure that defines a set of data elements that is suitable for use in 'resources'. The base specification defines a number of complex types, and other specifications can define additional types. These structures do not have a maintained identity.
  @JsonValue('complex-type')
  complex_type,

  /// Display: Resource
  /// Definition: A 'resource' - a directed acyclic graph of elements that aggregrates other types into an identifiable entity. The base FHIR resources are defined by the FHIR specification itself but other 'resources' can be defined in additional specifications (though these will not be recognised as 'resources' by the FHIR specification (i.e. they do not get end-points etc, or act as the targets of references in FHIR defined resources - though other specificatiosn can treat them this way).
  @JsonValue('resource')
  resource,

  /// Display: Logical
  /// Definition: A pattern or a template that is not intended to be a real resource or complex type.
  @JsonValue('logical')
  logical,
  ;

  @override
  String toString() {
    switch (this) {
      case primitive_type:
        return 'primitive-type';
      case complex_type:
        return 'complex-type';
      case resource:
        return 'resource';
      case logical:
        return 'logical';
    }
  }

  String toJson() => toString();
  StructureDefinitionKind fromString(String str) {
    switch (str) {
      case 'primitive-type':
        return StructureDefinitionKind.primitive_type;
      case 'complex-type':
        return StructureDefinitionKind.complex_type;
      case 'resource':
        return StructureDefinitionKind.resource;
      case 'logical':
        return StructureDefinitionKind.logical;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  StructureDefinitionKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
