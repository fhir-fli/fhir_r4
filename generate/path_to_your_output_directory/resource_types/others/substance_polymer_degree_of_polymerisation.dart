import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstancePolymer_DegreeOfPolymerisation] Properties of a substance
/// specific to it being a polymer.

@freezed
class SubstancePolymer_DegreeOfPolymerisation with _$SubstancePolymer_DegreeOfPolymerisation {
  const SubstancePolymer_DegreeOfPolymerisation._();

  const factory SubstancePolymer_DegreeOfPolymerisation({
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
/// [type] The type of the degree of polymerisation shall be described,
/// e.g. SRU/Polymer Ratio.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [average] An average amount of polymerisation.

    @JsonKey(name: 'average') FhirInteger? average,
/// [_average] Extensions for average

    @JsonKey(name: '_average') PrimitiveElement? averageElement,
/// [low] A low expected limit of the amount.

    @JsonKey(name: 'low') FhirInteger? low,
/// [_low] Extensions for low

    @JsonKey(name: '_low') PrimitiveElement? lowElement,
/// [high] A high expected limit of the amount.

    @JsonKey(name: 'high') FhirInteger? high,
/// [_high] Extensions for high

    @JsonKey(name: '_high') PrimitiveElement? highElement,
  }) = _$SubstancePolymer_DegreeOfPolymerisation;

  @override
  String get fhirType => 'SubstancePolymer_DegreeOfPolymerisation';

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);

  factory SubstancePolymer_DegreeOfPolymerisation.fromYaml(dynamic yaml) => yaml is String
      ? SubstancePolymer_DegreeOfPolymerisation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstancePolymer_DegreeOfPolymerisation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstancePolymer_DegreeOfPolymerisation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstancePolymer_DegreeOfPolymerisation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
