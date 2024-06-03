import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstancePolymer_RepeatUnit] Properties of a substance specific to it
/// being a polymer.

@freezed
class SubstancePolymer_RepeatUnit with _$SubstancePolymer_RepeatUnit {
  const SubstancePolymer_RepeatUnit._();

  const factory SubstancePolymer_RepeatUnit({
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
/// [unit] Structural repeat units are essential elements for defining
/// polymers.

    @JsonKey(name: 'unit') String? unit,
/// [_unit] Extensions for unit

    @JsonKey(name: '_unit') PrimitiveElement? unitElement,
/// [orientation] The orientation of the polymerisation, e.g. head-tail,
/// head-head, random.

    @JsonKey(name: 'orientation') CodeableConcept? orientation,
/// [amount] Number of repeats of this unit.

    @JsonKey(name: 'amount') FhirInteger? amount,
/// [_amount] Extensions for amount

    @JsonKey(name: '_amount') PrimitiveElement? amountElement,
/// [degreeOfPolymerisation] Applies to homopolymer and block co-polymers
/// where the degree of polymerisation within a block can be described.

    @JsonKey(name: 'degreeOfPolymerisation') List<List<SubstancePolymer_DegreeOfPolymerisation>>? degreeOfPolymerisation,
/// [structuralRepresentation] A graphical structure for this SRU.

    @JsonKey(name: 'structuralRepresentation') List<List<SubstancePolymer_StructuralRepresentation>>? structuralRepresentation,
  }) = _$SubstancePolymer_RepeatUnit;

  @override
  String get fhirType => 'SubstancePolymer_RepeatUnit';

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_RepeatUnitFromJson(json);

  factory SubstancePolymer_RepeatUnit.fromYaml(dynamic yaml) => yaml is String
      ? SubstancePolymer_RepeatUnit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstancePolymer_RepeatUnit.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstancePolymer_RepeatUnit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstancePolymer_RepeatUnit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstancePolymer_RepeatUnitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
