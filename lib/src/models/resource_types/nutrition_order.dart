import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [NutritionOrder]
/// A request to supply a diet, formula feeding (enteral) or oral
/// nutritional supplement to a patient/resident.
class NutritionOrder extends DomainResource {
  /// Primary constructor for
  /// [NutritionOrder]

  const NutritionOrder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          resourceType: R4ResourceType.NutritionOrder,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrder.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrder(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      instantiates: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiates',
        FhirUri.fromJson,
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
      )!,
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      dateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateTime',
        FhirDateTime.fromJson,
      )!,
      orderer: JsonParser.parseObject<Reference>(
        json,
        'orderer',
        Reference.fromJson,
      ),
      allergyIntolerance: (json['allergyIntolerance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      oralDiet: JsonParser.parseObject<NutritionOrderOralDiet>(
        json,
        'oralDiet',
        NutritionOrderOralDiet.fromJson,
      ),
      supplement: (json['supplement'] as List<dynamic>?)
          ?.map<NutritionOrderSupplement>(
            (v) => NutritionOrderSupplement.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      enteralFormula: JsonParser.parseObject<NutritionOrderEnteralFormula>(
        json,
        'enteralFormula',
        NutritionOrderEnteralFormula.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NutritionOrder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrder.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson0 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson1 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (instantiates != null && instantiates!.isNotEmpty) {
      final fieldJson2 = instantiates!.map((e) => e.toJson()).toList();
      json['instantiates'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_instantiates'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    addField('status', status);
    addField('intent', intent);
    json['patient'] = patient.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('dateTime', dateTime);
    if (orderer != null) {
      json['orderer'] = orderer!.toJson();
    }

    if (allergyIntolerance != null && allergyIntolerance!.isNotEmpty) {
      json['allergyIntolerance'] =
          allergyIntolerance!.map((e) => e.toJson()).toList();
    }

    if (foodPreferenceModifier != null && foodPreferenceModifier!.isNotEmpty) {
      json['foodPreferenceModifier'] =
          foodPreferenceModifier!.map((e) => e.toJson()).toList();
    }

    if (excludeFoodModifier != null && excludeFoodModifier!.isNotEmpty) {
      json['excludeFoodModifier'] =
          excludeFoodModifier!.map((e) => e.toJson()).toList();
    }

    if (oralDiet != null) {
      json['oralDiet'] = oralDiet!.toJson();
    }

    if (supplement != null && supplement!.isNotEmpty) {
      json['supplement'] = supplement!.map((e) => e.toJson()).toList();
    }

    if (enteralFormula != null) {
      json['enteralFormula'] = enteralFormula!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [NutritionOrderOralDiet]
/// Diet given orally in contrast to enteral (tube) feeding.
class NutritionOrderOralDiet extends BackboneElement {
  /// Primary constructor for
  /// [NutritionOrderOralDiet]

  const NutritionOrderOralDiet({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderOralDiet.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrderOralDiet(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<Timing>(
            (v) => Timing.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map<NutritionOrderNutrient>(
            (v) => NutritionOrderNutrient.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map<NutritionOrderTexture>(
            (v) => NutritionOrderTexture.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'instruction',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionOrderOralDiet]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderOralDiet.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderOralDiet.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderOralDiet.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderOralDiet '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderOralDiet]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderOralDiet.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] = schedule!.map((e) => e.toJson()).toList();
    }

    if (nutrient != null && nutrient!.isNotEmpty) {
      json['nutrient'] = nutrient!.map((e) => e.toJson()).toList();
    }

    if (texture != null && texture!.isNotEmpty) {
      json['texture'] = texture!.map((e) => e.toJson()).toList();
    }

    if (fluidConsistencyType != null && fluidConsistencyType!.isNotEmpty) {
      json['fluidConsistencyType'] =
          fluidConsistencyType!.map((e) => e.toJson()).toList();
    }

    if (instruction != null) {
      addField('instruction', instruction);
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
    );
  }
}

/// [NutritionOrderNutrient]
/// Class that defines the quantity and type of nutrient modifications (for
/// example carbohydrate, fiber or sodium) required for the oral diet.
class NutritionOrderNutrient extends BackboneElement {
  /// Primary constructor for
  /// [NutritionOrderNutrient]

  const NutritionOrderNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderNutrient.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrderNutrient(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'modifier',
        CodeableConcept.fromJson,
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionOrderNutrient]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderNutrient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderNutrient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderNutrient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderNutrient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderNutrient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderNutrient.fromJsonString(
    String source,
  ) {
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

  /// [modifier]
  /// The nutrient that is being modified such as carbohydrate or sodium.
  final CodeableConcept? modifier;

  /// [amount]
  /// The quantity of the specified nutrient to include in diet.
  final Quantity? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
  }) {
    return NutritionOrderNutrient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      amount: amount ?? this.amount,
    );
  }
}

/// [NutritionOrderTexture]
/// Class that describes any texture modifications required for the patient
/// to safely consume various types of solid foods.
class NutritionOrderTexture extends BackboneElement {
  /// Primary constructor for
  /// [NutritionOrderTexture]

  const NutritionOrderTexture({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.foodType,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderTexture.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrderTexture(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'modifier',
        CodeableConcept.fromJson,
      ),
      foodType: JsonParser.parseObject<CodeableConcept>(
        json,
        'foodType',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionOrderTexture]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderTexture.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderTexture.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderTexture.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderTexture '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderTexture]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderTexture.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
  }) {
    return NutritionOrderTexture(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      foodType: foodType ?? this.foodType,
    );
  }
}

/// [NutritionOrderSupplement]
/// Oral nutritional products given in order to add further nutritional
/// value to the patient's diet.
class NutritionOrderSupplement extends BackboneElement {
  /// Primary constructor for
  /// [NutritionOrderSupplement]

  const NutritionOrderSupplement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.productName,
    this.schedule,
    this.quantity,
    this.instruction,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSupplement.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrderSupplement(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      productName: JsonParser.parsePrimitive<FhirString>(
        json,
        'productName',
        FhirString.fromJson,
      ),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<Timing>(
            (v) => Timing.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      instruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'instruction',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionOrderSupplement]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderSupplement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderSupplement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderSupplement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderSupplement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderSupplement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderSupplement.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (productName != null) {
      addField('productName', productName);
    }

    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] = schedule!.map((e) => e.toJson()).toList();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (instruction != null) {
      addField('instruction', instruction);
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
    );
  }
}

/// [NutritionOrderEnteralFormula]
/// Feeding provided through the gastrointestinal tract via a tube,
/// catheter, or stoma that delivers nutrition distal to the oral cavity.
class NutritionOrderEnteralFormula extends BackboneElement {
  /// Primary constructor for
  /// [NutritionOrderEnteralFormula]

  const NutritionOrderEnteralFormula({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.additiveType,
    this.additiveProductName,
    this.caloricDensity,
    this.routeofAdministration,
    this.administration,
    this.maxVolumeToDeliver,
    this.administrationInstruction,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderEnteralFormula.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrderEnteralFormula(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      baseFormulaType: JsonParser.parseObject<CodeableConcept>(
        json,
        'baseFormulaType',
        CodeableConcept.fromJson,
      ),
      baseFormulaProductName: JsonParser.parsePrimitive<FhirString>(
        json,
        'baseFormulaProductName',
        FhirString.fromJson,
      ),
      additiveType: JsonParser.parseObject<CodeableConcept>(
        json,
        'additiveType',
        CodeableConcept.fromJson,
      ),
      additiveProductName: JsonParser.parsePrimitive<FhirString>(
        json,
        'additiveProductName',
        FhirString.fromJson,
      ),
      caloricDensity: JsonParser.parseObject<Quantity>(
        json,
        'caloricDensity',
        Quantity.fromJson,
      ),
      routeofAdministration: JsonParser.parseObject<CodeableConcept>(
        json,
        'routeofAdministration',
        CodeableConcept.fromJson,
      ),
      administration: (json['administration'] as List<dynamic>?)
          ?.map<NutritionOrderAdministration>(
            (v) => NutritionOrderAdministration.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      maxVolumeToDeliver: JsonParser.parseObject<Quantity>(
        json,
        'maxVolumeToDeliver',
        Quantity.fromJson,
      ),
      administrationInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'administrationInstruction',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionOrderEnteralFormula]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderEnteralFormula.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderEnteralFormula.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderEnteralFormula.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderEnteralFormula '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderEnteralFormula]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderEnteralFormula.fromJsonString(
    String source,
  ) {
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

  /// [administrationInstruction]
  /// Free text formula administration, feeding instructions or additional
  /// instructions or information.
  final FhirString? administrationInstruction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (baseFormulaType != null) {
      json['baseFormulaType'] = baseFormulaType!.toJson();
    }

    if (baseFormulaProductName != null) {
      addField('baseFormulaProductName', baseFormulaProductName);
    }

    if (additiveType != null) {
      json['additiveType'] = additiveType!.toJson();
    }

    if (additiveProductName != null) {
      addField('additiveProductName', additiveProductName);
    }

    if (caloricDensity != null) {
      json['caloricDensity'] = caloricDensity!.toJson();
    }

    if (routeofAdministration != null) {
      json['routeofAdministration'] = routeofAdministration!.toJson();
    }

    if (administration != null && administration!.isNotEmpty) {
      json['administration'] = administration!.map((e) => e.toJson()).toList();
    }

    if (maxVolumeToDeliver != null) {
      json['maxVolumeToDeliver'] = maxVolumeToDeliver!.toJson();
    }

    if (administrationInstruction != null) {
      addField('administrationInstruction', administrationInstruction);
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
    FhirString? administrationInstruction,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      administrationInstruction:
          administrationInstruction ?? this.administrationInstruction,
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
  /// Primary constructor for
  /// [NutritionOrderAdministration]

  const NutritionOrderAdministration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionOrderAdministration(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      schedule: JsonParser.parseObject<Timing>(
        json,
        'schedule',
        Timing.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      rateX:
          JsonParser.parsePolymorphic<RateXNutritionOrderAdministration>(json, {
        'rateQuantity': Quantity.fromJson,
        'rateRatio': Ratio.fromJson,
      }),
    );
  }

  /// Deserialize [NutritionOrderAdministration]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderAdministration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderAdministration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderAdministration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderAdministration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderAdministration.fromJsonString(
    String source,
  ) {
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

  /// [schedule]
  /// The time period and frequency at which the enteral formula should be
  /// delivered to the patient.
  final Timing? schedule;

  /// [quantity]
  /// The volume of formula to provide to the patient per the specified
  /// administration schedule.
  final Quantity? quantity;

  /// [rateX]
  /// The rate of administration of formula via a feeding pump, e.g. 60 mL
  /// per hour, according to the specified schedule.
  final RateXNutritionOrderAdministration? rateX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (schedule != null) {
      json['schedule'] = schedule!.toJson();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (rateX != null) {
      json['rate${rateX!.fhirType.capitalize()}'] = rateX!.toJson();
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
    RateXNutritionOrderAdministration? rateX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return NutritionOrderAdministration(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      rateX: rateX ?? this.rateX,
    );
  }
}
