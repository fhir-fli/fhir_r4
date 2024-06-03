import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionOrder] A request to supply a diet, formula feeding (enteral)
/// or oral nutritional supplement to a patient/resident.

@freezed
class NutritionOrder with _$NutritionOrder {
  const NutritionOrder._();

  const factory NutritionOrder({
/// [resourceType] This is a NutritionOrder resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifiers assigned to this order by the order sender or
/// by the order receiver.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this NutritionOrder.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this NutritionOrder.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [instantiates] The URL pointing to a protocol, guideline, orderset or
/// other definition that is adhered to in whole or in part by this
/// NutritionOrder.

    @JsonKey(name: 'instantiates') List<List<FhirUri>>? instantiates,
/// [_instantiates] Extensions for instantiates

    @JsonKey(name: '_instantiates') List<PrimitiveElement>? instantiatesElement,
/// [basedOn] A plan or request that is fulfilled in whole or in part by
/// this nutrition order.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [groupIdentifier] A shared identifier common to all nutrition orders
/// that were authorized more or less simultaneously by a single author,
/// representing the composite or group identifier.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// [status] The workflow status of the nutrition order/request.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [intent] Indicates the level of authority/intentionality associated
/// with the NutrionOrder and where the request fits into the workflow chain.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [priority] Indicates how quickly the Nutrition Order should be
/// addressed with respect to other        requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [subject] The person or set of individuals who needs the nutrition
/// order for an oral diet, nutritional supplement and/or enteral or formula
/// feeding.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] An encounter that provides additional information about the
/// healthcare context in which this request is made.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [supportingInformation] Information to support fulfilling (i.e.
/// dispensing or administering) of the nutrition,        for example, patient
/// height and weight).

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [dateTime] The date and time that this nutrition order was requested.

    @JsonKey(name: 'dateTime') FhirDateTime? dateTime,
/// [_dateTime] Extensions for dateTime

    @JsonKey(name: '_dateTime') PrimitiveElement? dateTimeElement,
/// [orderer] The practitioner that holds legal responsibility for ordering
/// the diet, nutritional supplement, or formula feedings.

    @JsonKey(name: 'orderer') Reference? orderer,
/// [performer] The specified desired performer of the nutrition order.

    @JsonKey(name: 'performer') List<List<CodeableReference>>? performer,
/// [allergyIntolerance] A link to a record of allergies or intolerances
/// which should be included in the nutrition order.

    @JsonKey(name: 'allergyIntolerance') List<List<Reference>>? allergyIntolerance,
/// [foodPreferenceModifier] This modifier is used to convey order-specific
/// modifiers about the type of food that should be given. These can be derived
/// from patient allergies, intolerances, or preferences such as Halal, Vegan
/// or Kosher. This modifier applies to the entire nutrition order inclusive of
/// the oral diet, nutritional supplements and enteral formula feedings.

    @JsonKey(name: 'foodPreferenceModifier') List<List<CodeableConcept>>? foodPreferenceModifier,
/// [excludeFoodModifier] This modifier is used to convey Order-specific
/// modifier about the type of oral food or oral fluids that should not be
/// given. These can be derived from patient allergies, intolerances, or
/// preferences such as No Red Meat, No Soy or No Wheat or  Gluten-Free.  While
/// it should not be necessary to repeat allergy or intolerance information
/// captured in the referenced AllergyIntolerance resource in the
/// excludeFoodModifier, this element may be used to convey additional
/// specificity related to foods that should be eliminated from the patient’s
/// diet for any reason.  This modifier applies to the entire nutrition order
/// inclusive of the oral diet, nutritional supplements and enteral formula
/// feedings.

    @JsonKey(name: 'excludeFoodModifier') List<List<CodeableConcept>>? excludeFoodModifier,
/// [outsideFoodAllowed] This modifier is used to convey whether a food
/// item is allowed to be brought in by the patient and/or family.  If set to
/// true, indicates that the receiving system does not need to supply the food
/// item.

    @JsonKey(name: 'outsideFoodAllowed') FhirBoolean? outsideFoodAllowed,
/// [_outsideFoodAllowed] Extensions for outsideFoodAllowed

    @JsonKey(name: '_outsideFoodAllowed') PrimitiveElement? outsideFoodAllowedElement,
/// [oralDiet] Diet given orally in contrast to enteral (tube) feeding.

    @JsonKey(name: 'oralDiet') NutritionOrder_OralDiet? oralDiet,
/// [supplement] Oral nutritional products given in order to add further
/// nutritional value to the patient's diet.

    @JsonKey(name: 'supplement') List<List<NutritionOrder_Supplement>>? supplement,
/// [enteralFormula] Feeding provided through the gastrointestinal tract
/// via a tube, catheter, or stoma that delivers nutrition distal to the oral
/// cavity.

    @JsonKey(name: 'enteralFormula') NutritionOrder_EnteralFormula? enteralFormula,
/// [note] Comments made about the {{title}} by the requester, performer,
/// subject or other participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$NutritionOrder;

  @override
  String get fhirType => 'NutritionOrder';

  factory NutritionOrder.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderFromJson(json);

  factory NutritionOrder.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionOrder.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
