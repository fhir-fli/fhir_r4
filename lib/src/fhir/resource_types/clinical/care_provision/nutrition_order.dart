// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'nutrition_order.freezed.dart';
part 'nutrition_order.g.dart';

/// [NutritionOrder] A request to supply a diet, formula feeding (enteral) or
@freezed
class NutritionOrder with _$NutritionOrder implements DomainResource {
  /// [NutritionOrder] A request to supply a diet, formula feeding (enteral) or
  const NutritionOrder._();

  /// [NutritionOrder] A request to supply a diet, formula feeding (enteral) or
  ///  oral nutritional supplement to a patient/resident.
  ///
  /// [resourceType] This is a NutritionOrder resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Identifiers assigned to this order by the order sender or by
  ///  the order receiver.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this NutritionOrder.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this NutritionOrder.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [instantiates] The URL pointing to a protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  ///  NutritionOrder.
  ///
  /// [instantiatesElement] Extensions for instantiates
  ///
  /// [status] The workflow status of the nutrition order/request.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [intent] Indicates the level of authority/intentionality associated with
  ///  the NutrionOrder and where the request fits into the workflow chain.
  ///
  /// [intentElement] Extensions for intent
  ///
  /// [patient] The person (patient) who needs the nutrition order for an oral
  ///  diet, nutritional supplement and/or enteral or formula feeding.
  ///
  /// [encounter] An encounter that provides additional information about the
  ///  healthcare context in which this request is made.
  ///
  /// [dateTime] The date and time that this nutrition order was requested.
  ///
  /// [dateTimeElement] Extensions for dateTime
  ///
  /// [orderer] The practitioner that holds legal responsibility for ordering
  ///  the diet, nutritional supplement, or formula feedings.
  ///
  /// [allergyIntolerance] A link to a record of allergies or intolerances
  ///  which should be included in the nutrition order.
  ///
  /// [foodPreferenceModifier] This modifier is used to convey order-specific
  /// modifiers about the type of food that should be given. These can be
  /// derived from patient allergies, intolerances, or preferences such as
  /// Halal, Vegan or Kosher. This modifier applies to the entire nutrition
  /// order inclusive of the oral diet, nutritional supplements and enteral
  ///  formula feedings.
  ///
  /// [excludeFoodModifier] This modifier is used to convey Order-specific
  /// modifier about the type of oral food or oral fluids that should not be
  /// given. These can be derived from patient allergies, intolerances, or
  /// preferences such as No Red Meat, No Soy or No Wheat or  Gluten-Free.
  /// While it should not be necessary to repeat allergy or intolerance
  /// information captured in the referenced AllergyIntolerance resource in the
  /// excludeFoodModifier, this element may be used to convey additional
  /// specificity related to foods that should be eliminated from the patient’s
  /// diet for any reason.  This modifier applies to the entire nutrition order
  /// inclusive of the oral diet, nutritional supplements and enteral formula
  ///  feedings.
  ///
  /// [oralDiet] Diet given orally in contrast to enteral (tube) feeding.
  ///
  /// [supplement] Oral nutritional products given in order to add further
  ///  nutritional value to the patient's diet.
  ///
  /// [enteralFormula] Feeding provided through the gastrointestinal tract via
  /// a tube, catheter, or stoma that delivers nutrition distal to the oral
  ///  cavity.
  ///
  /// [note] Comments made about the {{title}} by the requester, performer,
  ///  subject or other participants.
  const factory NutritionOrder({
    @Default(R4ResourceType.NutritionOrder)
    @JsonKey(unknownEnumValue: R4ResourceType.NutritionOrder)

    /// [resourceType] This is a NutritionOrder resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifiers assigned to this order by the order sender or by
    ///  the order receiver.
    List<Identifier>? identifier,

    /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this NutritionOrder.
    List<FhirCanonical>? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an externally maintained protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this NutritionOrder.
    List<FhirUri>? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri')
    List<PrimitiveElement>? instantiatesUriElement,

    /// [instantiates] The URL pointing to a protocol, guideline, orderset or
    /// other definition that is adhered to in whole or in part by this
    ///  NutritionOrder.
    List<FhirUri>? instantiates,

    /// [instantiatesElement] Extensions for instantiates
    @JsonKey(name: '_instantiates') List<PrimitiveElement>? instantiatesElement,

    /// [status] The workflow status of the nutrition order/request.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [intent] Indicates the level of authority/intentionality associated with
    ///  the NutrionOrder and where the request fits into the workflow chain.
    FhirCode? intent,

    /// [intentElement] Extensions for intent
    @JsonKey(name: '_intent') PrimitiveElement? intentElement,

    /// [patient] The person (patient) who needs the nutrition order for an oral
    ///  diet, nutritional supplement and/or enteral or formula feeding.
    required Reference patient,

    /// [encounter] An encounter that provides additional information about the
    ///  healthcare context in which this request is made.
    Reference? encounter,

    /// [dateTime] The date and time that this nutrition order was requested.
    FhirDateTime? dateTime,

    /// [dateTimeElement] Extensions for dateTime
    @JsonKey(name: '_dateTime') PrimitiveElement? dateTimeElement,

    /// [orderer] The practitioner that holds legal responsibility for ordering
    ///  the diet, nutritional supplement, or formula feedings.
    Reference? orderer,

    /// [allergyIntolerance] A link to a record of allergies or intolerances
    ///  which should be included in the nutrition order.
    List<Reference>? allergyIntolerance,

    /// [foodPreferenceModifier] This modifier is used to convey order-specific
    /// modifiers about the type of food that should be given. These can be
    /// derived from patient allergies, intolerances, or preferences such as
    /// Halal, Vegan or Kosher. This modifier applies to the entire nutrition
    /// order inclusive of the oral diet, nutritional supplements and enteral
    ///  formula feedings.
    List<CodeableConcept>? foodPreferenceModifier,

    /// [excludeFoodModifier] This modifier is used to convey Order-specific
    /// modifier about the type of oral food or oral fluids that should not be
    /// given. These can be derived from patient allergies, intolerances, or
    /// preferences such as No Red Meat, No Soy or No Wheat or  Gluten-Free.
    /// While it should not be necessary to repeat allergy or intolerance
    /// information captured in the referenced AllergyIntolerance resource in the
    /// excludeFoodModifier, this element may be used to convey additional
    /// specificity related to foods that should be eliminated from the patient’s
    /// diet for any reason.  This modifier applies to the entire nutrition order
    /// inclusive of the oral diet, nutritional supplements and enteral formula
    ///  feedings.
    List<CodeableConcept>? excludeFoodModifier,

    /// [oralDiet] Diet given orally in contrast to enteral (tube) feeding.
    NutritionOrderOralDiet? oralDiet,

    /// [supplement] Oral nutritional products given in order to add further
    ///  nutritional value to the patient's diet.
    List<NutritionOrderSupplement>? supplement,

    /// [enteralFormula] Feeding provided through the gastrointestinal tract via
    /// a tube, catheter, or stoma that delivers nutrition distal to the oral
    ///  cavity.
    NutritionOrderEnteralFormula? enteralFormula,

    /// [note] Comments made about the {{title}} by the requester, performer,
    ///  subject or other participants.
    List<Annotation>? note,
  }) = _NutritionOrder;

