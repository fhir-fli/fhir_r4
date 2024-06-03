/// /// [Medication_Batch] This resource is primarily used for the
/// identification and definition of a medication, including ingredients, for
/// the purposes of prescribing, dispensing, and administering a medication as
/// well as for making statements about medication use.

@freezed
class Medication_Batch with _$Medication_Batch {
  const Medication_Batch._();

  const factory Medication_Batch({
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
/// /// [lotNumber] The assigned lot number of a batch of the specified
/// product.

    @JsonKey(name: 'lotNumber') String? lotNumber,
/// /// [_lotNumber] Extensions for lotNumber

    @JsonKey(name: '_lotNumber') FhirElement? lotNumberElement,
/// /// [expirationDate] When this specific batch of product will expire.

    @JsonKey(name: 'expirationDate') FhirDateTime? expirationDate,
/// /// [_expirationDate] Extensions for expirationDate

    @JsonKey(name: '_expirationDate') FhirElement? expirationDateElement,
  }) = _$Medication_Batch;

  @override
  String get fhirType => 'Medication_Batch';

  factory Medication_Batch.fromJson(Map<String, dynamic> json) =>
      _$Medication_BatchFromJson(json);

  factory Medication_Batch.fromYaml(dynamic yaml) => yaml is String
      ? Medication_Batch.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Medication_Batch.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Medication_Batch cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Medication_Batch.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Medication_BatchFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
