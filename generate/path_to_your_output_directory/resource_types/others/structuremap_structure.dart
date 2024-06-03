/// /// [StructureMap_Structure] A Map of relationships between 2 structures
/// that can be used to transform data.

@freezed
class StructureMap_Structure with _$StructureMap_Structure {
  const StructureMap_Structure._();

  const factory StructureMap_Structure({
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
/// /// [url] The canonical reference to the structure.

    @JsonKey(name: 'url') FhirCanonical? url,
/// /// [mode] How the referenced structure is used in this mapping.

    @JsonKey(name: 'mode') FhirCode? mode,
/// /// [_mode] Extensions for mode

    @JsonKey(name: '_mode') FhirElement? modeElement,
/// /// [alias] The name used for this type in the map.

    @JsonKey(name: 'alias') String? alias,
/// /// [_alias] Extensions for alias

    @JsonKey(name: '_alias') FhirElement? aliasElement,
/// /// [documentation] Documentation that describes how the structure is used
/// in the mapping.

    @JsonKey(name: 'documentation') String? documentation,
/// /// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') FhirElement? documentationElement,
  }) = _$StructureMap_Structure;

  @override
  String get fhirType => 'StructureMap_Structure';

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_StructureFromJson(json);

  factory StructureMap_Structure.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap_Structure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap_Structure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap_Structure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureMap_Structure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMap_StructureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
