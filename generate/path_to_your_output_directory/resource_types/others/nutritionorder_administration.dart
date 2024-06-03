/// /// [NutritionOrder_Administration] A request to supply a diet, formula
/// feeding (enteral) or oral nutritional supplement to a patient/resident.

@freezed
class NutritionOrder_Administration with _$NutritionOrder_Administration {
  const NutritionOrder_Administration._();

  const factory NutritionOrder_Administration({
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
/// /// [schedule] Schedule information for an enteral formula.

    @JsonKey(name: 'schedule') NutritionOrder_Schedule2? schedule,
/// /// [quantity] The volume of formula to provide to the patient per the
/// specified administration schedule.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [rateQuantity] The rate of administration of formula via a feeding
/// pump, e.g. 60 mL per hour, according to the specified schedule.

    @JsonKey(name: 'rateQuantity') Quantity? rateQuantity,
/// /// [rateRatio] The rate of administration of formula via a feeding pump,
/// e.g. 60 mL per hour, according to the specified schedule.

    @JsonKey(name: 'rateRatio') Ratio? rateRatio,
  }) = _$NutritionOrder_Administration;

  @override
  String get fhirType => 'NutritionOrder_Administration';

  factory NutritionOrder_Administration.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_AdministrationFromJson(json);

  factory NutritionOrder_Administration.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder_Administration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder_Administration.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder_Administration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionOrder_Administration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrder_AdministrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
