import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationKnowledge_DosingGuideline] Information about a medication
/// that is used to support knowledge.

@freezed
class MedicationKnowledge_DosingGuideline with _$MedicationKnowledge_DosingGuideline {
  const MedicationKnowledge_DosingGuideline._();

  const factory MedicationKnowledge_DosingGuideline({
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
/// [treatmentIntent] The overall intention of the treatment, for example,
/// prophylactic, supporative, curative, etc.

    @JsonKey(name: 'treatmentIntent') CodeableConcept? treatmentIntent,
/// [dosage] Dosage for the medication for the specific guidelines.

    @JsonKey(name: 'dosage') List<List<MedicationKnowledge_Dosage>>? dosage,
/// [administrationTreatment] The type of the treatment that the guideline
/// applies to, for example, long term therapy, first line treatment, etc.

    @JsonKey(name: 'administrationTreatment') CodeableConcept? administrationTreatment,
/// [patientCharacteristic] Characteristics of the patient that are
/// relevant to the administration guidelines (for example, height, weight,
/// gender, etc.).

    @JsonKey(name: 'patientCharacteristic') List<List<MedicationKnowledge_PatientCharacteristic>>? patientCharacteristic,
  }) = _$MedicationKnowledge_DosingGuideline;

  @override
  String get fhirType => 'MedicationKnowledge_DosingGuideline';

  factory MedicationKnowledge_DosingGuideline.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_DosingGuidelineFromJson(json);

  factory MedicationKnowledge_DosingGuideline.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_DosingGuideline.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_DosingGuideline.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_DosingGuideline cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_DosingGuideline.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_DosingGuidelineFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
