/// /// [Dosage_DoseAndRate] Indicates how the medication is/was taken or
/// should be taken by the patient.

@freezed
class Dosage_DoseAndRate with _$Dosage_DoseAndRate {
  const Dosage_DoseAndRate._();

  const factory Dosage_DoseAndRate({
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
/// /// [type] The kind of dose or rate specified, for example, ordered or
/// calculated.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [doseRange] Amount of medication per dose.

    @JsonKey(name: 'doseRange') Range? doseRange,
/// /// [doseQuantity] Amount of medication per dose.

    @JsonKey(name: 'doseQuantity') Quantity? doseQuantity,
/// /// [rateRatio] Amount of medication per unit of time.

    @JsonKey(name: 'rateRatio') Ratio? rateRatio,
/// /// [rateRange] Amount of medication per unit of time.

    @JsonKey(name: 'rateRange') Range? rateRange,
/// /// [rateQuantity] Amount of medication per unit of time.

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
