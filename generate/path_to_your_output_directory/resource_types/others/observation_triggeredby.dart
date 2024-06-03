import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Observation_TriggeredBy] Measurements and simple assertions made about
/// a patient, device or other subject.

@freezed
class Observation_TriggeredBy with _$Observation_TriggeredBy {
  const Observation_TriggeredBy._();

  const factory Observation_TriggeredBy({
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
/// [observation] Reference to the triggering observation.

    @JsonKey(name: 'observation') Reference? observation,
/// [type] The type of trigger.
Reflex | Repeat | Re-run.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [reason] Provides the reason why this observation was performed as a
/// result of the observation(s) referenced.

    @JsonKey(name: 'reason') String? reason,
/// [_reason] Extensions for reason

    @JsonKey(name: '_reason') PrimitiveElement? reasonElement,
  }) = _$Observation_TriggeredBy;

  @override
  String get fhirType => 'Observation_TriggeredBy';

  factory Observation_TriggeredBy.fromJson(Map<String, dynamic> json) =>
      _$Observation_TriggeredByFromJson(json);

  factory Observation_TriggeredBy.fromYaml(dynamic yaml) => yaml is String
      ? Observation_TriggeredBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Observation_TriggeredBy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Observation_TriggeredBy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Observation_TriggeredBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Observation_TriggeredByFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
