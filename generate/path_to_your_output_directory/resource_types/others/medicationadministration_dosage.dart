/// /// [MedicationAdministration_Dosage] Describes the event of a patient
/// consuming or otherwise being administered a medication.  This may be as
/// simple as swallowing a tablet or it may be a long running infusion.
/// Related resources tie this event to the authorizing prescription, and the
/// specific encounter between patient and health care practitioner.

@freezed
class MedicationAdministration_Dosage with _$MedicationAdministration_Dosage {
  const MedicationAdministration_Dosage._();

  const factory MedicationAdministration_Dosage({
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
/// /// [text] Free text dosage can be used for cases where the dosage
/// administered is too complex to code. When coded dosage is present, the free
/// text dosage may still be present for display to humans.The dosage
/// instructions should reflect the dosage of the medication that was
/// administered.

    @JsonKey(name: 'text') String? text,
/// /// [_text] Extensions for text

    @JsonKey(name: '_text') FhirElement? textElement,
/// /// [site] A coded specification of the anatomic site where the medication
/// first entered the body.  For example, "left arm".

    @JsonKey(name: 'site') CodeableConcept? site,
/// /// [route] A code specifying the route or physiological path of
/// administration of a therapeutic agent into or onto the patient.  For
/// example, topical, intravenous, etc.

    @JsonKey(name: 'route') CodeableConcept? route,
/// /// [method] A coded value indicating the method by which the medication is
/// intended to be or was introduced into or on the body.  This attribute will
/// most often NOT be populated.  It is most commonly used for injections.  For
/// example, Slow Push, Deep IV.

    @JsonKey(name: 'method') CodeableConcept? method,
/// /// [dose] The amount of the medication given at one administration event.
///  Use this value when the administration is essentially an instantaneous
/// event such as a swallowing a tablet or giving an injection.

    @JsonKey(name: 'dose') Quantity? dose,
/// /// [rateRatio] Identifies the speed with which the medication was or will
/// be introduced into the patient.  Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit
/// of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
/// mcg/1 minute; 1 liter/8 hours.

    @JsonKey(name: 'rateRatio') Ratio? rateRatio,
/// /// [rateQuantity] Identifies the speed with which the medication was or
/// will be introduced into the patient.  Typically, the rate for an infusion
/// e.g. 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
/// mcg/1 minute; 1 liter/8 hours.

    @JsonKey(name: 'rateQuantity') Quantity? rateQuantity,
  }) = _$MedicationAdministration_Dosage;

  @override
  String get fhirType => 'MedicationAdministration_Dosage';

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) =>
      _$MedicationAdministration_DosageFromJson(json);

  factory MedicationAdministration_Dosage.fromYaml(dynamic yaml) => yaml is String
      ? MedicationAdministration_Dosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationAdministration_Dosage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationAdministration_Dosage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationAdministration_Dosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationAdministration_DosageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
