import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationRequest_DispenseRequest] An order or request for both supply
/// of the medication and the instructions for administration of the medication
/// to a patient. The resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use across
/// inpatient and outpatient settings, including care plans, etc., and to
/// harmonize with workflow patterns.

@freezed
class MedicationRequest_DispenseRequest with _$MedicationRequest_DispenseRequest {
  const MedicationRequest_DispenseRequest._();

  const factory MedicationRequest_DispenseRequest({
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
/// [initialFill] Indicates the quantity or duration for the first dispense
/// of the medication.

    @JsonKey(name: 'initialFill') MedicationRequest_InitialFill? initialFill,
/// [dispenseInterval] The minimum period of time that must occur between
/// dispenses of the medication.

    @JsonKey(name: 'dispenseInterval') FhirDuration? dispenseInterval,
/// [validityPeriod] This indicates the validity period of a prescription
/// (stale dating the Prescription).

    @JsonKey(name: 'validityPeriod') Period? validityPeriod,
/// [numberOfRepeatsAllowed] An integer indicating the number of times, in
/// addition to the original dispense, (aka refills or repeats) that the
/// patient can receive the prescribed medication. Usage Notes: This integer
/// does not include the original order dispense. This means that if an order
/// indicates dispense 30 tablets plus "3 repeats", then the order can be
/// dispensed a total of 4 times and the patient can receive a total of 120
/// tablets.  A prescriber may explicitly say that zero refills are permitted
/// after the initial dispense.

    @JsonKey(name: 'numberOfRepeatsAllowed') FhirUnsignedInt? numberOfRepeatsAllowed,
/// [_numberOfRepeatsAllowed] Extensions for numberOfRepeatsAllowed

    @JsonKey(name: '_numberOfRepeatsAllowed') PrimitiveElement? numberOfRepeatsAllowedElement,
/// [quantity] The amount that is to be dispensed for one fill.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [expectedSupplyDuration] Identifies the period time over which the
/// supplied product is expected to be used, or the length of time the dispense
/// is expected to last.

    @JsonKey(name: 'expectedSupplyDuration') FhirDuration? expectedSupplyDuration,
/// [dispenser] Indicates the intended performing Organization that will
/// dispense the medication as specified by the prescriber.

    @JsonKey(name: 'dispenser') Reference? dispenser,
/// [dispenserInstruction] Provides additional information to the
/// dispenser, for example, counselling to be provided to the patient.

    @JsonKey(name: 'dispenserInstruction') List<List<Annotation>>? dispenserInstruction,
/// [doseAdministrationAid] Provides information about the type of
/// adherence packaging to be supplied for the medication dispense.

    @JsonKey(name: 'doseAdministrationAid') CodeableConcept? doseAdministrationAid,
  }) = _$MedicationRequest_DispenseRequest;

  @override
  String get fhirType => 'MedicationRequest_DispenseRequest';

  factory MedicationRequest_DispenseRequest.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequest_DispenseRequestFromJson(json);

  factory MedicationRequest_DispenseRequest.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequest_DispenseRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequest_DispenseRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequest_DispenseRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationRequest_DispenseRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationRequest_DispenseRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
