import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [EpisodeOfCare_StatusHistory] An association between a patient and an
/// organization / healthcare provider(s) during which time encounters may
/// occur. The managing organization assumes a level of responsibility for the
/// patient during this time.

@freezed
class EpisodeOfCare_StatusHistory with _$EpisodeOfCare_StatusHistory {
  const EpisodeOfCare_StatusHistory._();

  const factory EpisodeOfCare_StatusHistory({
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
/// [status] planned | waitlist | active | onhold | finished | cancelled.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [period] The period during this EpisodeOfCare that the specific status
/// applied.

    @JsonKey(name: 'period') Period? period,
  }) = _$EpisodeOfCare_StatusHistory;

  @override
  String get fhirType => 'EpisodeOfCare_StatusHistory';

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCare_StatusHistoryFromJson(json);

  factory EpisodeOfCare_StatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCare_StatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EpisodeOfCare_StatusHistory.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EpisodeOfCare_StatusHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EpisodeOfCare_StatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EpisodeOfCare_StatusHistoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
