/// /// [MedicationKnowledge_Cost] Information about a medication that is used
/// to support knowledge.

@freezed
class MedicationKnowledge_Cost with _$MedicationKnowledge_Cost {
  const MedicationKnowledge_Cost._();

  const factory MedicationKnowledge_Cost({
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
/// /// [effectiveDate] The date range for which the cost information of the
/// medication is effective.

    @JsonKey(name: 'effectiveDate') List<List<Period>>? effectiveDate,
/// /// [type] The category of the cost information.  For example,
/// manufacturers' cost, patient cost, claim reimbursement cost, actual
/// acquisition cost.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [source] The source or owner that assigns the price to the medication.

    @JsonKey(name: 'source') String? source,
/// /// [_source] Extensions for source

    @JsonKey(name: '_source') FhirElement? sourceElement,
/// /// [costMoney] The price or representation of the cost (for example, Band
/// A, Band B or $, $$) of the medication.

    @JsonKey(name: 'costMoney') Money? costMoney,
/// /// [costCodeableConcept] The price or representation of the cost (for
/// example, Band A, Band B or $, $$) of the medication.

    @JsonKey(name: 'costCodeableConcept') CodeableConcept? costCodeableConcept,
  }) = _$MedicationKnowledge_Cost;

  @override
  String get fhirType => 'MedicationKnowledge_Cost';

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_CostFromJson(json);

  factory MedicationKnowledge_Cost.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_Cost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_Cost.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_Cost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_Cost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_CostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
