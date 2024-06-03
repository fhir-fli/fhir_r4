import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationRequest_Substitution] An order or request for both supply of
/// the medication and the instructions for administration of the medication to
/// a patient. The resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use across
/// inpatient and outpatient settings, including care plans, etc., and to
/// harmonize with workflow patterns.

@freezed
class MedicationRequest_Substitution with _$MedicationRequest_Substitution {
  const MedicationRequest_Substitution._();

  const factory MedicationRequest_Substitution({
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
/// [allowedBoolean] True if the prescriber allows a different drug to be
/// dispensed from what was prescribed.

    @JsonKey(name: 'allowedBoolean') FhirBoolean? allowedBoolean,
/// [_allowedBoolean] Extensions for allowedBoolean

    @JsonKey(name: '_allowedBoolean') PrimitiveElement? allowedBooleanElement,
/// [allowedCodeableConcept] True if the prescriber allows a different drug
/// to be dispensed from what was prescribed.

    @JsonKey(name: 'allowedCodeableConcept') CodeableConcept? allowedCodeableConcept,
/// [reason] Indicates the reason for the substitution, or why substitution
/// must or must not be performed.

    @JsonKey(name: 'reason') CodeableConcept? reason,
  }) = _$MedicationRequest_Substitution;

  @override
  String get fhirType => 'MedicationRequest_Substitution';

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequest_SubstitutionFromJson(json);

  factory MedicationRequest_Substitution.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequest_Substitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequest_Substitution.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequest_Substitution cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationRequest_Substitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationRequest_SubstitutionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
