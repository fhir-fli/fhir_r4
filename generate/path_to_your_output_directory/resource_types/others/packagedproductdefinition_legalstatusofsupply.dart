import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PackagedProductDefinition_LegalStatusOfSupply] A medically related
/// item or items, in a container or package.

@freezed
class PackagedProductDefinition_LegalStatusOfSupply with _$PackagedProductDefinition_LegalStatusOfSupply {
  const PackagedProductDefinition_LegalStatusOfSupply._();

  const factory PackagedProductDefinition_LegalStatusOfSupply({
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
/// [code] The actual status of supply. Conveys in what situation this
/// package type may be supplied for use.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [jurisdiction] The place where the legal status of supply applies. When
/// not specified, this indicates it is unknown in this context.

    @JsonKey(name: 'jurisdiction') CodeableConcept? jurisdiction,
  }) = _$PackagedProductDefinition_LegalStatusOfSupply;

  @override
  String get fhirType => 'PackagedProductDefinition_LegalStatusOfSupply';

  factory PackagedProductDefinition_LegalStatusOfSupply.fromJson(Map<String, dynamic> json) =>
      _$PackagedProductDefinition_LegalStatusOfSupplyFromJson(json);

  factory PackagedProductDefinition_LegalStatusOfSupply.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition_LegalStatusOfSupply.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinition_LegalStatusOfSupply.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinition_LegalStatusOfSupply cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinition_LegalStatusOfSupply.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinition_LegalStatusOfSupplyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