  @override
  String get fhirType => 'NutritionOrder';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrder.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrder.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrder], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrder.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [NutritionOrderOralDiet] A request to supply a diet, formula feeding
@freezed

/// [NutritionOrderOralDiet] A request to supply a diet, formula feeding
@freezed
class NutritionOrderOralDiet
    with _$NutritionOrderOralDiet
    implements BackboneElement {
  /// [NutritionOrderOralDiet] A request to supply a diet, formula feeding
  const NutritionOrderOralDiet._();

  /// [NutritionOrderOralDiet] A request to supply a diet, formula feeding
  ///  (enteral) or oral nutritional supplement to a patient/resident.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The kind of diet or dietary restriction such as fiber restricted
  ///  diet or diabetic diet.
  ///
  /// [schedule] The time period and frequency at which the diet should be
  /// given.  The diet should be given for the combination of all schedules if
  ///  more than one schedule is present.
  ///
  /// [nutrient] Class that defines the quantity and type of nutrient
  /// modifications (for example carbohydrate, fiber or sodium) required for the
  ///  oral diet.
  ///
  /// [texture] Class that describes any texture modifications required for the
  ///  patient to safely consume various types of solid foods.
  ///
  /// [fluidConsistencyType] The required consistency (e.g. honey-thick,
  /// nectar-thick, thin, thickened.) of liquids or fluids served to the
  ///  patient.
  ///
  /// [instruction] Free text or additional instructions or information
  ///  pertaining to the oral diet.
  ///
  /// [instructionElement] Extensions for instruction
  const factory NutritionOrderOralDiet({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The kind of diet or dietary restriction such as fiber restricted
    ///  diet or diabetic diet.
    List<CodeableConcept>? type,

    /// [schedule] The time period and frequency at which the diet should be
    /// given.  The diet should be given for the combination of all schedules if
    ///  more than one schedule is present.
    List<Timing>? schedule,

    /// [nutrient] Class that defines the quantity and type of nutrient
    /// modifications (for example carbohydrate, fiber or sodium) required for the
    ///  oral diet.
    List<NutritionOrderNutrient>? nutrient,

    /// [texture] Class that describes any texture modifications required for the
    ///  patient to safely consume various types of solid foods.
    List<NutritionOrderTexture>? texture,

    /// [fluidConsistencyType] The required consistency (e.g. honey-thick,
    /// nectar-thick, thin, thickened.) of liquids or fluids served to the
    ///  patient.
    List<CodeableConcept>? fluidConsistencyType,

    /// [instruction] Free text or additional instructions or information
    ///  pertaining to the oral diet.
    String? instruction,

    /// [instructionElement] Extensions for instruction
    @JsonKey(name: '_instruction') PrimitiveElement? instructionElement,
  }) = _NutritionOrderOralDiet;

  @override
  String get fhirType => 'NutritionOrderOralDiet';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrderOralDiet.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderOralDiet.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrderOralDiet.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrderOralDiet cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderOralDiet.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderOralDietFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrderOralDiet], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrderOralDiet.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderOralDietFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [NutritionOrderNutrient] A request to supply a diet, formula feeding
