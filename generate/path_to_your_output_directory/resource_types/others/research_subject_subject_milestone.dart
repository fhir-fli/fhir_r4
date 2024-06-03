import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ResearchSubject_SubjectMilestone] A ResearchSubject is a participant
/// or object which is the recipient of investigative activities in a research
/// study.

@freezed
class ResearchSubject_SubjectMilestone with _$ResearchSubject_SubjectMilestone {
  const ResearchSubject_SubjectMilestone._();

  const factory ResearchSubject_SubjectMilestone({
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
/// [milestone] A specific event in the research subjects journey through a
/// research study.

    @JsonKey(name: 'milestone') List<List<CodeableConcept>>? milestone,
/// [date] The date/time when this milestone event was completed.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [reason] A rationale that provides additional clarification for the
/// milestone that was captured or documented.

    @JsonKey(name: 'reason') CodeableConcept? reason,
  }) = _$ResearchSubject_SubjectMilestone;

  @override
  String get fhirType => 'ResearchSubject_SubjectMilestone';

  factory ResearchSubject_SubjectMilestone.fromJson(Map<String, dynamic> json) =>
      _$ResearchSubject_SubjectMilestoneFromJson(json);

  factory ResearchSubject_SubjectMilestone.fromYaml(dynamic yaml) => yaml is String
      ? ResearchSubject_SubjectMilestone.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchSubject_SubjectMilestone.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchSubject_SubjectMilestone cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchSubject_SubjectMilestone.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchSubject_SubjectMilestoneFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
