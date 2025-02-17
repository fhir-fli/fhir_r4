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
          objectPath: 'NutritionOrder',
          resourceType: R4ResourceType.NutritionOrder,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrder.empty() => NutritionOrder(
        status: RequestStatus.values.first,
        intent: RequestIntent.values.first,
        patient: Reference.empty(),
        dateTime: FhirDateTime.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder';
    return NutritionOrder(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      instantiates: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiates',
        FhirUri.fromJson,
        '$objectPath.instantiates',
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
        '$objectPath.status',
      )!,
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
        '$objectPath.intent',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      dateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateTime',
        FhirDateTime.fromJson,
        '$objectPath.dateTime',
      )!,
      orderer: JsonParser.parseObject<Reference>(
        json,
        'orderer',
        Reference.fromJson,
        '$objectPath.orderer',
      ),
      allergyIntolerance: (json['allergyIntolerance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.allergyIntolerance',
              },
            ),
          )
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.foodPreferenceModifier',
              },
            ),
          )
          .toList(),
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.excludeFoodModifier',
              },
            ),
          )
          .toList(),
      oralDiet: JsonParser.parseObject<NutritionOrderOralDiet>(
        json,
        'oralDiet',
        NutritionOrderOralDiet.fromJson,
        '$objectPath.oralDiet',
      ),
      supplement: (json['supplement'] as List<dynamic>?)
          ?.map<NutritionOrderSupplement>(
            (v) => NutritionOrderSupplement.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplement',
              },
            ),
          )
          .toList(),
      enteralFormula: JsonParser.parseObject<NutritionOrderEnteralFormula>(
        json,
        'enteralFormula',
        NutritionOrderEnteralFormula.fromJson,
        '$objectPath.enteralFormula',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('instantiates', instantiates);
    addField('status', status);
    addField('intent', intent);
    addField('patient', patient);
    addField('encounter', encounter);
    addField('dateTime', dateTime);
    addField('orderer', orderer);
    addField('allergyIntolerance', allergyIntolerance);
    addField('foodPreferenceModifier', foodPreferenceModifier);
    addField('excludeFoodModifier', excludeFoodModifier);
    addField('oralDiet', oralDiet);
    addField('supplement', supplement);
    addField('enteralFormula', enteralFormula);
    addField('note', note);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonical>) {
            return copyWith(instantiatesCanonical: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUri>) {
            return copyWith(instantiatesUri: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiates':
        {
          if (child is List<FhirUri>) {
            return copyWith(instantiates: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is RequestStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'intent':
        {
          if (child is RequestIntent) {
            return copyWith(intent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(dateTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'orderer':
        {
          if (child is Reference) {
            return copyWith(orderer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allergyIntolerance':
        {
          if (child is List<Reference>) {
            return copyWith(allergyIntolerance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'foodPreferenceModifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(foodPreferenceModifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'excludeFoodModifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(excludeFoodModifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'oralDiet':
        {
          if (child is NutritionOrderOralDiet) {
            return copyWith(oralDiet: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'supplement':
        {
          if (child is List<NutritionOrderSupplement>) {
            return copyWith(supplement: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'enteralFormula':
        {
          if (child is NutritionOrderEnteralFormula) {
            return copyWith(enteralFormula: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return NutritionOrder(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      instantiates: instantiates
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiates',
                ),
              )
              .toList() ??
          this.instantiates,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      dateTime: dateTime?.copyWith(
            objectPath: '$newObjectPath.dateTime',
          ) ??
          this.dateTime,
      orderer: orderer?.copyWith(
            objectPath: '$newObjectPath.orderer',
          ) ??
          this.orderer,
      allergyIntolerance: allergyIntolerance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.allergyIntolerance',
                ),
              )
              .toList() ??
          this.allergyIntolerance,
      foodPreferenceModifier: foodPreferenceModifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.foodPreferenceModifier',
                ),
              )
              .toList() ??
          this.foodPreferenceModifier,
      excludeFoodModifier: excludeFoodModifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.excludeFoodModifier',
                ),
              )
              .toList() ??
          this.excludeFoodModifier,
      oralDiet: oralDiet?.copyWith(
            objectPath: '$newObjectPath.oralDiet',
          ) ??
          this.oralDiet,
      supplement: supplement
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supplement',
                ),
              )
              .toList() ??
          this.supplement,
      enteralFormula: enteralFormula?.copyWith(
            objectPath: '$newObjectPath.enteralFormula',
          ) ??
          this.enteralFormula,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(intent, o.intent)) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(dateTime, o.dateTime)) {
      return false;
    }
    if (!equalsDeepWithNull(orderer, o.orderer)) {
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
    if (!equalsDeepWithNull(oralDiet, o.oralDiet)) {
      return false;
    }
    if (!listEquals<NutritionOrderSupplement>(
      supplement,
      o.supplement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(enteralFormula, o.enteralFormula)) {
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
  }) : super(
          objectPath: 'NutritionOrder.oralDiet',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrderOralDiet.empty() => NutritionOrderOralDiet();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderOralDiet.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet';
    return NutritionOrderOralDiet(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<Timing>(
            (v) => Timing.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.schedule',
              },
            ),
          )
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map<NutritionOrderNutrient>(
            (v) => NutritionOrderNutrient.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.nutrient',
              },
            ),
          )
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map<NutritionOrderTexture>(
            (v) => NutritionOrderTexture.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.texture',
              },
            ),
          )
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.fluidConsistencyType',
              },
            ),
          )
          .toList(),
      instruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'instruction',
        FhirString.fromJson,
        '$objectPath.instruction',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('schedule', schedule);
    addField('nutrient', nutrient);
    addField('texture', texture);
    addField('fluidConsistencyType', fluidConsistencyType);
    addField('instruction', instruction);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'schedule':
        {
          if (child is List<Timing>) {
            return copyWith(schedule: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'nutrient':
        {
          if (child is List<NutritionOrderNutrient>) {
            return copyWith(nutrient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'texture':
        {
          if (child is List<NutritionOrderTexture>) {
            return copyWith(texture: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'fluidConsistencyType':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(fluidConsistencyType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instruction':
        {
          if (child is FhirString) {
            return copyWith(instruction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return NutritionOrderOralDiet(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      schedule: schedule
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.schedule',
                ),
              )
              .toList() ??
          this.schedule,
      nutrient: nutrient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.nutrient',
                ),
              )
              .toList() ??
          this.nutrient,
      texture: texture
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.texture',
                ),
              )
              .toList() ??
          this.texture,
      fluidConsistencyType: fluidConsistencyType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.fluidConsistencyType',
                ),
              )
              .toList() ??
          this.fluidConsistencyType,
      instruction: instruction?.copyWith(
            objectPath: '$newObjectPath.instruction',
          ) ??
          this.instruction,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderOralDiet) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(instruction, o.instruction)) {
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
  }) : super(
          objectPath: 'NutritionOrder.oralDiet.nutrient',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrderNutrient.empty() => NutritionOrderNutrient();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderNutrient.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet.nutrient';
    return NutritionOrderNutrient(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      modifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'modifier',
        CodeableConcept.fromJson,
        '$objectPath.modifier',
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
        '$objectPath.amount',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('modifier', modifier);
    addField('amount', amount);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifier':
        {
          if (child is CodeableConcept) {
            return copyWith(modifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'amount':
        {
          if (child is Quantity) {
            return copyWith(amount: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return NutritionOrderNutrient(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      modifier: modifier?.copyWith(
            objectPath: '$newObjectPath.modifier',
          ) ??
          this.modifier,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderNutrient) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(modifier, o.modifier)) {
      return false;
    }
    if (!equalsDeepWithNull(amount, o.amount)) {
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
  }) : super(
          objectPath: 'NutritionOrder.oralDiet.texture',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrderTexture.empty() => NutritionOrderTexture();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderTexture.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet.texture';
    return NutritionOrderTexture(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      modifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'modifier',
        CodeableConcept.fromJson,
        '$objectPath.modifier',
      ),
      foodType: JsonParser.parseObject<CodeableConcept>(
        json,
        'foodType',
        CodeableConcept.fromJson,
        '$objectPath.foodType',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('modifier', modifier);
    addField('foodType', foodType);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifier':
        {
          if (child is CodeableConcept) {
            return copyWith(modifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'foodType':
        {
          if (child is CodeableConcept) {
            return copyWith(foodType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return NutritionOrderTexture(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      modifier: modifier?.copyWith(
            objectPath: '$newObjectPath.modifier',
          ) ??
          this.modifier,
      foodType: foodType?.copyWith(
            objectPath: '$newObjectPath.foodType',
          ) ??
          this.foodType,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderTexture) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(modifier, o.modifier)) {
      return false;
    }
    if (!equalsDeepWithNull(foodType, o.foodType)) {
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
  }) : super(
          objectPath: 'NutritionOrder.supplement',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrderSupplement.empty() => NutritionOrderSupplement();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSupplement.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.supplement';
    return NutritionOrderSupplement(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      productName: JsonParser.parsePrimitive<FhirString>(
        json,
        'productName',
        FhirString.fromJson,
        '$objectPath.productName',
      ),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<Timing>(
            (v) => Timing.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.schedule',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      instruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'instruction',
        FhirString.fromJson,
        '$objectPath.instruction',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('productName', productName);
    addField('schedule', schedule);
    addField('quantity', quantity);
    addField('instruction', instruction);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'productName':
        {
          if (child is FhirString) {
            return copyWith(productName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'schedule':
        {
          if (child is List<Timing>) {
            return copyWith(schedule: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instruction':
        {
          if (child is FhirString) {
            return copyWith(instruction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return NutritionOrderSupplement(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      productName: productName?.copyWith(
            objectPath: '$newObjectPath.productName',
          ) ??
          this.productName,
      schedule: schedule
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.schedule',
                ),
              )
              .toList() ??
          this.schedule,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      instruction: instruction?.copyWith(
            objectPath: '$newObjectPath.instruction',
          ) ??
          this.instruction,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderSupplement) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(productName, o.productName)) {
      return false;
    }
    if (!listEquals<Timing>(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!equalsDeepWithNull(instruction, o.instruction)) {
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
  }) : super(
          objectPath: 'NutritionOrder.enteralFormula',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrderEnteralFormula.empty() =>
      NutritionOrderEnteralFormula();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderEnteralFormula.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.enteralFormula';
    return NutritionOrderEnteralFormula(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      baseFormulaType: JsonParser.parseObject<CodeableConcept>(
        json,
        'baseFormulaType',
        CodeableConcept.fromJson,
        '$objectPath.baseFormulaType',
      ),
      baseFormulaProductName: JsonParser.parsePrimitive<FhirString>(
        json,
        'baseFormulaProductName',
        FhirString.fromJson,
        '$objectPath.baseFormulaProductName',
      ),
      additiveType: JsonParser.parseObject<CodeableConcept>(
        json,
        'additiveType',
        CodeableConcept.fromJson,
        '$objectPath.additiveType',
      ),
      additiveProductName: JsonParser.parsePrimitive<FhirString>(
        json,
        'additiveProductName',
        FhirString.fromJson,
        '$objectPath.additiveProductName',
      ),
      caloricDensity: JsonParser.parseObject<Quantity>(
        json,
        'caloricDensity',
        Quantity.fromJson,
        '$objectPath.caloricDensity',
      ),
      routeofAdministration: JsonParser.parseObject<CodeableConcept>(
        json,
        'routeofAdministration',
        CodeableConcept.fromJson,
        '$objectPath.routeofAdministration',
      ),
      administration: (json['administration'] as List<dynamic>?)
          ?.map<NutritionOrderAdministration>(
            (v) => NutritionOrderAdministration.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.administration',
              },
            ),
          )
          .toList(),
      maxVolumeToDeliver: JsonParser.parseObject<Quantity>(
        json,
        'maxVolumeToDeliver',
        Quantity.fromJson,
        '$objectPath.maxVolumeToDeliver',
      ),
      administrationInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'administrationInstruction',
        FhirString.fromJson,
        '$objectPath.administrationInstruction',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('baseFormulaType', baseFormulaType);
    addField('baseFormulaProductName', baseFormulaProductName);
    addField('additiveType', additiveType);
    addField('additiveProductName', additiveProductName);
    addField('caloricDensity', caloricDensity);
    addField('routeofAdministration', routeofAdministration);
    addField('administration', administration);
    addField('maxVolumeToDeliver', maxVolumeToDeliver);
    addField('administrationInstruction', administrationInstruction);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'baseFormulaType':
        {
          if (child is CodeableConcept) {
            return copyWith(baseFormulaType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'baseFormulaProductName':
        {
          if (child is FhirString) {
            return copyWith(baseFormulaProductName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additiveType':
        {
          if (child is CodeableConcept) {
            return copyWith(additiveType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additiveProductName':
        {
          if (child is FhirString) {
            return copyWith(additiveProductName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'caloricDensity':
        {
          if (child is Quantity) {
            return copyWith(caloricDensity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'routeofAdministration':
        {
          if (child is CodeableConcept) {
            return copyWith(routeofAdministration: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'administration':
        {
          if (child is List<NutritionOrderAdministration>) {
            return copyWith(administration: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'maxVolumeToDeliver':
        {
          if (child is Quantity) {
            return copyWith(maxVolumeToDeliver: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'administrationInstruction':
        {
          if (child is FhirString) {
            return copyWith(administrationInstruction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return NutritionOrderEnteralFormula(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      baseFormulaType: baseFormulaType?.copyWith(
            objectPath: '$newObjectPath.baseFormulaType',
          ) ??
          this.baseFormulaType,
      baseFormulaProductName: baseFormulaProductName?.copyWith(
            objectPath: '$newObjectPath.baseFormulaProductName',
          ) ??
          this.baseFormulaProductName,
      additiveType: additiveType?.copyWith(
            objectPath: '$newObjectPath.additiveType',
          ) ??
          this.additiveType,
      additiveProductName: additiveProductName?.copyWith(
            objectPath: '$newObjectPath.additiveProductName',
          ) ??
          this.additiveProductName,
      caloricDensity: caloricDensity?.copyWith(
            objectPath: '$newObjectPath.caloricDensity',
          ) ??
          this.caloricDensity,
      routeofAdministration: routeofAdministration?.copyWith(
            objectPath: '$newObjectPath.routeofAdministration',
          ) ??
          this.routeofAdministration,
      administration: administration
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.administration',
                ),
              )
              .toList() ??
          this.administration,
      maxVolumeToDeliver: maxVolumeToDeliver?.copyWith(
            objectPath: '$newObjectPath.maxVolumeToDeliver',
          ) ??
          this.maxVolumeToDeliver,
      administrationInstruction: administrationInstruction?.copyWith(
            objectPath: '$newObjectPath.administrationInstruction',
          ) ??
          this.administrationInstruction,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderEnteralFormula) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(baseFormulaType, o.baseFormulaType)) {
      return false;
    }
    if (!equalsDeepWithNull(baseFormulaProductName, o.baseFormulaProductName)) {
      return false;
    }
    if (!equalsDeepWithNull(additiveType, o.additiveType)) {
      return false;
    }
    if (!equalsDeepWithNull(additiveProductName, o.additiveProductName)) {
      return false;
    }
    if (!equalsDeepWithNull(caloricDensity, o.caloricDensity)) {
      return false;
    }
    if (!equalsDeepWithNull(routeofAdministration, o.routeofAdministration)) {
      return false;
    }
    if (!listEquals<NutritionOrderAdministration>(
      administration,
      o.administration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(maxVolumeToDeliver, o.maxVolumeToDeliver)) {
      return false;
    }
    if (!equalsDeepWithNull(
        administrationInstruction, o.administrationInstruction)) {
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
    this.rateX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.enteralFormula.administration',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory NutritionOrderAdministration.empty() =>
      NutritionOrderAdministration();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.enteralFormula.administration';
    return NutritionOrderAdministration(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      schedule: JsonParser.parseObject<Timing>(
        json,
        'schedule',
        Timing.fromJson,
        '$objectPath.schedule',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      rateX: JsonParser.parsePolymorphic<RateXNutritionOrderAdministration>(
        json,
        {
          'rateQuantity': Quantity.fromJson,
          'rateRatio': Ratio.fromJson,
        },
        objectPath,
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('schedule', schedule);
    addField('quantity', quantity);
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField('rate${fhirType.capitalize()}', rateX);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'schedule':
        {
          if (child is Timing) {
            return copyWith(schedule: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rateX':
        {
          if (child is RateXNutritionOrderAdministration) {
            // child is e.g. SubjectX union
            return copyWith(rateX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rateQuantity':
        {
          if (child is Quantity) {
            return copyWith(rateX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rateRatio':
        {
          if (child is Ratio) {
            return copyWith(rateX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return NutritionOrderAdministration(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      schedule: schedule?.copyWith(
            objectPath: '$newObjectPath.schedule',
          ) ??
          this.schedule,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      rateX: rateX?.copyWith(
            objectPath: '$newObjectPath.rateX',
          ) as RateXNutritionOrderAdministration? ??
          this.rateX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionOrderAdministration) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(schedule, o.schedule)) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!equalsDeepWithNull(rateX, o.rateX)) {
      return false;
    }
    return true;
  }
}