@freezed

/// [NutritionOrderNutrient] A request to supply a diet, formula feeding
@freezed
class NutritionOrderNutrient
    with _$NutritionOrderNutrient
    implements BackboneElement {
  /// [NutritionOrderNutrient] A request to supply a diet, formula feeding
  const NutritionOrderNutrient._();

  /// [NutritionOrderNutrient] A request to supply a diet, formula feeding
  ///  (enteral) or oral nutritional supplement to a patient/resident.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [modifier] The nutrient that is being modified such as carbohydrate or
  ///  sodium.
  ///
  /// [amount] The quantity of the specified nutrient to include in diet.
  const factory NutritionOrderNutrient({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [modifier] The nutrient that is being modified such as carbohydrate or
    ///  sodium.
    CodeableConcept? modifier,

    /// [amount] The quantity of the specified nutrient to include in diet.
    Quantity? amount,
  }) = _NutritionOrderNutrient;

  @override
  String get fhirType => 'NutritionOrderNutrient';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrderNutrient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderNutrient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrderNutrient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrderNutrient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderNutrient.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderNutrientFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrderNutrient], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrderNutrient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderNutrientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [NutritionOrderTexture] A request to supply a diet, formula feeding
@freezed

/// [NutritionOrderTexture] A request to supply a diet, formula feeding
@freezed
class NutritionOrderTexture
    with _$NutritionOrderTexture
    implements BackboneElement {
  /// [NutritionOrderTexture] A request to supply a diet, formula feeding
  const NutritionOrderTexture._();

  /// [NutritionOrderTexture] A request to supply a diet, formula feeding
  ///  (enteral) or oral nutritional supplement to a patient/resident.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [modifier] Any texture modifications (for solid foods) that should be
  ///  made, e.g. easy to chew, chopped, ground, and pureed.
  ///
  /// [foodType] The food type(s) (e.g. meats, all foods)  that the texture
  ///  modification applies to.  This could be all foods types.
  const factory NutritionOrderTexture({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [modifier] Any texture modifications (for solid foods) that should be
    ///  made, e.g. easy to chew, chopped, ground, and pureed.
    CodeableConcept? modifier,

    /// [foodType] The food type(s) (e.g. meats, all foods)  that the texture
    ///  modification applies to.  This could be all foods types.
    CodeableConcept? foodType,
  }) = _NutritionOrderTexture;

  @override
  String get fhirType => 'NutritionOrderTexture';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrderTexture.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderTexture.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrderTexture.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrderTexture cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderTexture.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderTextureFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrderTexture], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrderTexture.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderTextureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [NutritionOrderSupplement] A request to supply a diet, formula feeding
@freezed

