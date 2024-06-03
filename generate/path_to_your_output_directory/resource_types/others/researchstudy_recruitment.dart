import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ResearchStudy_Recruitment] A scientific study of nature that sometimes
/// includes processes involved in health and disease. For example, clinical
/// trials are research studies that involve people. These studies may be
/// related to new ways to screen, prevent, diagnose, and treat disease. They
/// may also study certain outcomes and certain groups of people by looking at
/// data collected in the past or future.

@freezed
class ResearchStudy_Recruitment with _$ResearchStudy_Recruitment {
  const ResearchStudy_Recruitment._();

  const factory ResearchStudy_Recruitment({
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
/// [targetNumber] Estimated total number of participants to be enrolled.

    @JsonKey(name: 'targetNumber') FhirUnsignedInt? targetNumber,
/// [_targetNumber] Extensions for targetNumber

    @JsonKey(name: '_targetNumber') PrimitiveElement? targetNumberElement,
/// [actualNumber] Actual total number of participants enrolled in study.

    @JsonKey(name: 'actualNumber') FhirUnsignedInt? actualNumber,
/// [_actualNumber] Extensions for actualNumber

    @JsonKey(name: '_actualNumber') PrimitiveElement? actualNumberElement,
/// [eligibility] Inclusion and exclusion criteria.

    @JsonKey(name: 'eligibility') Reference? eligibility,
/// [actualGroup] Group of participants who were enrolled in study.

    @JsonKey(name: 'actualGroup') Reference? actualGroup,
  }) = _$ResearchStudy_Recruitment;

  @override
  String get fhirType => 'ResearchStudy_Recruitment';

  factory ResearchStudy_Recruitment.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudy_RecruitmentFromJson(json);

  factory ResearchStudy_Recruitment.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy_Recruitment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchStudy_Recruitment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchStudy_Recruitment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchStudy_Recruitment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchStudy_RecruitmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
