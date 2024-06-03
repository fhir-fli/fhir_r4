/// /// [Specimen_Container] A sample to be used for analysis.

@freezed
class Specimen_Container with _$Specimen_Container {
  const Specimen_Container._();

  const factory Specimen_Container({
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
/// /// [device] The device resource for the the container holding the
/// specimen. If the container is in a holder then the referenced device will
/// point to a parent device.

    @JsonKey(name: 'device') Reference? device,
/// /// [specimenQuantity] The quantity of specimen in the container; may be
/// volume, dimensions, or other appropriate measurements, depending on the
/// specimen type.

    @JsonKey(name: 'specimenQuantity') Quantity? specimenQuantity,
  }) = _$Specimen_Container;

  @override
  String get fhirType => 'Specimen_Container';

  factory Specimen_Container.fromJson(Map<String, dynamic> json) =>
      _$Specimen_ContainerFromJson(json);

  factory Specimen_Container.fromYaml(dynamic yaml) => yaml is String
      ? Specimen_Container.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Specimen_Container.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Specimen_Container cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Specimen_Container.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Specimen_ContainerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
