/// /// [SpecimenDefinition_Container] A kind of specimen with associated set
/// of requirements.

@freezed
class SpecimenDefinition_Container with _$SpecimenDefinition_Container {
  const SpecimenDefinition_Container._();

  const factory SpecimenDefinition_Container({
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
/// /// [material] The type of material of the container.

    @JsonKey(name: 'material') CodeableConcept? material,
/// /// [type] The type of container used to contain this kind of specimen.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [cap] Color of container cap.

    @JsonKey(name: 'cap') CodeableConcept? cap,
/// /// [description] The textual description of the kind of container.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [capacity] The capacity (volume or other measure) of this kind of
/// container.

    @JsonKey(name: 'capacity') Quantity? capacity,
/// /// [minimumVolumeQuantity] The minimum volume to be conditioned in the
/// container.

    @JsonKey(name: 'minimumVolumeQuantity') Quantity? minimumVolumeQuantity,
/// /// [minimumVolumeString] The minimum volume to be conditioned in the
/// container.

    @JsonKey(name: 'minimumVolumeString') String? minimumVolumeString,
/// /// [_minimumVolumeString] Extensions for minimumVolumeString

    @JsonKey(name: '_minimumVolumeString') FhirElement? minimumVolumeStringElement,
/// /// [additive] Substance introduced in the kind of container to preserve,
/// maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.

    @JsonKey(name: 'additive') List<List<SpecimenDefinition_Additive>>? additive,
/// /// [preparation] Special processing that should be applied to the
/// container for this kind of specimen.

    @JsonKey(name: 'preparation') FhirMarkdown? preparation,
/// /// [_preparation] Extensions for preparation

    @JsonKey(name: '_preparation') FhirElement? preparationElement,
  }) = _$SpecimenDefinition_Container;

  @override
  String get fhirType => 'SpecimenDefinition_Container';

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_ContainerFromJson(json);

  factory SpecimenDefinition_Container.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition_Container.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinition_Container.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinition_Container cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinition_Container.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinition_ContainerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
