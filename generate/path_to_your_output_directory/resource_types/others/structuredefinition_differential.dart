/// /// [StructureDefinition_Differential] A definition of a FHIR structure.
/// This resource is used to describe the underlying resources, data types
/// defined in FHIR, and also for describing extensions and constraints on
/// resources and data types.

@freezed
class StructureDefinition_Differential with _$StructureDefinition_Differential {
  const StructureDefinition_Differential._();

  const factory StructureDefinition_Differential({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [element] Captures constraints on each element within the resource.

    @JsonKey(name: 'element') List<List<ElementDefinition>>? element,
  }) = _$StructureDefinition_Differential;

  @override
  String get fhirType => 'StructureDefinition_Differential';

  factory StructureDefinition_Differential.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinition_DifferentialFromJson(json);

  factory StructureDefinition_Differential.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinition_Differential.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureDefinition_Differential.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureDefinition_Differential cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureDefinition_Differential.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureDefinition_DifferentialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
