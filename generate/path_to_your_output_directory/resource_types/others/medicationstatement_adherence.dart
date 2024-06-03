/// /// [MedicationStatement_Adherence] A record of a medication that is being
/// consumed by a patient.   A MedicationStatement may indicate that the
/// patient may be taking the medication now or has taken the medication in the
/// past or will be taking the medication in the future.  The source of this
/// information can be the patient, significant other (such as a family member
/// or spouse), or a clinician.  A common scenario where this information is
/// captured is during the history taking process during a patient visit or
/// stay.   The medication information may come from sources such as the
/// patient's memory, from a prescription bottle,  or from a list of
/// medications the patient, clinician or other party maintains. 

The primary
/// difference between a medicationstatement and a medicationadministration is
/// that the medication administration has complete administration information
/// and is based on actual administration information from the person who
/// administered the medication.  A medicationstatement is often, if not
/// always, less specific.  There is no required date/time when the medication
/// was administered, in fact we only know that a source has reported the
/// patient is taking this medication, where details such as time, quantity, or
/// rate or even medication product may be incomplete or missing or less
/// precise.  As stated earlier, the Medication Statement information may come
/// from the patient's memory, from a prescription bottle or from a list of
/// medications the patient, clinician or other party maintains.  Medication
/// administration is more formal and is not missing detailed information.

The
/// MedicationStatement resource was previously called MedicationStatement.

@freezed
class MedicationStatement_Adherence with _$MedicationStatement_Adherence {
  const MedicationStatement_Adherence._();

  const factory MedicationStatement_Adherence({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [code] Type of the adherence for the medication.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [reason] Captures the reason for the current use or adherence of a
/// medication.

    @JsonKey(name: 'reason') CodeableConcept? reason,
  }) = _$MedicationStatement_Adherence;

  @override
  String get fhirType => 'MedicationStatement_Adherence';

  factory MedicationStatement_Adherence.fromJson(Map<String, dynamic> json) =>
      _$MedicationStatement_AdherenceFromJson(json);

  factory MedicationStatement_Adherence.fromYaml(dynamic yaml) => yaml is String
      ? MedicationStatement_Adherence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationStatement_Adherence.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationStatement_Adherence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationStatement_Adherence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationStatement_AdherenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
