import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Dosage] Indicates how the medication is/was taken or should be taken
/// by the patient.

@freezed
class Dosage with _$Dosage {
  const Dosage._();

  const factory Dosage({
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
/// [sequence] Indicates the order in which the dosage instructions should
/// be applied or interpreted.

    @JsonKey(name: 'sequence') FhirInteger? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [text] Free text dosage instructions e.g. SIG.

    @JsonKey(name: 'text') String? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
/// [additionalInstruction] Supplemental instructions to the patient on how
/// to take the medication  (e.g. "with meals" or"take half to one hour before
/// food") or warnings for the patient about the medication (e.g. "may cause
/// drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").

    @JsonKey(name: 'additionalInstruction') List<List<CodeableConcept>>? additionalInstruction,
/// [patientInstruction] Instructions in terms that are understood by the
/// patient or consumer.

    @JsonKey(name: 'patientInstruction') String? patientInstruction,
/// [_patientInstruction] Extensions for patientInstruction

    @JsonKey(name: '_patientInstruction') PrimitiveElement? patientInstructionElement,
/// [timing] When medication should be administered.

    @JsonKey(name: 'timing') Timing? timing,
/// [asNeeded] Indicates whether the Medication is only taken when needed
/// within a specific dosing schedule (Boolean option).

    @JsonKey(name: 'asNeeded') FhirBoolean? asNeeded,
/// [_asNeeded] Extensions for asNeeded

    @JsonKey(name: '_asNeeded') PrimitiveElement? asNeededElement,
/// [asNeededFor] Indicates whether the Medication is only taken based on a
/// precondition for taking the Medication (CodeableConcept).

    @JsonKey(name: 'asNeededFor') List<List<CodeableConcept>>? asNeededFor,
/// [site] Body site to administer to.

    @JsonKey(name: 'site') CodeableConcept? site,
/// [route] How drug should enter body.

    @JsonKey(name: 'route') CodeableConcept? route,
/// [method] Technique for administering medication.

    @JsonKey(name: 'method') CodeableConcept? method,
/// [doseAndRate] Depending on the resource,this is the amount of
/// medication administered, to  be administered or typical amount to be
/// administered.

    @JsonKey(name: 'doseAndRate') List<List<Dosage_DoseAndRate>>? doseAndRate,
/// [maxDosePerPeriod] Upper limit on medication per unit of time.

    @JsonKey(name: 'maxDosePerPeriod') List<List<Ratio>>? maxDosePerPeriod,
/// [maxDosePerAdministration] Upper limit on medication per
/// administration.

    @JsonKey(name: 'maxDosePerAdministration') Quantity? maxDosePerAdministration,
/// [maxDosePerLifetime] Upper limit on medication per lifetime of the
/// patient.

    @JsonKey(name: 'maxDosePerLifetime') Quantity? maxDosePerLifetime,
  }) = _$Dosage;

  @override
  String get fhirType => 'Dosage';

  factory Dosage.fromJson(Map<String, dynamic> json) =>
      _$DosageFromJson(json);

  factory Dosage.fromYaml(dynamic yaml) => yaml is String
      ? Dosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Dosage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Dosage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Dosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DosageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Dosage_DoseAndRate] Indicates how the medication is/was taken or
/// should be taken by the patient.

@freezed
class Dosage_DoseAndRate with _$Dosage_DoseAndRate {
  const Dosage_DoseAndRate._();

  const factory Dosage_DoseAndRate({
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
/// [type] The kind of dose or rate specified, for example, ordered or
/// calculated.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [doseRange] Amount of medication per dose.

    @JsonKey(name: 'doseRange') Range? doseRange,
/// [doseQuantity] Amount of medication per dose.

    @JsonKey(name: 'doseQuantity') Quantity? doseQuantity,
/// [rateRatio] Amount of medication per unit of time.

    @JsonKey(name: 'rateRatio') Ratio? rateRatio,
/// [rateRange] Amount of medication per unit of time.

    @JsonKey(name: 'rateRange') Range? rateRange,
/// [rateQuantity] Amount of medication per unit of time.

    @JsonKey(name: 'rateQuantity') Quantity? rateQuantity,
  }) = _$Dosage_DoseAndRate;

  @override
  String get fhirType => 'Dosage_DoseAndRate';

  factory Dosage_DoseAndRate.fromJson(Map<String, dynamic> json) =>
      _$Dosage_DoseAndRateFromJson(json);

  factory Dosage_DoseAndRate.fromYaml(dynamic yaml) => yaml is String
      ? Dosage_DoseAndRate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Dosage_DoseAndRate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Dosage_DoseAndRate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Dosage_DoseAndRate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Dosage_DoseAndRateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

