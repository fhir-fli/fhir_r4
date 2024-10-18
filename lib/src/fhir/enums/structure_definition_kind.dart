// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines the type of structure that a definition is describing.
enum StructureDefinitionKind {
  /// Display: Primitive Data Type
  /// Definition: A primitive type that has a value and an extension. These can be used throughout complex datatype, Resource and extension definitions. Only the base specification can define primitive types.
  primitive_type('primitive-type'),

  /// Display: Complex Data Type
  /// Definition: A complex structure that defines a set of data elements that is suitable for use in 'resources'. The base specification defines a number of complex types, and other specifications can define additional types. These structures do not have a maintained identity.
  complex_type('complex-type'),

  /// Display: Resource
  /// Definition: A 'resource' - a directed acyclic graph of elements that aggregrates other types into an identifiable entity. The base FHIR resources are defined by the FHIR specification itself but other 'resources' can be defined in additional specifications (though these will not be recognised as 'resources' by the FHIR specification (i.e. they do not get end-points etc, or act as the targets of references in FHIR defined resources - though other specificatiosn can treat them this way).
  resource('resource'),

  /// Display: Logical
  /// Definition: A pattern or a template that is not intended to be a real resource or complex type.
  logical('logical'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StructureDefinitionKind(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StructureDefinitionKind] instances.
  static StructureDefinitionKind fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureDefinitionKind.elementOnly.withElement(
        element,
      );
    }
    return StructureDefinitionKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StructureDefinitionKind withElement(Element? newElement) {
    return StructureDefinitionKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