/// [NutritionOrderSupplement] A request to supply a diet, formula feeding
@freezed
class NutritionOrderSupplement
    with _$NutritionOrderSupplement
    implements BackboneElement {
  /// [NutritionOrderSupplement] A request to supply a diet, formula feeding
  const NutritionOrderSupplement._();

  /// [NutritionOrderSupplement] A request to supply a diet, formula feeding
  ///  (enteral) or oral nutritional supplement to a patient/resident.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The kind of nutritional supplement product required such as a high
  ///  protein or pediatric clear liquid supplement.
  ///
  /// [productName] The product or brand name of the nutritional supplement
  ///  such as "Acme Protein Shake".
  ///
  /// [productNameElement] Extensions for productName
  ///
  /// [schedule] The time period and frequency at which the supplement(s)
  /// should be given.  The supplement should be given for the combination of
  ///  all schedules if more than one schedule is present.
  ///
  /// [quantity] The amount of the nutritional supplement to be given.
  ///
  /// [instruction] Free text or additional instructions or information
  ///  pertaining to the oral supplement.
  ///
  /// [instructionElement] Extensions for instruction
  const factory NutritionOrderSupplement({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The kind of nutritional supplement product required such as a high
    ///  protein or pediatric clear liquid supplement.
    CodeableConcept? type,

    /// [productName] The product or brand name of the nutritional supplement
    ///  such as "Acme Protein Shake".
    String? productName,

    /// [productNameElement] Extensions for productName
    @JsonKey(name: '_productName') PrimitiveElement? productNameElement,

    /// [schedule] The time period and frequency at which the supplement(s)
    /// should be given.  The supplement should be given for the combination of
    ///  all schedules if more than one schedule is present.
    List<Timing>? schedule,

    /// [quantity] The amount of the nutritional supplement to be given.
    Quantity? quantity,

    /// [instruction] Free text or additional instructions or information
    ///  pertaining to the oral supplement.
    String? instruction,

    /// [instructionElement] Extensions for instruction
    @JsonKey(name: '_instruction') PrimitiveElement? instructionElement,
  }) = _NutritionOrderSupplement;

  @override
  String get fhirType => 'NutritionOrderSupplement';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrderSupplement.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderSupplement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrderSupplement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrderSupplement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSupplement.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderSupplementFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrderSupplement], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrderSupplement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderSupplementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [NutritionOrderEnteralFormula] A request to supply a diet, formula
@freezed

/// [NutritionOrderEnteralFormula] A request to supply a diet, formula
@freezed
class NutritionOrderEnteralFormula
    with _$NutritionOrderEnteralFormula
    implements BackboneElement {
  /// [NutritionOrderEnteralFormula] A request to supply a diet, formula
  const NutritionOrderEnteralFormula._();

  /// [NutritionOrderEnteralFormula] A request to supply a diet, formula
  ///  feeding (enteral) or oral nutritional supplement to a patient/resident.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [baseFormulaType] The type of enteral or infant formula such as an adult
  ///  standard formula with fiber or a soy-based infant formula.
  ///
  /// [baseFormulaProductName] The product or brand name of the enteral or
  ///  infant formula product such as "ACME Adult Standard Formula".
  ///
  /// [baseFormulaProductNameElement] Extensions for baseFormulaProductName
  ///
  /// [additiveType] Indicates the type of modular component such as protein,
  /// carbohydrate, fat or fiber to be provided in addition to or mixed with the
  ///  base formula.
  ///
  /// [additiveProductName] The product or brand name of the type of modular
  ///  component to be added to the formula.
  ///
  /// [additiveProductNameElement] Extensions for additiveProductName
  ///
  /// [caloricDensity] The amount of energy (calories) that the formula should
  /// provide per specified volume, typically per mL or fluid oz.  For example,
  /// an infant may require a formula that provides 24 calories per fluid ounce
  ///  or an adult may require an enteral formula that provides 1.5 calorie/mL.
  ///
  /// [routeofAdministration] The route or physiological path of administration
  /// into the patient's gastrointestinal  tract for purposes of providing the
  ///  formula feeding, e.g. nasogastric tube.
  ///
  /// [administration] Formula administration instructions as structured data.
  /// This repeating structure allows for changing the administration rate or
  /// volume over time for both bolus and continuous feeding.  An example of
  /// this would be an instruction to increase the rate of continuous feeding
  ///  every 2 hours.
  ///
  /// [maxVolumeToDeliver] The maximum total quantity of formula that may be
  /// administered to a subject over the period of time, e.g. 1440 mL over 24
  ///  hours.
  ///
  /// [administrationInstruction] Free text formula administration, feeding
  ///  instructions or additional instructions or information.
  ///
  /// [administrationInstructionElement] Extensions for administrationInstruction
  const factory NutritionOrderEnteralFormula({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [baseFormulaType] The type of enteral or infant formula such as an adult
    ///  standard formula with fiber or a soy-based infant formula.
    CodeableConcept? baseFormulaType,

    /// [baseFormulaProductName] The product or brand name of the enteral or
    ///  infant formula product such as "ACME Adult Standard Formula".
    String? baseFormulaProductName,
    @JsonKey(name: '_baseFormulaProductName')

    /// [baseFormulaProductNameElement] Extensions for baseFormulaProductName
    PrimitiveElement? baseFormulaProductNameElement,

    /// [additiveType] Indicates the type of modular component such as protein,
    /// carbohydrate, fat or fiber to be provided in addition to or mixed with the
    ///  base formula.
    CodeableConcept? additiveType,

    /// [additiveProductName] The product or brand name of the type of modular
    ///  component to be added to the formula.
    String? additiveProductName,

    /// [additiveProductNameElement] Extensions for additiveProductName
    @JsonKey(name: '_additiveProductName')
    PrimitiveElement? additiveProductNameElement,

    /// [caloricDensity] The amount of energy (calories) that the formula should
    /// provide per specified volume, typically per mL or fluid oz.  For example,
    /// an infant may require a formula that provides 24 calories per fluid ounce
    ///  or an adult may require an enteral formula that provides 1.5 calorie/mL.
    Quantity? caloricDensity,

    /// [routeofAdministration] The route or physiological path of administration
    /// into the patient's gastrointestinal  tract for purposes of providing the
    ///  formula feeding, e.g. nasogastric tube.
    CodeableConcept? routeofAdministration,

    /// [administration] Formula administration instructions as structured data.
    /// This repeating structure allows for changing the administration rate or
    /// volume over time for both bolus and continuous feeding.  An example of
    /// this would be an instruction to increase the rate of continuous feeding
    ///  every 2 hours.
    List<NutritionOrderAdministration>? administration,

    /// [maxVolumeToDeliver] The maximum total quantity of formula that may be
    /// administered to a subject over the period of time, e.g. 1440 mL over 24
    ///  hours.
    Quantity? maxVolumeToDeliver,

    /// [administrationInstruction] Free text formula administration, feeding
    ///  instructions or additional instructions or information.
    String? administrationInstruction,
    @JsonKey(name: '_administrationInstruction')

    /// [administrationInstructionElement] Extensions for administrationInstruction
    PrimitiveElement? administrationInstructionElement,
  }) = _NutritionOrderEnteralFormula;

  @override
  String get fhirType => 'NutritionOrderEnteralFormula';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrderEnteralFormula.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderEnteralFormula.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrderEnteralFormula.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrderEnteralFormula cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderEnteralFormula.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderEnteralFormulaFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrderEnteralFormula], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrderEnteralFormula.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderEnteralFormulaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [NutritionOrderAdministration] A request to supply a diet, formula
