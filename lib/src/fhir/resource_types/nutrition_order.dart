import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [NutritionOrder] /// A request to supply a diet, formula feeding (enteral) or oral nutritional
/// supplement to a patient/resident.
class NutritionOrder extends DomainResource {
  NutritionOrder({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.instantiates,
    this.instantiatesElement,
    required this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    required this.patient,
    this.encounter,
    required this.dateTime,
    this.dateTimeElement,
    this.orderer,
    this.allergyIntolerance,
    this.foodPreferenceModifier,
    this.excludeFoodModifier,
    this.oralDiet,
    this.supplement,
    this.enteralFormula,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.NutritionOrder);

  @override
  String get fhirType => 'NutritionOrder';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this order by the order sender or by the order
  /// receiver.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this NutritionOrder.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// NutritionOrder.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [instantiates] /// The URL pointing to a protocol, guideline, orderset or other definition
  /// that is adhered to in whole or in part by this NutritionOrder.
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;

  /// [status] /// The workflow status of the nutrition order/request.
  final RequestStatus status;
  final Element? statusElement;

  /// [intent] /// Indicates the level of authority/intentionality associated with the
  /// NutrionOrder and where the request fits into the workflow chain.
  final RequestIntent intent;
  final Element? intentElement;

  /// [patient] /// The person (patient) who needs the nutrition order for an oral diet,
  /// nutritional supplement and/or enteral or formula feeding.
  final Reference patient;

  /// [encounter] /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  final Reference? encounter;

  /// [dateTime] /// The date and time that this nutrition order was requested.
  final FhirDateTime dateTime;
  final Element? dateTimeElement;

  /// [orderer] /// The practitioner that holds legal responsibility for ordering the diet,
  /// nutritional supplement, or formula feedings.
  final Reference? orderer;

  /// [allergyIntolerance] /// A link to a record of allergies or intolerances which should be included in
  /// the nutrition order.
  final List<Reference>? allergyIntolerance;

  /// [foodPreferenceModifier] /// This modifier is used to convey order-specific modifiers about the type of
  /// food that should be given. These can be derived from patient allergies,
  /// intolerances, or preferences such as Halal, Vegan or Kosher. This modifier
  /// applies to the entire nutrition order inclusive of the oral diet,
  /// nutritional supplements and enteral formula feedings.
  final List<CodeableConcept>? foodPreferenceModifier;

  /// [excludeFoodModifier] /// This modifier is used to convey Order-specific modifier about the type of
  /// oral food or oral fluids that should not be given. These can be derived
  /// from patient allergies, intolerances, or preferences such as No Red Meat,
  /// No Soy or No Wheat or Gluten-Free. While it should not be necessary to
  /// repeat allergy or intolerance information captured in the referenced
  /// AllergyIntolerance resource in the excludeFoodModifier, this element may be
  /// used to convey additional specificity related to foods that should be
  /// eliminated from the patient’s diet for any reason. This modifier applies to
  /// the entire nutrition order inclusive of the oral diet, nutritional
  /// supplements and enteral formula feedings.
  final List<CodeableConcept>? excludeFoodModifier;

  /// [oralDiet] /// Diet given orally in contrast to enteral (tube) feeding.
  final NutritionOrderOralDiet? oralDiet;

  /// [supplement] /// Oral nutritional products given in order to add further nutritional value
  /// to the patient's diet.
  final List<NutritionOrderSupplement>? supplement;

  /// [enteralFormula] /// Feeding provided through the gastrointestinal tract via a tube, catheter,
  /// or stoma that delivers nutrition distal to the oral cavity.
  final NutritionOrderEnteralFormula? enteralFormula;

  /// [note] /// Comments made about the {{title}} by the requester, performer, subject or
  /// other participants.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.value).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.value).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiates != null && instantiates!.isNotEmpty) {
      json['instantiates'] = instantiates!.map((FhirUri v) => v.value).toList();
    }
    if (instantiatesElement != null && instantiatesElement!.isNotEmpty) {
      json['_instantiates'] =
          instantiatesElement!.map((Element v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['intent'] = intent.toJson();
    json['patient'] = patient.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    json['dateTime'] = dateTime.value;
    if (dateTimeElement != null) {
      json['_dateTime'] = dateTimeElement!.toJson();
    }
    if (orderer != null) {
      json['orderer'] = orderer!.toJson();
    }
    if (allergyIntolerance != null && allergyIntolerance!.isNotEmpty) {
      json['allergyIntolerance'] = allergyIntolerance!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (foodPreferenceModifier != null && foodPreferenceModifier!.isNotEmpty) {
      json['foodPreferenceModifier'] = foodPreferenceModifier!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (excludeFoodModifier != null && excludeFoodModifier!.isNotEmpty) {
      json['excludeFoodModifier'] = excludeFoodModifier!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (oralDiet != null) {
      json['oralDiet'] = oralDiet!.toJson();
    }
    if (supplement != null && supplement!.isNotEmpty) {
      json['supplement'] = supplement!
          .map<dynamic>((NutritionOrderSupplement v) => v.toJson())
          .toList();
    }
    if (enteralFormula != null) {
      json['enteralFormula'] = enteralFormula!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory NutritionOrder.fromJson(Map<String, dynamic> json) {
    return NutritionOrder(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiates: json['instantiates'] != null
          ? (json['instantiates'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesElement: json['_instantiates'] != null
          ? (json['_instantiates'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: RequestStatus.fromJson(json['status'] as Map<String, dynamic>),
      intent: RequestIntent.fromJson(json['intent'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      dateTime: FhirDateTime(json['dateTime']),
      dateTimeElement:
          Element.fromJson(json['_dateTime'] as Map<String, dynamic>),
      orderer: json['orderer'] != null
          ? Reference.fromJson(json['orderer'] as Map<String, dynamic>)
          : null,
      allergyIntolerance: json['allergyIntolerance'] != null
          ? (json['allergyIntolerance'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      foodPreferenceModifier: json['foodPreferenceModifier'] != null
          ? (json['foodPreferenceModifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      excludeFoodModifier: json['excludeFoodModifier'] != null
          ? (json['excludeFoodModifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      oralDiet: json['oralDiet'] != null
          ? NutritionOrderOralDiet.fromJson(
              json['oralDiet'] as Map<String, dynamic>)
          : null,
      supplement: json['supplement'] != null
          ? (json['supplement'] as List<dynamic>)
              .map<NutritionOrderSupplement>((dynamic v) =>
                  NutritionOrderSupplement.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      enteralFormula: json['enteralFormula'] != null
          ? NutritionOrderEnteralFormula.fromJson(
              json['enteralFormula'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  NutritionOrder clone() => throw UnimplementedError();
  @override
  NutritionOrder copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<FhirUri>? instantiates,
    List<Element>? instantiatesElement,
    RequestStatus? status,
    Element? statusElement,
    RequestIntent? intent,
    Element? intentElement,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateTime,
    Element? dateTimeElement,
    Reference? orderer,
    List<Reference>? allergyIntolerance,
    List<CodeableConcept>? foodPreferenceModifier,
    List<CodeableConcept>? excludeFoodModifier,
    NutritionOrderOralDiet? oralDiet,
    List<NutritionOrderSupplement>? supplement,
    NutritionOrderEnteralFormula? enteralFormula,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      instantiates: instantiates ?? this.instantiates,
      instantiatesElement: instantiatesElement ?? this.instantiatesElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      dateTime: dateTime ?? this.dateTime,
      dateTimeElement: dateTimeElement ?? this.dateTimeElement,
      orderer: orderer ?? this.orderer,
      allergyIntolerance: allergyIntolerance ?? this.allergyIntolerance,
      foodPreferenceModifier:
          foodPreferenceModifier ?? this.foodPreferenceModifier,
      excludeFoodModifier: excludeFoodModifier ?? this.excludeFoodModifier,
      oralDiet: oralDiet ?? this.oralDiet,
      supplement: supplement ?? this.supplement,
      enteralFormula: enteralFormula ?? this.enteralFormula,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrder.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrder cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrder.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionOrderOralDiet] /// Diet given orally in contrast to enteral (tube) feeding.
class NutritionOrderOralDiet extends BackboneElement {
  NutritionOrderOralDiet({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    this.instructionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'NutritionOrderOralDiet';

  @Id()
  int dbId = 0;

  /// [type] /// The kind of diet or dietary restriction such as fiber restricted diet or
  /// diabetic diet.
  final List<CodeableConcept>? type;

  /// [schedule] /// The time period and frequency at which the diet should be given. The diet
  /// should be given for the combination of all schedules if more than one
  /// schedule is present.
  final List<Timing>? schedule;

  /// [nutrient] /// Class that defines the quantity and type of nutrient modifications (for
  /// example carbohydrate, fiber or sodium) required for the oral diet.
  final List<NutritionOrderNutrient>? nutrient;

  /// [texture] /// Class that describes any texture modifications required for the patient to
  /// safely consume various types of solid foods.
  final List<NutritionOrderTexture>? texture;

  /// [fluidConsistencyType] /// The required consistency (e.g. honey-thick, nectar-thick, thin, thickened.)
  /// of liquids or fluids served to the patient.
  final List<CodeableConcept>? fluidConsistencyType;

  /// [instruction] /// Free text or additional instructions or information pertaining to the oral
  /// diet.
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] =
          schedule!.map<dynamic>((Timing v) => v.toJson()).toList();
    }
    if (nutrient != null && nutrient!.isNotEmpty) {
      json['nutrient'] = nutrient!
          .map<dynamic>((NutritionOrderNutrient v) => v.toJson())
          .toList();
    }
    if (texture != null && texture!.isNotEmpty) {
      json['texture'] = texture!
          .map<dynamic>((NutritionOrderTexture v) => v.toJson())
          .toList();
    }
    if (fluidConsistencyType != null && fluidConsistencyType!.isNotEmpty) {
      json['fluidConsistencyType'] = fluidConsistencyType!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (instruction?.value != null) {
      json['instruction'] = instruction!.value;
    }
    if (instructionElement != null) {
      json['_instruction'] = instructionElement!.toJson();
    }
    return json;
  }

  factory NutritionOrderOralDiet.fromJson(Map<String, dynamic> json) {
    return NutritionOrderOralDiet(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      schedule: json['schedule'] != null
          ? (json['schedule'] as List<dynamic>)
              .map<Timing>(
                  (dynamic v) => Timing.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      nutrient: json['nutrient'] != null
          ? (json['nutrient'] as List<dynamic>)
              .map<NutritionOrderNutrient>((dynamic v) =>
                  NutritionOrderNutrient.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      texture: json['texture'] != null
          ? (json['texture'] as List<dynamic>)
              .map<NutritionOrderTexture>((dynamic v) =>
                  NutritionOrderTexture.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      fluidConsistencyType: json['fluidConsistencyType'] != null
          ? (json['fluidConsistencyType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instruction:
          json['instruction'] != null ? FhirString(json['instruction']) : null,
      instructionElement: json['_instruction'] != null
          ? Element.fromJson(json['_instruction'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  NutritionOrderOralDiet clone() => throw UnimplementedError();
  @override
  NutritionOrderOralDiet copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    List<Timing>? schedule,
    List<NutritionOrderNutrient>? nutrient,
    List<NutritionOrderTexture>? texture,
    List<CodeableConcept>? fluidConsistencyType,
    FhirString? instruction,
    Element? instructionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrderOralDiet(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      schedule: schedule ?? this.schedule,
      nutrient: nutrient ?? this.nutrient,
      texture: texture ?? this.texture,
      fluidConsistencyType: fluidConsistencyType ?? this.fluidConsistencyType,
      instruction: instruction ?? this.instruction,
      instructionElement: instructionElement ?? this.instructionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrderOralDiet.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderOralDiet.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrderOralDiet.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrderOralDiet cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrderOralDiet.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderOralDiet.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionOrderNutrient] /// Class that defines the quantity and type of nutrient modifications (for
/// example carbohydrate, fiber or sodium) required for the oral diet.
class NutritionOrderNutrient extends BackboneElement {
  NutritionOrderNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'NutritionOrderNutrient';

  @Id()
  int dbId = 0;

  /// [modifier] /// The nutrient that is being modified such as carbohydrate or sodium.
  final CodeableConcept? modifier;

  /// [amount] /// The quantity of the specified nutrient to include in diet.
  final Quantity? amount;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (modifier != null) {
      json['modifier'] = modifier!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    return json;
  }

  factory NutritionOrderNutrient.fromJson(Map<String, dynamic> json) {
    return NutritionOrderNutrient(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifier: json['modifier'] != null
          ? CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Quantity.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  NutritionOrderNutrient clone() => throw UnimplementedError();
  @override
  NutritionOrderNutrient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    Quantity? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrderNutrient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrderNutrient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderNutrient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrderNutrient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrderNutrient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrderNutrient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderNutrient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionOrderTexture] /// Class that describes any texture modifications required for the patient to
/// safely consume various types of solid foods.
class NutritionOrderTexture extends BackboneElement {
  NutritionOrderTexture({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.foodType,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'NutritionOrderTexture';

  @Id()
  int dbId = 0;

  /// [modifier] /// Any texture modifications (for solid foods) that should be made, e.g. easy
  /// to chew, chopped, ground, and pureed.
  final CodeableConcept? modifier;

  /// [foodType] /// The food type(s) (e.g. meats, all foods) that the texture modification
  /// applies to. This could be all foods types.
  final CodeableConcept? foodType;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (modifier != null) {
      json['modifier'] = modifier!.toJson();
    }
    if (foodType != null) {
      json['foodType'] = foodType!.toJson();
    }
    return json;
  }

  factory NutritionOrderTexture.fromJson(Map<String, dynamic> json) {
    return NutritionOrderTexture(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifier: json['modifier'] != null
          ? CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>)
          : null,
      foodType: json['foodType'] != null
          ? CodeableConcept.fromJson(json['foodType'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  NutritionOrderTexture clone() => throw UnimplementedError();
  @override
  NutritionOrderTexture copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    CodeableConcept? foodType,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrderTexture(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      foodType: foodType ?? this.foodType,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrderTexture.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderTexture.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrderTexture.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrderTexture cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrderTexture.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderTexture.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionOrderSupplement] /// Oral nutritional products given in order to add further nutritional value
/// to the patient's diet.
class NutritionOrderSupplement extends BackboneElement {
  NutritionOrderSupplement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.productName,
    this.productNameElement,
    this.schedule,
    this.quantity,
    this.instruction,
    this.instructionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'NutritionOrderSupplement';

  @Id()
  int dbId = 0;

  /// [type] /// The kind of nutritional supplement product required such as a high protein
  /// or pediatric clear liquid supplement.
  final CodeableConcept? type;

  /// [productName] /// The product or brand name of the nutritional supplement such as "Acme
  /// Protein Shake".
  final FhirString? productName;
  final Element? productNameElement;

  /// [schedule] /// The time period and frequency at which the supplement(s) should be given.
  /// The supplement should be given for the combination of all schedules if more
  /// than one schedule is present.
  final List<Timing>? schedule;

  /// [quantity] /// The amount of the nutritional supplement to be given.
  final Quantity? quantity;

  /// [instruction] /// Free text or additional instructions or information pertaining to the oral
  /// supplement.
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (productName?.value != null) {
      json['productName'] = productName!.value;
    }
    if (productNameElement != null) {
      json['_productName'] = productNameElement!.toJson();
    }
    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] =
          schedule!.map<dynamic>((Timing v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (instruction?.value != null) {
      json['instruction'] = instruction!.value;
    }
    if (instructionElement != null) {
      json['_instruction'] = instructionElement!.toJson();
    }
    return json;
  }

  factory NutritionOrderSupplement.fromJson(Map<String, dynamic> json) {
    return NutritionOrderSupplement(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      productName:
          json['productName'] != null ? FhirString(json['productName']) : null,
      productNameElement: json['_productName'] != null
          ? Element.fromJson(json['_productName'] as Map<String, dynamic>)
          : null,
      schedule: json['schedule'] != null
          ? (json['schedule'] as List<dynamic>)
              .map<Timing>(
                  (dynamic v) => Timing.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      instruction:
          json['instruction'] != null ? FhirString(json['instruction']) : null,
      instructionElement: json['_instruction'] != null
          ? Element.fromJson(json['_instruction'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  NutritionOrderSupplement clone() => throw UnimplementedError();
  @override
  NutritionOrderSupplement copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? productName,
    Element? productNameElement,
    List<Timing>? schedule,
    Quantity? quantity,
    FhirString? instruction,
    Element? instructionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrderSupplement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      productName: productName ?? this.productName,
      productNameElement: productNameElement ?? this.productNameElement,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      instruction: instruction ?? this.instruction,
      instructionElement: instructionElement ?? this.instructionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrderSupplement.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderSupplement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrderSupplement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrderSupplement cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrderSupplement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderSupplement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionOrderEnteralFormula] /// Feeding provided through the gastrointestinal tract via a tube, catheter,
/// or stoma that delivers nutrition distal to the oral cavity.
class NutritionOrderEnteralFormula extends BackboneElement {
  NutritionOrderEnteralFormula({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.baseFormulaProductNameElement,
    this.additiveType,
    this.additiveProductName,
    this.additiveProductNameElement,
    this.caloricDensity,
    this.routeofAdministration,
    this.administration,
    this.maxVolumeToDeliver,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'NutritionOrderEnteralFormula';

  @Id()
  int dbId = 0;

  /// [baseFormulaType] /// The type of enteral or infant formula such as an adult standard formula
  /// with fiber or a soy-based infant formula.
  final CodeableConcept? baseFormulaType;

  /// [baseFormulaProductName] /// The product or brand name of the enteral or infant formula product such as
  /// "ACME Adult Standard Formula".
  final FhirString? baseFormulaProductName;
  final Element? baseFormulaProductNameElement;

  /// [additiveType] /// Indicates the type of modular component such as protein, carbohydrate, fat
  /// or fiber to be provided in addition to or mixed with the base formula.
  final CodeableConcept? additiveType;

  /// [additiveProductName] /// The product or brand name of the type of modular component to be added to
  /// the formula.
  final FhirString? additiveProductName;
  final Element? additiveProductNameElement;

  /// [caloricDensity] /// The amount of energy (calories) that the formula should provide per
  /// specified volume, typically per mL or fluid oz. For example, an infant may
  /// require a formula that provides 24 calories per fluid ounce or an adult may
  /// require an enteral formula that provides 1.5 calorie/mL.
  final Quantity? caloricDensity;

  /// [routeofAdministration] /// The route or physiological path of administration into the patient's
  /// gastrointestinal tract for purposes of providing the formula feeding, e.g.
  /// nasogastric tube.
  final CodeableConcept? routeofAdministration;

  /// [administration] /// Formula administration instructions as structured data. This repeating
  /// structure allows for changing the administration rate or volume over time
  /// for both bolus and continuous feeding. An example of this would be an
  /// instruction to increase the rate of continuous feeding every 2 hours.
  final List<NutritionOrderAdministration>? administration;

  /// [maxVolumeToDeliver] /// The maximum total quantity of formula that may be administered to a subject
  /// over the period of time, e.g. 1440 mL over 24 hours.
  final Quantity? maxVolumeToDeliver;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (baseFormulaType != null) {
      json['baseFormulaType'] = baseFormulaType!.toJson();
    }
    if (baseFormulaProductName?.value != null) {
      json['baseFormulaProductName'] = baseFormulaProductName!.value;
    }
    if (baseFormulaProductNameElement != null) {
      json['_baseFormulaProductName'] = baseFormulaProductNameElement!.toJson();
    }
    if (additiveType != null) {
      json['additiveType'] = additiveType!.toJson();
    }
    if (additiveProductName?.value != null) {
      json['additiveProductName'] = additiveProductName!.value;
    }
    if (additiveProductNameElement != null) {
      json['_additiveProductName'] = additiveProductNameElement!.toJson();
    }
    if (caloricDensity != null) {
      json['caloricDensity'] = caloricDensity!.toJson();
    }
    if (routeofAdministration != null) {
      json['routeofAdministration'] = routeofAdministration!.toJson();
    }
    if (administration != null && administration!.isNotEmpty) {
      json['administration'] = administration!
          .map<dynamic>((NutritionOrderAdministration v) => v.toJson())
          .toList();
    }
    if (maxVolumeToDeliver != null) {
      json['maxVolumeToDeliver'] = maxVolumeToDeliver!.toJson();
    }
    return json;
  }

  factory NutritionOrderEnteralFormula.fromJson(Map<String, dynamic> json) {
    return NutritionOrderEnteralFormula(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      baseFormulaType: json['baseFormulaType'] != null
          ? CodeableConcept.fromJson(
              json['baseFormulaType'] as Map<String, dynamic>)
          : null,
      baseFormulaProductName: json['baseFormulaProductName'] != null
          ? FhirString(json['baseFormulaProductName'])
          : null,
      baseFormulaProductNameElement: json['_baseFormulaProductName'] != null
          ? Element.fromJson(
              json['_baseFormulaProductName'] as Map<String, dynamic>)
          : null,
      additiveType: json['additiveType'] != null
          ? CodeableConcept.fromJson(
              json['additiveType'] as Map<String, dynamic>)
          : null,
      additiveProductName: json['additiveProductName'] != null
          ? FhirString(json['additiveProductName'])
          : null,
      additiveProductNameElement: json['_additiveProductName'] != null
          ? Element.fromJson(
              json['_additiveProductName'] as Map<String, dynamic>)
          : null,
      caloricDensity: json['caloricDensity'] != null
          ? Quantity.fromJson(json['caloricDensity'] as Map<String, dynamic>)
          : null,
      routeofAdministration: json['routeofAdministration'] != null
          ? CodeableConcept.fromJson(
              json['routeofAdministration'] as Map<String, dynamic>)
          : null,
      administration: json['administration'] != null
          ? (json['administration'] as List<dynamic>)
              .map<NutritionOrderAdministration>((dynamic v) =>
                  NutritionOrderAdministration.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      maxVolumeToDeliver: json['maxVolumeToDeliver'] != null
          ? Quantity.fromJson(
              json['maxVolumeToDeliver'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  NutritionOrderEnteralFormula clone() => throw UnimplementedError();
  @override
  NutritionOrderEnteralFormula copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? baseFormulaType,
    FhirString? baseFormulaProductName,
    Element? baseFormulaProductNameElement,
    CodeableConcept? additiveType,
    FhirString? additiveProductName,
    Element? additiveProductNameElement,
    Quantity? caloricDensity,
    CodeableConcept? routeofAdministration,
    List<NutritionOrderAdministration>? administration,
    Quantity? maxVolumeToDeliver,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrderEnteralFormula(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      baseFormulaType: baseFormulaType ?? this.baseFormulaType,
      baseFormulaProductName:
          baseFormulaProductName ?? this.baseFormulaProductName,
      baseFormulaProductNameElement:
          baseFormulaProductNameElement ?? this.baseFormulaProductNameElement,
      additiveType: additiveType ?? this.additiveType,
      additiveProductName: additiveProductName ?? this.additiveProductName,
      additiveProductNameElement:
          additiveProductNameElement ?? this.additiveProductNameElement,
      caloricDensity: caloricDensity ?? this.caloricDensity,
      routeofAdministration:
          routeofAdministration ?? this.routeofAdministration,
      administration: administration ?? this.administration,
      maxVolumeToDeliver: maxVolumeToDeliver ?? this.maxVolumeToDeliver,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrderEnteralFormula.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderEnteralFormula.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrderEnteralFormula.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrderEnteralFormula cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrderEnteralFormula.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderEnteralFormula.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionOrderAdministration] /// Formula administration instructions as structured data. This repeating
/// structure allows for changing the administration rate or volume over time
/// for both bolus and continuous feeding. An example of this would be an
/// instruction to increase the rate of continuous feeding every 2 hours.
class NutritionOrderAdministration extends BackboneElement {
  NutritionOrderAdministration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
    this.administrationInstruction,
    this.administrationInstructionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'NutritionOrderAdministration';

  @Id()
  int dbId = 0;

  /// [schedule] /// The time period and frequency at which the enteral formula should be
  /// delivered to the patient.
  final Timing? schedule;

  /// [quantity] /// The volume of formula to provide to the patient per the specified
  /// administration schedule.
  final Quantity? quantity;

  /// [rateQuantity] /// The rate of administration of formula via a feeding pump, e.g. 60 mL per
  /// hour, according to the specified schedule.
  final Quantity? rateQuantity;

  /// [rateRatio] /// The rate of administration of formula via a feeding pump, e.g. 60 mL per
  /// hour, according to the specified schedule.
  final Ratio? rateRatio;

  /// [administrationInstruction] /// Free text formula administration, feeding instructions or additional
  /// instructions or information.
  final FhirString? administrationInstruction;
  final Element? administrationInstructionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (schedule != null) {
      json['schedule'] = schedule!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (rateQuantity != null) {
      json['rateQuantity'] = rateQuantity!.toJson();
    }
    if (rateRatio != null) {
      json['rateRatio'] = rateRatio!.toJson();
    }
    if (administrationInstruction?.value != null) {
      json['administrationInstruction'] = administrationInstruction!.value;
    }
    if (administrationInstructionElement != null) {
      json['_administrationInstruction'] =
          administrationInstructionElement!.toJson();
    }
    return json;
  }

  factory NutritionOrderAdministration.fromJson(Map<String, dynamic> json) {
    return NutritionOrderAdministration(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      schedule: json['schedule'] != null
          ? Timing.fromJson(json['schedule'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>)
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>)
          : null,
      administrationInstruction: json['administrationInstruction'] != null
          ? FhirString(json['administrationInstruction'])
          : null,
      administrationInstructionElement:
          json['_administrationInstruction'] != null
              ? Element.fromJson(
                  json['_administrationInstruction'] as Map<String, dynamic>)
              : null,
    );
  }
  @override
  NutritionOrderAdministration clone() => throw UnimplementedError();
  @override
  NutritionOrderAdministration copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Timing? schedule,
    Quantity? quantity,
    Quantity? rateQuantity,
    Ratio? rateRatio,
    FhirString? administrationInstruction,
    Element? administrationInstructionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionOrderAdministration(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      rateRatio: rateRatio ?? this.rateRatio,
      administrationInstruction:
          administrationInstruction ?? this.administrationInstruction,
      administrationInstructionElement: administrationInstructionElement ??
          this.administrationInstructionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionOrderAdministration.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionOrderAdministration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionOrderAdministration cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionOrderAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
