import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DetectedIssue_Mitigation] Indicates an actual or potential clinical
/// issue with or between one or more active or proposed clinical actions for a
/// patient; e.g. Drug-drug interaction, Ineffective treatment frequency,
/// Procedure-condition conflict, gaps in care, etc.

@freezed
class DetectedIssue_Mitigation with _$DetectedIssue_Mitigation {
  const DetectedIssue_Mitigation._();

  const factory DetectedIssue_Mitigation({
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
/// [action] Describes the action that was taken or the observation that
/// was made that reduces/eliminates the risk associated with the identified
/// issue.

    @JsonKey(name: 'action') CodeableConcept? action,
/// [date] Indicates when the mitigating action was documented.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [author] Identifies the practitioner who determined the mitigation and
/// takes responsibility for the mitigation step occurring.

    @JsonKey(name: 'author') Reference? author,
/// [note] Clinicians may add additional notes or justifications about the
/// mitigation action. For example, patient can have this drug because they
/// have had it before without any issues. Multiple justifications may be
/// provided.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$DetectedIssue_Mitigation;

  @override
  String get fhirType => 'DetectedIssue_Mitigation';

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssue_MitigationFromJson(json);

  factory DetectedIssue_Mitigation.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssue_Mitigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DetectedIssue_Mitigation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DetectedIssue_Mitigation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DetectedIssue_Mitigation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DetectedIssue_MitigationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