@freezed

/// [NutritionOrderAdministration] A request to supply a diet, formula
@freezed
class NutritionOrderAdministration
    with _$NutritionOrderAdministration
    implements BackboneElement {
  /// [NutritionOrderAdministration] A request to supply a diet, formula
  const NutritionOrderAdministration._();

  /// [NutritionOrderAdministration] A request to supply a diet, formula
  ///  feeding (enteral) or oral nutritional supplement to a patient/resident.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [schedule] The time period and frequency at which the enteral formula
  ///  should be delivered to the patient.
  ///
  /// [quantity] The volume of formula to provide to the patient per the
  ///  specified administration schedule.
  ///
  /// [rateQuantity] The rate of administration of formula via a feeding pump,
  ///  e.g. 60 mL per hour, according to the specified schedule.
  ///
  /// [rateRatio] The rate of administration of formula via a feeding pump,
  ///  e.g. 60 mL per hour, according to the specified schedule.
  const factory NutritionOrderAdministration({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [schedule] The time period and frequency at which the enteral formula
    ///  should be delivered to the patient.
    Timing? schedule,

    /// [quantity] The volume of formula to provide to the patient per the
    ///  specified administration schedule.
    Quantity? quantity,

    /// [rateQuantity] The rate of administration of formula via a feeding pump,
    ///  e.g. 60 mL per hour, according to the specified schedule.
    Quantity? rateQuantity,

    /// [rateRatio] The rate of administration of formula via a feeding pump,
    ///  e.g. 60 mL per hour, according to the specified schedule.
    Ratio? rateRatio,
  }) = _NutritionOrderAdministration;

  @override
  String get fhirType => 'NutritionOrderAdministration';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory NutritionOrderAdministration.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrderAdministration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrderAdministration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderAdministration.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderAdministrationFromJson(json);

  /// Acts like a constructor, returns a [NutritionOrderAdministration], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory NutritionOrderAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrderAdministrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
