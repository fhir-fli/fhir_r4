import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionIntake] A record of food or fluid that is being consumed by a
/// patient.   A NutritionIntake may indicate that the patient may be consuming
/// the food or fluid now or has consumed the food or fluid in the past.  The
/// source of this information can be the patient, significant other (such as a
/// family member or spouse), or a clinician.  A common scenario where this
/// information is captured is during the history taking process during a
/// patient visit or stay or through an app that tracks food or fluids
/// consumed.   The consumption information may come from sources such as the
/// patient's memory, from a nutrition label,  or from a clinician documenting
/// observed intake.

@freezed
class NutritionIntake with _$NutritionIntake {
  const NutritionIntake._();

  const factory NutritionIntake({
/// [resourceType] This is a NutritionIntake resource

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
/// [identifier] Identifiers associated with this Nutrition Intake that are
/// defined by business processes and/or used to refer to it when a direct URL
/// reference to the resource itself is not appropriate. They are business
/// identifiers assigned to this resource by the performer or other systems and
/// remain constant as the resource is updated and propagates from server to
/// server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] Instantiates FHIR protocol or definition.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] Instantiates external protocol or definition.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [basedOn] A plan, proposal or order that is fulfilled in whole or in
/// part by this event.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] A larger event of which this particular event is a component
/// or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] A code representing the patient or other source's judgment
/// about the state of the intake that this assertion is about.  Generally,
/// this will be active or completed.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Captures the reason for the current state of the
/// NutritionIntake.

    @JsonKey(name: 'statusReason') List<List<CodeableConcept>>? statusReason,
/// [code] Overall type of nutrition intake.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subject] The person, animal or group who is/was consuming the food or
/// fluid.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The encounter that establishes the context for this
/// NutritionIntake.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [occurrenceDateTime] The interval of time during which it is being
/// asserted that the patient is/was consuming the food or fluid.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] The interval of time during which it is being
/// asserted that the patient is/was consuming the food or fluid.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [recorded] The date when the Nutrition Intake was asserted by the
/// information source.

    @JsonKey(name: 'recorded') FhirDateTime? recorded,
/// [_recorded] Extensions for recorded

    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
/// [reportedBoolean] The person or organization that provided the
/// information about the consumption of this food or fluid. Note: Use
/// derivedFrom when a NutritionIntake is derived from other resources.

    @JsonKey(name: 'reportedBoolean') FhirBoolean? reportedBoolean,
/// [_reportedBoolean] Extensions for reportedBoolean

    @JsonKey(name: '_reportedBoolean') PrimitiveElement? reportedBooleanElement,
/// [reportedReference] The person or organization that provided the
/// information about the consumption of this food or fluid. Note: Use
/// derivedFrom when a NutritionIntake is derived from other resources.

    @JsonKey(name: 'reportedReference') Reference? reportedReference,
/// [consumedItem] What food or fluid product or item was consumed.

    @JsonKey(name: 'consumedItem') List<List<NutritionIntake_ConsumedItem>>? consumedItem,
/// [ingredientLabel] Total nutrient amounts for the whole meal, product,
/// serving, etc.

    @JsonKey(name: 'ingredientLabel') List<List<NutritionIntake_IngredientLabel>>? ingredientLabel,
/// [performer] Who performed the intake and how they were involved.

    @JsonKey(name: 'performer') List<List<NutritionIntake_Performer>>? performer,
/// [location] Where the intake occurred.

    @JsonKey(name: 'location') Reference? location,
/// [derivedFrom] Allows linking the NutritionIntake to the underlying
/// NutritionOrder, or to other information, such as AllergyIntolerance, that
/// supports or is used to derive the NutritionIntake.

    @JsonKey(name: 'derivedFrom') List<List<Reference>>? derivedFrom,
/// [reason] A reason, Condition or observation for why the food or fluid
/// is /was consumed.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [note] Provides extra information about the Nutrition Intake that is
/// not conveyed by the other attributes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$NutritionIntake;

  @override
  String get fhirType => 'NutritionIntake';

  factory NutritionIntake.fromJson(Map<String, dynamic> json) =>
      _$NutritionIntakeFromJson(json);

  factory NutritionIntake.fromYaml(dynamic yaml) => yaml is String
      ? NutritionIntake.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionIntake.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionIntake cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionIntake.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionIntakeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
