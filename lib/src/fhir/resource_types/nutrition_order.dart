import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [NutritionOrder]
/// A request to supply a diet, formula feeding (enteral) or oral
/// nutritional supplement to a patient/resident.
class NutritionOrder extends DomainResource {
  /// Primary constructor for [NutritionOrder]

  NutritionOrder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.instantiates,
    required this.status,
    required this.intent,
    required this.patient,
    this.encounter,
    required this.dateTime,
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
  }) : super(
          resourceType: R4ResourceType.NutritionOrder,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrder.fromJson(Map<String, dynamic> json) {
    return NutritionOrder(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
          json['instantiatesCanonical'] as List<dynamic>?,
          json['_instantiatesCanonical'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      instantiatesUri: parsePrimitiveList<FhirUri>(
          json['instantiatesUri'] as List<dynamic>?,
          json['_instantiatesUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      instantiates: parsePrimitiveList<FhirUri>(
          json['instantiates'] as List<dynamic>?,
          json['_instantiates'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      status: RequestStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      intent: RequestIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      dateTime: FhirDateTime.fromJson({
        'value': json['dateTime'],
        '_value': json['_dateTime'],
      }),
      orderer: json['orderer'] != null
          ? Reference.fromJson(
              json['orderer'] as Map<String, dynamic>,
            )
          : null,
      allergyIntolerance: json['allergyIntolerance'] != null
          ? (json['allergyIntolerance'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      foodPreferenceModifier: json['foodPreferenceModifier'] != null
          ? (json['foodPreferenceModifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      excludeFoodModifier: json['excludeFoodModifier'] != null
          ? (json['excludeFoodModifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      oralDiet: json['oralDiet'] != null
          ? NutritionOrderOralDiet.fromJson(
              json['oralDiet'] as Map<String, dynamic>,
            )
          : null,
      supplement: json['supplement'] != null
          ? (json['supplement'] as List<dynamic>)
              .map<NutritionOrderSupplement>(
                (v) => NutritionOrderSupplement.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      enteralFormula: json['enteralFormula'] != null
          ? NutritionOrderEnteralFormula.fromJson(
              json['enteralFormula'] as Map<String, dynamic>,
            )
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [NutritionOrder] from a [String]
  /// or [YamlMap] object
  factory NutritionOrder.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('NutritionOrder cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrder.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrder';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifiers assigned to this order by the order sender or by the order
  /// receiver.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// NutritionOrder.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this NutritionOrder.
  final List<FhirUri>? instantiatesUri;

  /// [instantiates]
  /// The URL pointing to a protocol, guideline, orderset or other definition
  /// that is adhered to in whole or in part by this NutritionOrder.
  final List<FhirUri>? instantiates;

  /// [status]
  /// The workflow status of the nutrition order/request.
  final RequestStatus status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// NutrionOrder and where the request fits into the workflow chain.
  final RequestIntent intent;

  /// [patient]
  /// The person (patient) who needs the nutrition order for an oral diet,
  /// nutritional supplement and/or enteral or formula feeding.
  final Reference patient;

  /// [encounter]
  /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  final Reference? encounter;

  /// [dateTime]
  /// The date and time that this nutrition order was requested.
  final FhirDateTime dateTime;

  /// [orderer]
  /// The practitioner that holds legal responsibility for ordering the diet,
  /// nutritional supplement, or formula feedings.
  final Reference? orderer;

  /// [allergyIntolerance]
  /// A link to a record of allergies or intolerances which should be
  /// included in the nutrition order.
  final List<Reference>? allergyIntolerance;

  /// [foodPreferenceModifier]
  /// This modifier is used to convey order-specific modifiers about the type
  /// of food that should be given. These can be derived from patient
  /// allergies, intolerances, or preferences such as Halal, Vegan or Kosher.
  /// This modifier applies to the entire nutrition order inclusive of the
  /// oral diet, nutritional supplements and enteral formula feedings.
  final List<CodeableConcept>? foodPreferenceModifier;

  /// [excludeFoodModifier]
  /// This modifier is used to convey Order-specific modifier about the type
  /// of oral food or oral fluids that should not be given. These can be
  /// derived from patient allergies, intolerances, or preferences such as No
  /// Red Meat, No Soy or No Wheat or Gluten-Free. While it should not be
  /// necessary to repeat allergy or intolerance information captured in the
  /// referenced AllergyIntolerance resource in the excludeFoodModifier, this
  /// element may be used to convey additional specificity related to foods
  /// that should be eliminated from the patient’s diet for any reason. This
  /// modifier applies to the entire nutrition order inclusive of the oral
  /// diet, nutritional supplements and enteral formula feedings.
  final List<CodeableConcept>? excludeFoodModifier;

  /// [oralDiet]
  /// Diet given orally in contrast to enteral (tube) feeding.
  final NutritionOrderOralDiet? oralDiet;

  /// [supplement]
  /// Oral nutritional products given in order to add further nutritional
  /// value to the patient's diet.
  final List<NutritionOrderSupplement>? supplement;

  /// [enteralFormula]
  /// Feeding provided through the gastrointestinal tract via a tube,
  /// catheter, or stoma that delivers nutrition distal to the oral cavity.
  final NutritionOrderEnteralFormula? enteralFormula;

  /// [note]
  /// Comments made about the {{title}} by the requester, performer, subject
  /// or other participants.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.toJson()).toList();
    }
    if (instantiates != null && instantiates!.isNotEmpty) {
      json['instantiates'] =
          instantiates!.map((FhirUri v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['intent'] = intent.toJson();
    json['patient'] = patient.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    json['dateTime'] = dateTime.toJson();
    if (orderer != null) {
      json['orderer'] = orderer!.toJson();
    }
    if (allergyIntolerance != null && allergyIntolerance!.isNotEmpty) {
      json['allergyIntolerance'] =
          allergyIntolerance!.map((Reference v) => v.toJson()).toList();
    }
    if (foodPreferenceModifier != null && foodPreferenceModifier!.isNotEmpty) {
      json['foodPreferenceModifier'] = foodPreferenceModifier!
          .map((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (excludeFoodModifier != null && excludeFoodModifier!.isNotEmpty) {
      json['excludeFoodModifier'] =
          excludeFoodModifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (oralDiet != null) {
      json['oralDiet'] = oralDiet!.toJson();
    }
    if (supplement != null && supplement!.isNotEmpty) {
      json['supplement'] =
          supplement!.map((NutritionOrderSupplement v) => v.toJson()).toList();
    }
    if (enteralFormula != null) {
      json['enteralFormula'] = enteralFormula!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  NutritionOrder clone() => throw UnimplementedError();
  @override
  NutritionOrder copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<FhirUri>? instantiates,
    RequestStatus? status,
    RequestIntent? intent,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateTime,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiates: instantiates ?? this.instantiates,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      dateTime: dateTime ?? this.dateTime,
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
}

/// [NutritionOrderOralDiet]
/// Diet given orally in contrast to enteral (tube) feeding.
class NutritionOrderOralDiet extends BackboneElement {
  /// Primary constructor for [NutritionOrderOralDiet]

  NutritionOrderOralDiet({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderOralDiet.fromJson(Map<String, dynamic> json) {
    return NutritionOrderOralDiet(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      schedule: json['schedule'] != null
          ? (json['schedule'] as List<dynamic>)
              .map<Timing>(
                (v) => Timing.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      nutrient: json['nutrient'] != null
          ? (json['nutrient'] as List<dynamic>)
              .map<NutritionOrderNutrient>(
                (v) => NutritionOrderNutrient.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      texture: json['texture'] != null
          ? (json['texture'] as List<dynamic>)
              .map<NutritionOrderTexture>(
                (v) => NutritionOrderTexture.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      fluidConsistencyType: json['fluidConsistencyType'] != null
          ? (json['fluidConsistencyType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instruction: json['instruction'] != null
          ? FhirString.fromJson({
              'value': json['instruction'],
              '_value': json['_instruction'],
            })
          : null,
    );
  }

  /// Deserialize [NutritionOrderOralDiet] from a [String]
  /// or [YamlMap] object
  factory NutritionOrderOralDiet.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderOralDiet.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrderOralDiet.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NutritionOrderOralDiet cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrderOralDiet]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderOralDiet.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderOralDiet.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderOralDiet';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The kind of diet or dietary restriction such as fiber restricted diet
  /// or diabetic diet.
  final List<CodeableConcept>? type;

  /// [schedule]
  /// The time period and frequency at which the diet should be given. The
  /// diet should be given for the combination of all schedules if more than
  /// one schedule is present.
  final List<Timing>? schedule;

  /// [nutrient]
  /// Class that defines the quantity and type of nutrient modifications (for
  /// example carbohydrate, fiber or sodium) required for the oral diet.
  final List<NutritionOrderNutrient>? nutrient;

  /// [texture]
  /// Class that describes any texture modifications required for the patient
  /// to safely consume various types of solid foods.
  final List<NutritionOrderTexture>? texture;

  /// [fluidConsistencyType]
  /// The required consistency (e.g. honey-thick, nectar-thick, thin,
  /// thickened.) of liquids or fluids served to the patient.
  final List<CodeableConcept>? fluidConsistencyType;

  /// [instruction]
  /// Free text or additional instructions or information pertaining to the
  /// oral diet.
  final FhirString? instruction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] = schedule!.map((Timing v) => v.toJson()).toList();
    }
    if (nutrient != null && nutrient!.isNotEmpty) {
      json['nutrient'] =
          nutrient!.map((NutritionOrderNutrient v) => v.toJson()).toList();
    }
    if (texture != null && texture!.isNotEmpty) {
      json['texture'] =
          texture!.map((NutritionOrderTexture v) => v.toJson()).toList();
    }
    if (fluidConsistencyType != null && fluidConsistencyType!.isNotEmpty) {
      json['fluidConsistencyType'] =
          fluidConsistencyType!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (instruction?.value != null) {
      json['instruction'] = instruction!.toJson();
    }
    return json;
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [NutritionOrderNutrient]
/// Class that defines the quantity and type of nutrient modifications (for
/// example carbohydrate, fiber or sodium) required for the oral diet.
class NutritionOrderNutrient extends BackboneElement {
  /// Primary constructor for [NutritionOrderNutrient]

  NutritionOrderNutrient({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderNutrient.fromJson(Map<String, dynamic> json) {
    return NutritionOrderNutrient(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifier: json['modifier'] != null
          ? CodeableConcept.fromJson(
              json['modifier'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Quantity.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [NutritionOrderNutrient] from a [String]
  /// or [YamlMap] object
  factory NutritionOrderNutrient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderNutrient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrderNutrient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NutritionOrderNutrient cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrderNutrient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderNutrient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderNutrient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderNutrient';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [modifier]
  /// The nutrient that is being modified such as carbohydrate or sodium.
  final CodeableConcept? modifier;

  /// [amount]
  /// The quantity of the specified nutrient to include in diet.
  final Quantity? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifier != null) {
      json['modifier'] = modifier!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    return json;
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
}

/// [NutritionOrderTexture]
/// Class that describes any texture modifications required for the patient
/// to safely consume various types of solid foods.
class NutritionOrderTexture extends BackboneElement {
  /// Primary constructor for [NutritionOrderTexture]

  NutritionOrderTexture({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderTexture.fromJson(Map<String, dynamic> json) {
    return NutritionOrderTexture(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifier: json['modifier'] != null
          ? CodeableConcept.fromJson(
              json['modifier'] as Map<String, dynamic>,
            )
          : null,
      foodType: json['foodType'] != null
          ? CodeableConcept.fromJson(
              json['foodType'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [NutritionOrderTexture] from a [String]
  /// or [YamlMap] object
  factory NutritionOrderTexture.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderTexture.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrderTexture.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NutritionOrderTexture cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrderTexture]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderTexture.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderTexture.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderTexture';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [modifier]
  /// Any texture modifications (for solid foods) that should be made, e.g.
  /// easy to chew, chopped, ground, and pureed.
  final CodeableConcept? modifier;

  /// [foodType]
  /// The food type(s) (e.g. meats, all foods) that the texture modification
  /// applies to. This could be all foods types.
  final CodeableConcept? foodType;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifier != null) {
      json['modifier'] = modifier!.toJson();
    }
    if (foodType != null) {
      json['foodType'] = foodType!.toJson();
    }
    return json;
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
}

/// [NutritionOrderSupplement]
/// Oral nutritional products given in order to add further nutritional
/// value to the patient's diet.
class NutritionOrderSupplement extends BackboneElement {
  /// Primary constructor for [NutritionOrderSupplement]

  NutritionOrderSupplement({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.productName,
    this.schedule,
    this.quantity,
    this.instruction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSupplement.fromJson(Map<String, dynamic> json) {
    return NutritionOrderSupplement(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      productName: json['productName'] != null
          ? FhirString.fromJson({
              'value': json['productName'],
              '_value': json['_productName'],
            })
          : null,
      schedule: json['schedule'] != null
          ? (json['schedule'] as List<dynamic>)
              .map<Timing>(
                (v) => Timing.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      instruction: json['instruction'] != null
          ? FhirString.fromJson({
              'value': json['instruction'],
              '_value': json['_instruction'],
            })
          : null,
    );
  }

  /// Deserialize [NutritionOrderSupplement] from a [String]
  /// or [YamlMap] object
  factory NutritionOrderSupplement.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderSupplement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrderSupplement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NutritionOrderSupplement cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrderSupplement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderSupplement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderSupplement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderSupplement';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The kind of nutritional supplement product required such as a high
  /// protein or pediatric clear liquid supplement.
  final CodeableConcept? type;

  /// [productName]
  /// The product or brand name of the nutritional supplement such as "Acme
  /// Protein Shake".
  final FhirString? productName;

  /// [schedule]
  /// The time period and frequency at which the supplement(s) should be
  /// given. The supplement should be given for the combination of all
  /// schedules if more than one schedule is present.
  final List<Timing>? schedule;

  /// [quantity]
  /// The amount of the nutritional supplement to be given.
  final Quantity? quantity;

  /// [instruction]
  /// Free text or additional instructions or information pertaining to the
  /// oral supplement.
  final FhirString? instruction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (productName?.value != null) {
      json['productName'] = productName!.toJson();
    }
    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] = schedule!.map((Timing v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (instruction?.value != null) {
      json['instruction'] = instruction!.toJson();
    }
    return json;
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
    List<Timing>? schedule,
    Quantity? quantity,
    FhirString? instruction,
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
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      instruction: instruction ?? this.instruction,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [NutritionOrderEnteralFormula]
/// Feeding provided through the gastrointestinal tract via a tube,
/// catheter, or stoma that delivers nutrition distal to the oral cavity.
class NutritionOrderEnteralFormula extends BackboneElement {
  /// Primary constructor for [NutritionOrderEnteralFormula]

  NutritionOrderEnteralFormula({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.additiveType,
    this.additiveProductName,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderEnteralFormula.fromJson(Map<String, dynamic> json) {
    return NutritionOrderEnteralFormula(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      baseFormulaType: json['baseFormulaType'] != null
          ? CodeableConcept.fromJson(
              json['baseFormulaType'] as Map<String, dynamic>,
            )
          : null,
      baseFormulaProductName: json['baseFormulaProductName'] != null
          ? FhirString.fromJson({
              'value': json['baseFormulaProductName'],
              '_value': json['_baseFormulaProductName'],
            })
          : null,
      additiveType: json['additiveType'] != null
          ? CodeableConcept.fromJson(
              json['additiveType'] as Map<String, dynamic>,
            )
          : null,
      additiveProductName: json['additiveProductName'] != null
          ? FhirString.fromJson({
              'value': json['additiveProductName'],
              '_value': json['_additiveProductName'],
            })
          : null,
      caloricDensity: json['caloricDensity'] != null
          ? Quantity.fromJson(
              json['caloricDensity'] as Map<String, dynamic>,
            )
          : null,
      routeofAdministration: json['routeofAdministration'] != null
          ? CodeableConcept.fromJson(
              json['routeofAdministration'] as Map<String, dynamic>,
            )
          : null,
      administration: json['administration'] != null
          ? (json['administration'] as List<dynamic>)
              .map<NutritionOrderAdministration>(
                (v) => NutritionOrderAdministration.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      maxVolumeToDeliver: json['maxVolumeToDeliver'] != null
          ? Quantity.fromJson(
              json['maxVolumeToDeliver'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [NutritionOrderEnteralFormula] from a [String]
  /// or [YamlMap] object
  factory NutritionOrderEnteralFormula.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderEnteralFormula.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrderEnteralFormula.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NutritionOrderEnteralFormula cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrderEnteralFormula]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderEnteralFormula.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderEnteralFormula.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderEnteralFormula';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [baseFormulaType]
  /// The type of enteral or infant formula such as an adult standard formula
  /// with fiber or a soy-based infant formula.
  final CodeableConcept? baseFormulaType;

  /// [baseFormulaProductName]
  /// The product or brand name of the enteral or infant formula product such
  /// as "ACME Adult Standard Formula".
  final FhirString? baseFormulaProductName;

  /// [additiveType]
  /// Indicates the type of modular component such as protein, carbohydrate,
  /// fat or fiber to be provided in addition to or mixed with the base
  /// formula.
  final CodeableConcept? additiveType;

  /// [additiveProductName]
  /// The product or brand name of the type of modular component to be added
  /// to the formula.
  final FhirString? additiveProductName;

  /// [caloricDensity]
  /// The amount of energy (calories) that the formula should provide per
  /// specified volume, typically per mL or fluid oz. For example, an infant
  /// may require a formula that provides 24 calories per fluid ounce or an
  /// adult may require an enteral formula that provides 1.5 calorie/mL.
  final Quantity? caloricDensity;

  /// [routeofAdministration]
  /// The route or physiological path of administration into the patient's
  /// gastrointestinal tract for purposes of providing the formula feeding,
  /// e.g. nasogastric tube.
  final CodeableConcept? routeofAdministration;

  /// [administration]
  /// Formula administration instructions as structured data. This repeating
  /// structure allows for changing the administration rate or volume over
  /// time for both bolus and continuous feeding. An example of this would be
  /// an instruction to increase the rate of continuous feeding every 2
  /// hours.
  final List<NutritionOrderAdministration>? administration;

  /// [maxVolumeToDeliver]
  /// The maximum total quantity of formula that may be administered to a
  /// subject over the period of time, e.g. 1440 mL over 24 hours.
  final Quantity? maxVolumeToDeliver;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (baseFormulaType != null) {
      json['baseFormulaType'] = baseFormulaType!.toJson();
    }
    if (baseFormulaProductName?.value != null) {
      json['baseFormulaProductName'] = baseFormulaProductName!.toJson();
    }
    if (additiveType != null) {
      json['additiveType'] = additiveType!.toJson();
    }
    if (additiveProductName?.value != null) {
      json['additiveProductName'] = additiveProductName!.toJson();
    }
    if (caloricDensity != null) {
      json['caloricDensity'] = caloricDensity!.toJson();
    }
    if (routeofAdministration != null) {
      json['routeofAdministration'] = routeofAdministration!.toJson();
    }
    if (administration != null && administration!.isNotEmpty) {
      json['administration'] = administration!
          .map((NutritionOrderAdministration v) => v.toJson())
          .toList();
    }
    if (maxVolumeToDeliver != null) {
      json['maxVolumeToDeliver'] = maxVolumeToDeliver!.toJson();
    }
    return json;
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
    CodeableConcept? additiveType,
    FhirString? additiveProductName,
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
      additiveType: additiveType ?? this.additiveType,
      additiveProductName: additiveProductName ?? this.additiveProductName,
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
}

/// [NutritionOrderAdministration]
/// Formula administration instructions as structured data. This repeating
/// structure allows for changing the administration rate or volume over
/// time for both bolus and continuous feeding. An example of this would be
/// an instruction to increase the rate of continuous feeding every 2
/// hours.
class NutritionOrderAdministration extends BackboneElement {
  /// Primary constructor for [NutritionOrderAdministration]

  NutritionOrderAdministration({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
    this.administrationInstruction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderAdministration.fromJson(Map<String, dynamic> json) {
    return NutritionOrderAdministration(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      schedule: json['schedule'] != null
          ? Timing.fromJson(
              json['schedule'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(
              json['rateQuantity'] as Map<String, dynamic>,
            )
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(
              json['rateRatio'] as Map<String, dynamic>,
            )
          : null,
      administrationInstruction: json['administrationInstruction'] != null
          ? FhirString.fromJson({
              'value': json['administrationInstruction'],
              '_value': json['_administrationInstruction'],
            })
          : null,
    );
  }

  /// Deserialize [NutritionOrderAdministration] from a [String]
  /// or [YamlMap] object
  factory NutritionOrderAdministration.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrderAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NutritionOrderAdministration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NutritionOrderAdministration cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NutritionOrderAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionOrderAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderAdministration';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [schedule]
  /// The time period and frequency at which the enteral formula should be
  /// delivered to the patient.
  final Timing? schedule;

  /// [quantity]
  /// The volume of formula to provide to the patient per the specified
  /// administration schedule.
  final Quantity? quantity;

  /// [rateQuantity]
  /// The rate of administration of formula via a feeding pump, e.g. 60 mL
  /// per hour, according to the specified schedule.
  final Quantity? rateQuantity;

  /// [rateRatio]
  /// The rate of administration of formula via a feeding pump, e.g. 60 mL
  /// per hour, according to the specified schedule.
  final Ratio? rateRatio;

  /// [administrationInstruction]
  /// Free text formula administration, feeding instructions or additional
  /// instructions or information.
  final FhirString? administrationInstruction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
      json['administrationInstruction'] = administrationInstruction!.toJson();
    }
    return json;
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
