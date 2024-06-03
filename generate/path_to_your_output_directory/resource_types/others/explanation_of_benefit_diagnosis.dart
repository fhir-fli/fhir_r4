import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExplanationOfBenefit_Diagnosis] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_Diagnosis with _$ExplanationOfBenefit_Diagnosis {
  const ExplanationOfBenefit_Diagnosis._();

  const factory ExplanationOfBenefit_Diagnosis({
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
/// [sequence] A number to uniquely identify diagnosis entries.

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [diagnosisCodeableConcept] The nature of illness or problem in a coded
/// form or as a reference to an external defined Condition.

    @JsonKey(name: 'diagnosisCodeableConcept') CodeableConcept? diagnosisCodeableConcept,
/// [diagnosisReference] The nature of illness or problem in a coded form
/// or as a reference to an external defined Condition.

    @JsonKey(name: 'diagnosisReference') Reference? diagnosisReference,
/// [type] When the condition was observed or the relative ranking.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [onAdmission] Indication of whether the diagnosis was present on
/// admission to a facility.

    @JsonKey(name: 'onAdmission') CodeableConcept? onAdmission,
  }) = _$ExplanationOfBenefit_Diagnosis;

  @override
  String get fhirType => 'ExplanationOfBenefit_Diagnosis';

  factory ExplanationOfBenefit_Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_DiagnosisFromJson(json);

  factory ExplanationOfBenefit_Diagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_Diagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_Diagnosis.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_Diagnosis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_Diagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_DiagnosisFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
