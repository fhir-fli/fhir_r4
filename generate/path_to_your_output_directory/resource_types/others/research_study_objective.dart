import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ResearchStudy_Objective] A scientific study of nature that sometimes
/// includes processes involved in health and disease. For example, clinical
/// trials are research studies that involve people. These studies may be
/// related to new ways to screen, prevent, diagnose, and treat disease. They
/// may also study certain outcomes and certain groups of people by looking at
/// data collected in the past or future.

@freezed
class ResearchStudy_Objective with _$ResearchStudy_Objective {
  const ResearchStudy_Objective._();

  const factory ResearchStudy_Objective({
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
/// [name] Unique, human-readable label for this objective of the study.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [type] The kind of study objective.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [description] Free text description of the objective of the study.
/// This is what the study is trying to achieve rather than how it is going to
/// achieve it (see ResearchStudy.description).

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
  }) = _$ResearchStudy_Objective;

  @override
  String get fhirType => 'ResearchStudy_Objective';

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudy_ObjectiveFromJson(json);

  factory ResearchStudy_Objective.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy_Objective.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchStudy_Objective.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchStudy_Objective cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchStudy_Objective.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchStudy_ObjectiveFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
