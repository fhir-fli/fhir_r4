import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ConceptMap_Property] A statement of relationships from one set of
/// concepts to one or more other concepts - either concepts in code systems,
/// or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_Property with _$ConceptMap_Property {
  const ConceptMap_Property._();

  const factory ConceptMap_Property({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [code] A code that is used to identify the property. The code is used
/// internally (in ConceptMap.group.element.target.property.code) and also in
/// the $translate operation.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [uri] Reference to the formal meaning of the property.

    @JsonKey(name: 'uri') FhirUri? uri,
/// [_uri] Extensions for uri

    @JsonKey(name: '_uri') PrimitiveElement? uriElement,
/// [description] A description of the property - why it is defined, and
/// how its value might be used.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [type] The type of the property value.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [system] The CodeSystem that defines the codes from which values of
/// type ```code``` in property values.

    @JsonKey(name: 'system') FhirCanonical? system,
  }) = _$ConceptMap_Property;

  @override
  String get fhirType => 'ConceptMap_Property';

  factory ConceptMap_Property.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_PropertyFromJson(json);

  factory ConceptMap_Property.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_Property.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_Property.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_Property cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_Property.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_PropertyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
