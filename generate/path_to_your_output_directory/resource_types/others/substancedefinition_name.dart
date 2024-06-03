import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition_Name] The detailed description of a substance,
/// typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Name with _$SubstanceDefinition_Name {
  const SubstanceDefinition_Name._();

  const factory SubstanceDefinition_Name({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [name] The actual name.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [type] Name type, for example 'systematic',  'scientific, 'brand'.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [status] The status of the name, for example 'current', 'proposed'.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [preferred] If this is the preferred name for this substance.

    @JsonKey(name: 'preferred') FhirBoolean? preferred,
/// [_preferred] Extensions for preferred

    @JsonKey(name: '_preferred') PrimitiveElement? preferredElement,
/// [language] Human language that the name is written in.

    @JsonKey(name: 'language') List<List<CodeableConcept>>? language,
/// [domain] The use context of this name for example if there is a
/// different name a drug active ingredient as opposed to a food colour
/// additive.

    @JsonKey(name: 'domain') List<List<CodeableConcept>>? domain,
/// [jurisdiction] The jurisdiction where this name applies.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [synonym] A synonym of this particular name, by which the substance is
/// also known.

    @JsonKey(name: 'synonym') List<List<SubstanceDefinition_Name>>? synonym,
/// [translation] A translation for this name into another human language.

    @JsonKey(name: 'translation') List<List<SubstanceDefinition_Name>>? translation,
/// [official] Details of the official nature of this name.

    @JsonKey(name: 'official') List<List<SubstanceDefinition_Official>>? official,
/// [source] Supporting literature.

    @JsonKey(name: 'source') List<List<Reference>>? source,
  }) = _$SubstanceDefinition_Name;

  @override
  String get fhirType => 'SubstanceDefinition_Name';

  factory SubstanceDefinition_Name.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_NameFromJson(json);

  factory SubstanceDefinition_Name.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Name.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Name.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Name cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Name.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_NameFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
