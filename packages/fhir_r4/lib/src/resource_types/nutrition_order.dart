import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'nutrition_order.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return NutritionOrder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'instantiates',
      instantiates,
    );
    addField(
      'status',
      status,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'dateTime',
      dateTime,
    );
    addField(
      'orderer',
      orderer,
    );
    addField(
      'allergyIntolerance',
      allergyIntolerance,
    );
    addField(
      'foodPreferenceModifier',
      foodPreferenceModifier,
    );
    addField(
      'excludeFoodModifier',
      excludeFoodModifier,
    );
    addField(
      'oralDiet',
      oralDiet,
    );
    addField(
      'supplement',
      supplement,
    );
    addField(
      'enteralFormula',
      enteralFormula,
    );
    addField(
      'note',
      note,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'instantiatesCanonical',
      'instantiatesUri',
      'instantiates',
      'status',
      'intent',
      'patient',
      'encounter',
      'dateTime',
      'orderer',
      'allergyIntolerance',
      'foodPreferenceModifier',
      'excludeFoodModifier',
      'oralDiet',
      'supplement',
      'enteralFormula',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'instantiates':
        if (instantiates != null) {
          fields.addAll(instantiates!);
        }
      case 'status':
        fields.add(status);
      case 'intent':
        fields.add(intent);
      case 'patient':
        fields.add(patient);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'dateTime':
        fields.add(dateTime);
      case 'orderer':
        if (orderer != null) {
          fields.add(orderer!);
        }
      case 'allergyIntolerance':
        if (allergyIntolerance != null) {
          fields.addAll(allergyIntolerance!);
        }
      case 'foodPreferenceModifier':
        if (foodPreferenceModifier != null) {
          fields.addAll(foodPreferenceModifier!);
        }
      case 'excludeFoodModifier':
        if (excludeFoodModifier != null) {
          fields.addAll(excludeFoodModifier!);
        }
      case 'oralDiet':
        if (oralDiet != null) {
          fields.add(oralDiet!);
        }
      case 'supplement':
        if (supplement != null) {
          fields.addAll(supplement!);
        }
      case 'enteralFormula':
        if (enteralFormula != null) {
          fields.add(enteralFormula!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrder clone() => copyWith();

  /// Copy function for [NutritionOrder]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderCopyWith<NutritionOrder> get copyWith =>
      _$NutritionOrderCopyWithImpl<NutritionOrder>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiates,
      o.instantiates,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateTime,
      o.dateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orderer,
      o.orderer,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      allergyIntolerance,
      o.allergyIntolerance,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      foodPreferenceModifier,
      o.foodPreferenceModifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      excludeFoodModifier,
      o.excludeFoodModifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      oralDiet,
      o.oralDiet,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderSupplement>(
      supplement,
      o.supplement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enteralFormula,
      o.enteralFormula,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<Timing>(
            (v) => Timing.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map<NutritionOrderNutrient>(
            (v) => NutritionOrderNutrient.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map<NutritionOrderTexture>(
            (v) => NutritionOrderTexture.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return NutritionOrderOralDiet.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'nutrient',
      nutrient,
    );
    addField(
      'texture',
      texture,
    );
    addField(
      'fluidConsistencyType',
      fluidConsistencyType,
    );
    addField(
      'instruction',
      instruction,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'schedule',
      'nutrient',
      'texture',
      'fluidConsistencyType',
      'instruction',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.addAll(schedule!);
        }
      case 'nutrient':
        if (nutrient != null) {
          fields.addAll(nutrient!);
        }
      case 'texture':
        if (texture != null) {
          fields.addAll(texture!);
        }
      case 'fluidConsistencyType':
        if (fluidConsistencyType != null) {
          fields.addAll(fluidConsistencyType!);
        }
      case 'instruction':
        if (instruction != null) {
          fields.add(instruction!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrderOralDiet clone() => copyWith();

  /// Copy function for [NutritionOrderOralDiet]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderOralDietCopyWith<NutritionOrderOralDiet> get copyWith =>
      _$NutritionOrderOralDietCopyWithImpl<NutritionOrderOralDiet>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderOralDiet) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<Timing>(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderNutrient>(
      nutrient,
      o.nutrient,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderTexture>(
      texture,
      o.texture,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      fluidConsistencyType,
      o.fluidConsistencyType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return NutritionOrderNutrient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'amount',
      amount,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'modifier',
      'amount',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.add(modifier!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrderNutrient clone() => copyWith();

  /// Copy function for [NutritionOrderNutrient]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderNutrientCopyWith<NutritionOrderNutrient> get copyWith =>
      _$NutritionOrderNutrientCopyWithImpl<NutritionOrderNutrient>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderNutrient) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return NutritionOrderTexture.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'foodType',
      foodType,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'modifier',
      'foodType',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.add(modifier!);
        }
      case 'foodType':
        if (foodType != null) {
          fields.add(foodType!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrderTexture clone() => copyWith();

  /// Copy function for [NutritionOrderTexture]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderTextureCopyWith<NutritionOrderTexture> get copyWith =>
      _$NutritionOrderTextureCopyWithImpl<NutritionOrderTexture>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderTexture) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      foodType,
      o.foodType,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return NutritionOrderSupplement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'productName',
      productName,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'instruction',
      instruction,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'productName',
      'schedule',
      'quantity',
      'instruction',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'productName':
        if (productName != null) {
          fields.add(productName!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.addAll(schedule!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'instruction':
        if (instruction != null) {
          fields.add(instruction!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrderSupplement clone() => copyWith();

  /// Copy function for [NutritionOrderSupplement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderSupplementCopyWith<NutritionOrderSupplement> get copyWith =>
      _$NutritionOrderSupplementCopyWithImpl<NutritionOrderSupplement>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderSupplement) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productName,
      o.productName,
    )) {
      return false;
    }
    if (!listEquals<Timing>(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return NutritionOrderEnteralFormula.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'baseFormulaType',
      baseFormulaType,
    );
    addField(
      'baseFormulaProductName',
      baseFormulaProductName,
    );
    addField(
      'additiveType',
      additiveType,
    );
    addField(
      'additiveProductName',
      additiveProductName,
    );
    addField(
      'caloricDensity',
      caloricDensity,
    );
    addField(
      'routeofAdministration',
      routeofAdministration,
    );
    addField(
      'administration',
      administration,
    );
    addField(
      'maxVolumeToDeliver',
      maxVolumeToDeliver,
    );
    addField(
      'administrationInstruction',
      administrationInstruction,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'baseFormulaType',
      'baseFormulaProductName',
      'additiveType',
      'additiveProductName',
      'caloricDensity',
      'routeofAdministration',
      'administration',
      'maxVolumeToDeliver',
      'administrationInstruction',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'baseFormulaType':
        if (baseFormulaType != null) {
          fields.add(baseFormulaType!);
        }
      case 'baseFormulaProductName':
        if (baseFormulaProductName != null) {
          fields.add(baseFormulaProductName!);
        }
      case 'additiveType':
        if (additiveType != null) {
          fields.add(additiveType!);
        }
      case 'additiveProductName':
        if (additiveProductName != null) {
          fields.add(additiveProductName!);
        }
      case 'caloricDensity':
        if (caloricDensity != null) {
          fields.add(caloricDensity!);
        }
      case 'routeofAdministration':
        if (routeofAdministration != null) {
          fields.add(routeofAdministration!);
        }
      case 'administration':
        if (administration != null) {
          fields.addAll(administration!);
        }
      case 'maxVolumeToDeliver':
        if (maxVolumeToDeliver != null) {
          fields.add(maxVolumeToDeliver!);
        }
      case 'administrationInstruction':
        if (administrationInstruction != null) {
          fields.add(administrationInstruction!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrderEnteralFormula clone() => copyWith();

  /// Copy function for [NutritionOrderEnteralFormula]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderEnteralFormulaCopyWith<NutritionOrderEnteralFormula>
      get copyWith => _$NutritionOrderEnteralFormulaCopyWithImpl<
              NutritionOrderEnteralFormula>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderEnteralFormula) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      baseFormulaType,
      o.baseFormulaType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      baseFormulaProductName,
      o.baseFormulaProductName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      additiveType,
      o.additiveType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      additiveProductName,
      o.additiveProductName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      caloricDensity,
      o.caloricDensity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      routeofAdministration,
      o.routeofAdministration,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderAdministration>(
      administration,
      o.administration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxVolumeToDeliver,
      o.maxVolumeToDeliver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administrationInstruction,
      o.administrationInstruction,
    )) {
      return false;
    }
    return true;
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
    RateXNutritionOrderAdministration? rateX,
    Quantity? rateQuantity,
    Ratio? rateRatio,
    super.disallowExtensions,
  })  : rateX = rateX ?? rateQuantity ?? rateRatio,
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
      rateX: JsonParser.parsePolymorphic<RateXNutritionOrderAdministration>(
        json,
        {
          'rateQuantity': Quantity.fromJson,
          'rateRatio': Ratio.fromJson,
        },
      ),
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
    if (json is Map<String, dynamic>) {
      return NutritionOrderAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [rateQuantity] as a Quantity
  Quantity? get rateQuantity => rateX?.isAs<Quantity>();

  /// Getter for [rateRatio] as a Ratio
  Ratio? get rateRatio => rateX?.isAs<Ratio>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'quantity',
      quantity,
    );
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField(
        'rate${fhirType.capitalize()}',
        rateX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'schedule',
      'quantity',
      'rateX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'rate':
        fields.add(rateX!);
      case 'rateX':
        fields.add(rateX!);
      case 'rateQuantity':
        if (rateX is Quantity) {
          fields.add(rateX!);
        }
      case 'rateRatio':
        if (rateX is Ratio) {
          fields.add(rateX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  NutritionOrderAdministration clone() => copyWith();

  /// Copy function for [NutritionOrderAdministration]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionOrderAdministrationCopyWith<NutritionOrderAdministration>
      get copyWith => _$NutritionOrderAdministrationCopyWithImpl<
              NutritionOrderAdministration>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderAdministration) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    return true;
  }
}
