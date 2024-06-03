import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionOrder_EnteralFormula] A request to supply a diet, formula
/// feeding (enteral) or oral nutritional supplement to a patient/resident.

@freezed
class NutritionOrder_EnteralFormula with _$NutritionOrder_EnteralFormula {
  const NutritionOrder_EnteralFormula._();

  const factory NutritionOrder_EnteralFormula({
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
/// [baseFormulaType] The type of enteral or infant formula such as an
/// adult standard formula with fiber or a soy-based infant formula.

    @JsonKey(name: 'baseFormulaType') CodeableReference? baseFormulaType,
/// [baseFormulaProductName] The product or brand name of the enteral or
/// infant formula product such as "ACME Adult Standard Formula".

    @JsonKey(name: 'baseFormulaProductName') String? baseFormulaProductName,
/// [_baseFormulaProductName] Extensions for baseFormulaProductName

    @JsonKey(name: '_baseFormulaProductName') PrimitiveElement? baseFormulaProductNameElement,
/// [deliveryDevice] The intended type of device that is to be used for the
/// administration of the enteral formula.

    @JsonKey(name: 'deliveryDevice') List<List<CodeableReference>>? deliveryDevice,
/// [additive] Indicates modular components to be provided in addition or
/// mixed with the base formula.

    @JsonKey(name: 'additive') List<List<NutritionOrder_Additive>>? additive,
/// [caloricDensity] The amount of energy (calories) that the formula
/// should provide per specified volume, typically per mL or fluid oz.  For
/// example, an infant may require a formula that provides 24 calories per
/// fluid ounce or an adult may require an enteral formula that provides 1.5
/// calorie/mL.

    @JsonKey(name: 'caloricDensity') Quantity? caloricDensity,
/// [routeOfAdministration] The route or physiological path of
/// administration into the patient's gastrointestinal  tract for purposes of
/// providing the formula feeding, e.g. nasogastric tube.

    @JsonKey(name: 'routeOfAdministration') CodeableConcept? routeOfAdministration,
/// [administration] Formula administration instructions as structured
/// data.  This repeating structure allows for changing the administration rate
/// or volume over time for both bolus and continuous feeding.  An example of
/// this would be an instruction to increase the rate of continuous feeding
/// every 2 hours.

    @JsonKey(name: 'administration') List<List<NutritionOrder_Administration>>? administration,
/// [maxVolumeToDeliver] The maximum total quantity of formula that may be
/// administered to a subject over the period of time, e.g. 1440 mL over 24
/// hours.

    @JsonKey(name: 'maxVolumeToDeliver') Quantity? maxVolumeToDeliver,
/// [administrationInstruction] Free text formula administration, feeding
/// instructions or additional instructions or information.

    @JsonKey(name: 'administrationInstruction') FhirMarkdown? administrationInstruction,
/// [_administrationInstruction] Extensions for administrationInstruction

    @JsonKey(name: '_administrationInstruction') PrimitiveElement? administrationInstructionElement,
  }) = _$NutritionOrder_EnteralFormula;

  @override
  String get fhirType => 'NutritionOrder_EnteralFormula';

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_EnteralFormulaFromJson(json);

  factory NutritionOrder_EnteralFormula.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder_EnteralFormula.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder_EnteralFormula.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder_EnteralFormula cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionOrder_EnteralFormula.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrder_EnteralFormulaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
