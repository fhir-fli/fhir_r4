import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationKnowledge]
/// Information about a medication that is used to support knowledge.
class MedicationKnowledge extends DomainResource {
  /// Primary constructor for
  /// [MedicationKnowledge]

  const MedicationKnowledge({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
    this.intendedRoute,
    this.cost,
    this.monitoringProgram,
    this.administrationGuidelines,
    this.medicineClassification,
    this.packaging,
    this.drugCharacteristic,
    this.contraindication,
    this.regulatory,
    this.kinetics,
  }) : super(
          objectPath: 'MedicationKnowledge',
          resourceType: R4ResourceType.MedicationKnowledge,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledge.empty() => const MedicationKnowledge();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledge.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge';
    return MedicationKnowledge(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      status: JsonParser.parsePrimitive<MedicationKnowledgeStatusCodes>(
        json,
        'status',
        MedicationKnowledgeStatusCodes.fromJson,
        '$objectPath.status',
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
        '$objectPath.manufacturer',
      ),
      doseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'doseForm',
        CodeableConcept.fromJson,
        '$objectPath.doseForm',
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
        '$objectPath.amount',
      ),
      synonym: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'synonym',
        FhirString.fromJson,
        '$objectPath.synonym',
      ),
      relatedMedicationKnowledge:
          (json['relatedMedicationKnowledge'] as List<dynamic>?)
              ?.map<MedicationKnowledgeRelatedMedicationKnowledge>(
                (v) => MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.relatedMedicationKnowledge',
                  },
                ),
              )
              .toList(),
      associatedMedication: (json['associatedMedication'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.associatedMedication',
              },
            ),
          )
          .toList(),
      productType: (json['productType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.productType',
              },
            ),
          )
          .toList(),
      monograph: (json['monograph'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMonograph>(
            (v) => MedicationKnowledgeMonograph.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.monograph',
              },
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<MedicationKnowledgeIngredient>(
            (v) => MedicationKnowledgeIngredient.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      preparationInstruction: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'preparationInstruction',
        FhirMarkdown.fromJson,
        '$objectPath.preparationInstruction',
      ),
      intendedRoute: (json['intendedRoute'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.intendedRoute',
              },
            ),
          )
          .toList(),
      cost: (json['cost'] as List<dynamic>?)
          ?.map<MedicationKnowledgeCost>(
            (v) => MedicationKnowledgeCost.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.cost',
              },
            ),
          )
          .toList(),
      monitoringProgram: (json['monitoringProgram'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMonitoringProgram>(
            (v) => MedicationKnowledgeMonitoringProgram.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.monitoringProgram',
              },
            ),
          )
          .toList(),
      administrationGuidelines:
          (json['administrationGuidelines'] as List<dynamic>?)
              ?.map<MedicationKnowledgeAdministrationGuidelines>(
                (v) => MedicationKnowledgeAdministrationGuidelines.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.administrationGuidelines',
                  },
                ),
              )
              .toList(),
      medicineClassification: (json['medicineClassification'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMedicineClassification>(
            (v) => MedicationKnowledgeMedicineClassification.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.medicineClassification',
              },
            ),
          )
          .toList(),
      packaging: JsonParser.parseObject<MedicationKnowledgePackaging>(
        json,
        'packaging',
        MedicationKnowledgePackaging.fromJson,
        '$objectPath.packaging',
      ),
      drugCharacteristic: (json['drugCharacteristic'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDrugCharacteristic>(
            (v) => MedicationKnowledgeDrugCharacteristic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.drugCharacteristic',
              },
            ),
          )
          .toList(),
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contraindication',
              },
            ),
          )
          .toList(),
      regulatory: (json['regulatory'] as List<dynamic>?)
          ?.map<MedicationKnowledgeRegulatory>(
            (v) => MedicationKnowledgeRegulatory.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.regulatory',
              },
            ),
          )
          .toList(),
      kinetics: (json['kinetics'] as List<dynamic>?)
          ?.map<MedicationKnowledgeKinetics>(
            (v) => MedicationKnowledgeKinetics.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.kinetics',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledge]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledge.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledge.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledge.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledge '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledge]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledge.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledge';

  /// [code]
  /// A code that specifies this medication, or a textual description if no
  /// code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  /// code systems.
  final CodeableConcept? code;

  /// [status]
  /// A code to indicate if the medication is in active use. The status
  /// refers to the validity about the information of the medication and not
  /// to its medicinal properties.
  final MedicationKnowledgeStatusCodes? status;

  /// [manufacturer]
  /// Describes the details of the manufacturer of the medication product.
  /// This is not intended to represent the distributor of a medication
  /// product.
  final Reference? manufacturer;

  /// [doseForm]
  /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? doseForm;

  /// [amount]
  /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute
  /// provides additional clarification of the package amount (For example, 3
  /// mL, 10mL, etc.).
  final Quantity? amount;

  /// [synonym]
  /// Additional names for a medication, for example, the name(s) given to a
  /// medication in different countries. For example, acetaminophen and
  /// paracetamol or salbutamol and albuterol.
  final List<FhirString>? synonym;

  /// [relatedMedicationKnowledge]
  /// Associated or related knowledge about a medication.
  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge;

  /// [associatedMedication]
  /// Associated or related medications. For example, if the medication is a
  /// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  /// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
  /// this would link to a branded product (e.g. Crestor).
  final List<Reference>? associatedMedication;

  /// [productType]
  /// Category of the medication or product (e.g. branded product,
  /// therapeutic moeity, generic product, innovator product, etc.).
  final List<CodeableConcept>? productType;

  /// [monograph]
  /// Associated documentation about the medication.
  final List<MedicationKnowledgeMonograph>? monograph;

  /// [ingredient]
  /// Identifies a particular constituent of interest in the product.
  final List<MedicationKnowledgeIngredient>? ingredient;

  /// [preparationInstruction]
  /// The instructions for preparing the medication.
  final FhirMarkdown? preparationInstruction;

  /// [intendedRoute]
  /// The intended or approved route of administration.
  final List<CodeableConcept>? intendedRoute;

  /// [cost]
  /// The price of the medication.
  final List<MedicationKnowledgeCost>? cost;

  /// [monitoringProgram]
  /// The program under which the medication is reviewed.
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;

  /// [administrationGuidelines]
  /// Guidelines for the administration of the medication.
  final List<MedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines;

  /// [medicineClassification]
  /// Categorization of the medication within a formulary or classification
  /// system.
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;

  /// [packaging]
  /// Information that only applies to packages (not products).
  final MedicationKnowledgePackaging? packaging;

  /// [drugCharacteristic]
  /// Specifies descriptive properties of the medicine, such as color, shape,
  /// imprints, etc.
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;

  /// [contraindication]
  /// Potential clinical issue with or between medication(s) (for example,
  /// drug-drug interaction, drug-disease contraindication, drug-allergy
  /// interaction, etc.).
  final List<Reference>? contraindication;

  /// [regulatory]
  /// Regulatory information about a medication.
  final List<MedicationKnowledgeRegulatory>? regulatory;

  /// [kinetics]
  /// The time course of drug absorption, distribution, metabolism and
  /// excretion of a medication from the body.
  final List<MedicationKnowledgeKinetics>? kinetics;
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
      'code',
      code,
    );
    addField(
      'status',
      status,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'doseForm',
      doseForm,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'synonym',
      synonym,
    );
    addField(
      'relatedMedicationKnowledge',
      relatedMedicationKnowledge,
    );
    addField(
      'associatedMedication',
      associatedMedication,
    );
    addField(
      'productType',
      productType,
    );
    addField(
      'monograph',
      monograph,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'preparationInstruction',
      preparationInstruction,
    );
    addField(
      'intendedRoute',
      intendedRoute,
    );
    addField(
      'cost',
      cost,
    );
    addField(
      'monitoringProgram',
      monitoringProgram,
    );
    addField(
      'administrationGuidelines',
      administrationGuidelines,
    );
    addField(
      'medicineClassification',
      medicineClassification,
    );
    addField(
      'packaging',
      packaging,
    );
    addField(
      'drugCharacteristic',
      drugCharacteristic,
    );
    addField(
      'contraindication',
      contraindication,
    );
    addField(
      'regulatory',
      regulatory,
    );
    addField(
      'kinetics',
      kinetics,
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
      'code',
      'status',
      'manufacturer',
      'doseForm',
      'amount',
      'synonym',
      'relatedMedicationKnowledge',
      'associatedMedication',
      'productType',
      'monograph',
      'ingredient',
      'preparationInstruction',
      'intendedRoute',
      'cost',
      'monitoringProgram',
      'administrationGuidelines',
      'medicineClassification',
      'packaging',
      'drugCharacteristic',
      'contraindication',
      'regulatory',
      'kinetics',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'doseForm':
        if (doseForm != null) {
          fields.add(doseForm!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'synonym':
        if (synonym != null) {
          fields.addAll(synonym!);
        }
      case 'relatedMedicationKnowledge':
        if (relatedMedicationKnowledge != null) {
          fields.addAll(relatedMedicationKnowledge!);
        }
      case 'associatedMedication':
        if (associatedMedication != null) {
          fields.addAll(associatedMedication!);
        }
      case 'productType':
        if (productType != null) {
          fields.addAll(productType!);
        }
      case 'monograph':
        if (monograph != null) {
          fields.addAll(monograph!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'preparationInstruction':
        if (preparationInstruction != null) {
          fields.add(preparationInstruction!);
        }
      case 'intendedRoute':
        if (intendedRoute != null) {
          fields.addAll(intendedRoute!);
        }
      case 'cost':
        if (cost != null) {
          fields.addAll(cost!);
        }
      case 'monitoringProgram':
        if (monitoringProgram != null) {
          fields.addAll(monitoringProgram!);
        }
      case 'administrationGuidelines':
        if (administrationGuidelines != null) {
          fields.addAll(administrationGuidelines!);
        }
      case 'medicineClassification':
        if (medicineClassification != null) {
          fields.addAll(medicineClassification!);
        }
      case 'packaging':
        if (packaging != null) {
          fields.add(packaging!);
        }
      case 'drugCharacteristic':
        if (drugCharacteristic != null) {
          fields.addAll(drugCharacteristic!);
        }
      case 'contraindication':
        if (contraindication != null) {
          fields.addAll(contraindication!);
        }
      case 'regulatory':
        if (regulatory != null) {
          fields.addAll(regulatory!);
        }
      case 'kinetics':
        if (kinetics != null) {
          fields.addAll(kinetics!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is MedicationKnowledgeStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufacturer':
        {
          if (child is Reference) {
            return copyWith(manufacturer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseForm':
        {
          if (child is CodeableConcept) {
            return copyWith(doseForm: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is Quantity) {
            return copyWith(amount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'synonym':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?synonym, ...child];
            return copyWith(synonym: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?synonym, child];
            return copyWith(synonym: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatedMedicationKnowledge':
        {
          if (child is List<MedicationKnowledgeRelatedMedicationKnowledge>) {
            // Add all elements from passed list
            final newList = [...?relatedMedicationKnowledge, ...child];
            return copyWith(relatedMedicationKnowledge: newList);
          } else if (child is MedicationKnowledgeRelatedMedicationKnowledge) {
            // Add single element to existing list or create new list
            final newList = [...?relatedMedicationKnowledge, child];
            return copyWith(relatedMedicationKnowledge: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'associatedMedication':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?associatedMedication, ...child];
            return copyWith(associatedMedication: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?associatedMedication, child];
            return copyWith(associatedMedication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productType':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?productType, ...child];
            return copyWith(productType: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?productType, child];
            return copyWith(productType: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'monograph':
        {
          if (child is List<MedicationKnowledgeMonograph>) {
            // Add all elements from passed list
            final newList = [...?monograph, ...child];
            return copyWith(monograph: newList);
          } else if (child is MedicationKnowledgeMonograph) {
            // Add single element to existing list or create new list
            final newList = [...?monograph, child];
            return copyWith(monograph: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ingredient':
        {
          if (child is List<MedicationKnowledgeIngredient>) {
            // Add all elements from passed list
            final newList = [...?ingredient, ...child];
            return copyWith(ingredient: newList);
          } else if (child is MedicationKnowledgeIngredient) {
            // Add single element to existing list or create new list
            final newList = [...?ingredient, child];
            return copyWith(ingredient: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preparationInstruction':
        {
          if (child is FhirMarkdown) {
            return copyWith(preparationInstruction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'intendedRoute':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?intendedRoute, ...child];
            return copyWith(intendedRoute: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?intendedRoute, child];
            return copyWith(intendedRoute: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cost':
        {
          if (child is List<MedicationKnowledgeCost>) {
            // Add all elements from passed list
            final newList = [...?cost, ...child];
            return copyWith(cost: newList);
          } else if (child is MedicationKnowledgeCost) {
            // Add single element to existing list or create new list
            final newList = [...?cost, child];
            return copyWith(cost: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'monitoringProgram':
        {
          if (child is List<MedicationKnowledgeMonitoringProgram>) {
            // Add all elements from passed list
            final newList = [...?monitoringProgram, ...child];
            return copyWith(monitoringProgram: newList);
          } else if (child is MedicationKnowledgeMonitoringProgram) {
            // Add single element to existing list or create new list
            final newList = [...?monitoringProgram, child];
            return copyWith(monitoringProgram: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'administrationGuidelines':
        {
          if (child is List<MedicationKnowledgeAdministrationGuidelines>) {
            // Add all elements from passed list
            final newList = [...?administrationGuidelines, ...child];
            return copyWith(administrationGuidelines: newList);
          } else if (child is MedicationKnowledgeAdministrationGuidelines) {
            // Add single element to existing list or create new list
            final newList = [...?administrationGuidelines, child];
            return copyWith(administrationGuidelines: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicineClassification':
        {
          if (child is List<MedicationKnowledgeMedicineClassification>) {
            // Add all elements from passed list
            final newList = [...?medicineClassification, ...child];
            return copyWith(medicineClassification: newList);
          } else if (child is MedicationKnowledgeMedicineClassification) {
            // Add single element to existing list or create new list
            final newList = [...?medicineClassification, child];
            return copyWith(medicineClassification: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'packaging':
        {
          if (child is MedicationKnowledgePackaging) {
            return copyWith(packaging: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'drugCharacteristic':
        {
          if (child is List<MedicationKnowledgeDrugCharacteristic>) {
            // Add all elements from passed list
            final newList = [...?drugCharacteristic, ...child];
            return copyWith(drugCharacteristic: newList);
          } else if (child is MedicationKnowledgeDrugCharacteristic) {
            // Add single element to existing list or create new list
            final newList = [...?drugCharacteristic, child];
            return copyWith(drugCharacteristic: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contraindication':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?contraindication, ...child];
            return copyWith(contraindication: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?contraindication, child];
            return copyWith(contraindication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'regulatory':
        {
          if (child is List<MedicationKnowledgeRegulatory>) {
            // Add all elements from passed list
            final newList = [...?regulatory, ...child];
            return copyWith(regulatory: newList);
          } else if (child is MedicationKnowledgeRegulatory) {
            // Add single element to existing list or create new list
            final newList = [...?regulatory, child];
            return copyWith(regulatory: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'kinetics':
        {
          if (child is List<MedicationKnowledgeKinetics>) {
            // Add all elements from passed list
            final newList = [...?kinetics, ...child];
            return copyWith(kinetics: newList);
          } else if (child is MedicationKnowledgeKinetics) {
            // Add single element to existing list or create new list
            final newList = [...?kinetics, child];
            return copyWith(kinetics: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['CodeableConcept'];
      case 'status':
        return ['FhirCode'];
      case 'manufacturer':
        return ['Reference'];
      case 'doseForm':
        return ['CodeableConcept'];
      case 'amount':
        return ['Quantity'];
      case 'synonym':
        return ['FhirString'];
      case 'relatedMedicationKnowledge':
        return ['MedicationKnowledgeRelatedMedicationKnowledge'];
      case 'associatedMedication':
        return ['Reference'];
      case 'productType':
        return ['CodeableConcept'];
      case 'monograph':
        return ['MedicationKnowledgeMonograph'];
      case 'ingredient':
        return ['MedicationKnowledgeIngredient'];
      case 'preparationInstruction':
        return ['FhirMarkdown'];
      case 'intendedRoute':
        return ['CodeableConcept'];
      case 'cost':
        return ['MedicationKnowledgeCost'];
      case 'monitoringProgram':
        return ['MedicationKnowledgeMonitoringProgram'];
      case 'administrationGuidelines':
        return ['MedicationKnowledgeAdministrationGuidelines'];
      case 'medicineClassification':
        return ['MedicationKnowledgeMedicineClassification'];
      case 'packaging':
        return ['MedicationKnowledgePackaging'];
      case 'drugCharacteristic':
        return ['MedicationKnowledgeDrugCharacteristic'];
      case 'contraindication':
        return ['Reference'];
      case 'regulatory':
        return ['MedicationKnowledgeRegulatory'];
      case 'kinetics':
        return ['MedicationKnowledgeKinetics'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledge]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledge createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: MedicationKnowledgeStatusCodes.empty(),
          );
        }
      case 'manufacturer':
        {
          return copyWith(
            manufacturer: Reference.empty(),
          );
        }
      case 'doseForm':
        {
          return copyWith(
            doseForm: CodeableConcept.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Quantity.empty(),
          );
        }
      case 'synonym':
        {
          return copyWith(
            synonym: <FhirString>[],
          );
        }
      case 'relatedMedicationKnowledge':
        {
          return copyWith(
            relatedMedicationKnowledge: <MedicationKnowledgeRelatedMedicationKnowledge>[],
          );
        }
      case 'associatedMedication':
        {
          return copyWith(
            associatedMedication: <Reference>[],
          );
        }
      case 'productType':
        {
          return copyWith(
            productType: <CodeableConcept>[],
          );
        }
      case 'monograph':
        {
          return copyWith(
            monograph: <MedicationKnowledgeMonograph>[],
          );
        }
      case 'ingredient':
        {
          return copyWith(
            ingredient: <MedicationKnowledgeIngredient>[],
          );
        }
      case 'preparationInstruction':
        {
          return copyWith(
            preparationInstruction: FhirMarkdown.empty(),
          );
        }
      case 'intendedRoute':
        {
          return copyWith(
            intendedRoute: <CodeableConcept>[],
          );
        }
      case 'cost':
        {
          return copyWith(
            cost: <MedicationKnowledgeCost>[],
          );
        }
      case 'monitoringProgram':
        {
          return copyWith(
            monitoringProgram: <MedicationKnowledgeMonitoringProgram>[],
          );
        }
      case 'administrationGuidelines':
        {
          return copyWith(
            administrationGuidelines: <MedicationKnowledgeAdministrationGuidelines>[],
          );
        }
      case 'medicineClassification':
        {
          return copyWith(
            medicineClassification: <MedicationKnowledgeMedicineClassification>[],
          );
        }
      case 'packaging':
        {
          return copyWith(
            packaging: MedicationKnowledgePackaging.empty(),
          );
        }
      case 'drugCharacteristic':
        {
          return copyWith(
            drugCharacteristic: <MedicationKnowledgeDrugCharacteristic>[],
          );
        }
      case 'contraindication':
        {
          return copyWith(
            contraindication: <Reference>[],
          );
        }
      case 'regulatory':
        {
          return copyWith(
            regulatory: <MedicationKnowledgeRegulatory>[],
          );
        }
      case 'kinetics':
        {
          return copyWith(
            kinetics: <MedicationKnowledgeKinetics>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledge clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool status = false,
    bool manufacturer = false,
    bool doseForm = false,
    bool amount = false,
    bool synonym = false,
    bool relatedMedicationKnowledge = false,
    bool associatedMedication = false,
    bool productType = false,
    bool monograph = false,
    bool ingredient = false,
    bool preparationInstruction = false,
    bool intendedRoute = false,
    bool cost = false,
    bool monitoringProgram = false,
    bool administrationGuidelines = false,
    bool medicineClassification = false,
    bool packaging = false,
    bool drugCharacteristic = false,
    bool contraindication = false,
    bool regulatory = false,
    bool kinetics = false,
  }) {
    return MedicationKnowledge(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code ? null : this.code,
      status: status ? null : this.status,
      manufacturer: manufacturer ? null : this.manufacturer,
      doseForm: doseForm ? null : this.doseForm,
      amount: amount ? null : this.amount,
      synonym: synonym ? null : this.synonym,
      relatedMedicationKnowledge:
          relatedMedicationKnowledge ? null : this.relatedMedicationKnowledge,
      associatedMedication:
          associatedMedication ? null : this.associatedMedication,
      productType: productType ? null : this.productType,
      monograph: monograph ? null : this.monograph,
      ingredient: ingredient ? null : this.ingredient,
      preparationInstruction:
          preparationInstruction ? null : this.preparationInstruction,
      intendedRoute: intendedRoute ? null : this.intendedRoute,
      cost: cost ? null : this.cost,
      monitoringProgram: monitoringProgram ? null : this.monitoringProgram,
      administrationGuidelines:
          administrationGuidelines ? null : this.administrationGuidelines,
      medicineClassification:
          medicineClassification ? null : this.medicineClassification,
      packaging: packaging ? null : this.packaging,
      drugCharacteristic: drugCharacteristic ? null : this.drugCharacteristic,
      contraindication: contraindication ? null : this.contraindication,
      regulatory: regulatory ? null : this.regulatory,
      kinetics: kinetics ? null : this.kinetics,
    );
  }

  @override
  MedicationKnowledge clone() => throw UnimplementedError();
  @override
  MedicationKnowledge copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    MedicationKnowledgeStatusCodes? status,
    Reference? manufacturer,
    CodeableConcept? doseForm,
    Quantity? amount,
    List<FhirString>? synonym,
    List<MedicationKnowledgeRelatedMedicationKnowledge>?
        relatedMedicationKnowledge,
    List<Reference>? associatedMedication,
    List<CodeableConcept>? productType,
    List<MedicationKnowledgeMonograph>? monograph,
    List<MedicationKnowledgeIngredient>? ingredient,
    FhirMarkdown? preparationInstruction,
    List<CodeableConcept>? intendedRoute,
    List<MedicationKnowledgeCost>? cost,
    List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
    List<MedicationKnowledgeAdministrationGuidelines>? administrationGuidelines,
    List<MedicationKnowledgeMedicineClassification>? medicineClassification,
    MedicationKnowledgePackaging? packaging,
    List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
    List<Reference>? contraindication,
    List<MedicationKnowledgeRegulatory>? regulatory,
    List<MedicationKnowledgeKinetics>? kinetics,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MedicationKnowledge(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      manufacturer: manufacturer?.copyWith(
            objectPath: '$newObjectPath.manufacturer',
          ) ??
          this.manufacturer,
      doseForm: doseForm?.copyWith(
            objectPath: '$newObjectPath.doseForm',
          ) ??
          this.doseForm,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      synonym: synonym
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.synonym',
                ),
              )
              .toList() ??
          this.synonym,
      relatedMedicationKnowledge: relatedMedicationKnowledge
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedMedicationKnowledge',
                ),
              )
              .toList() ??
          this.relatedMedicationKnowledge,
      associatedMedication: associatedMedication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.associatedMedication',
                ),
              )
              .toList() ??
          this.associatedMedication,
      productType: productType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.productType',
                ),
              )
              .toList() ??
          this.productType,
      monograph: monograph
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.monograph',
                ),
              )
              .toList() ??
          this.monograph,
      ingredient: ingredient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.ingredient',
                ),
              )
              .toList() ??
          this.ingredient,
      preparationInstruction: preparationInstruction?.copyWith(
            objectPath: '$newObjectPath.preparationInstruction',
          ) ??
          this.preparationInstruction,
      intendedRoute: intendedRoute
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.intendedRoute',
                ),
              )
              .toList() ??
          this.intendedRoute,
      cost: cost
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.cost',
                ),
              )
              .toList() ??
          this.cost,
      monitoringProgram: monitoringProgram
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.monitoringProgram',
                ),
              )
              .toList() ??
          this.monitoringProgram,
      administrationGuidelines: administrationGuidelines
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.administrationGuidelines',
                ),
              )
              .toList() ??
          this.administrationGuidelines,
      medicineClassification: medicineClassification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.medicineClassification',
                ),
              )
              .toList() ??
          this.medicineClassification,
      packaging: packaging?.copyWith(
            objectPath: '$newObjectPath.packaging',
          ) ??
          this.packaging,
      drugCharacteristic: drugCharacteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.drugCharacteristic',
                ),
              )
              .toList() ??
          this.drugCharacteristic,
      contraindication: contraindication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contraindication',
                ),
              )
              .toList() ??
          this.contraindication,
      regulatory: regulatory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.regulatory',
                ),
              )
              .toList() ??
          this.regulatory,
      kinetics: kinetics
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.kinetics',
                ),
              )
              .toList() ??
          this.kinetics,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledge) {
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
    if (!equalsDeepWithNull(
      code,
      o.code,
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
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseForm,
      o.doseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      synonym,
      o.synonym,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeRelatedMedicationKnowledge>(
      relatedMedicationKnowledge,
      o.relatedMedicationKnowledge,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      associatedMedication,
      o.associatedMedication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      productType,
      o.productType,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMonograph>(
      monograph,
      o.monograph,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeIngredient>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preparationInstruction,
      o.preparationInstruction,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      intendedRoute,
      o.intendedRoute,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeCost>(
      cost,
      o.cost,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMonitoringProgram>(
      monitoringProgram,
      o.monitoringProgram,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeAdministrationGuidelines>(
      administrationGuidelines,
      o.administrationGuidelines,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMedicineClassification>(
      medicineClassification,
      o.medicineClassification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDrugCharacteristic>(
      drugCharacteristic,
      o.drugCharacteristic,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      contraindication,
      o.contraindication,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeRegulatory>(
      regulatory,
      o.regulatory,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeKinetics>(
      kinetics,
      o.kinetics,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeRelatedMedicationKnowledge]
/// Associated or related knowledge about a medication.
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledge]

  const MedicationKnowledgeRelatedMedicationKnowledge({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.relatedMedicationKnowledge',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeRelatedMedicationKnowledge.empty() =>
      MedicationKnowledgeRelatedMedicationKnowledge(
        type: CodeableConcept.empty(),
        reference: <Reference>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.relatedMedicationKnowledge';
    return MedicationKnowledgeRelatedMedicationKnowledge(
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
      )!,
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reference',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeRelatedMedicationKnowledge]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeRelatedMedicationKnowledge '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledge]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeRelatedMedicationKnowledge';

  /// [type]
  /// The category of the associated medication knowledge reference.
  final CodeableConcept type;

  /// [reference]
  /// Associated documentation about the associated medication knowledge.
  final List<Reference> reference;
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
      'reference',
      reference,
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
      'reference',
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
        fields.add(type);
      case 'reference':
        fields.addAll(reference);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...reference, ...child];
            return copyWith(reference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...reference, child];
            return copyWith(reference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'reference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeRelatedMedicationKnowledge]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeRelatedMedicationKnowledge createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeRelatedMedicationKnowledge clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      reference: reference,
    );
  }

  @override
  MedicationKnowledgeRelatedMedicationKnowledge clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeRelatedMedicationKnowledge copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeRelatedMedicationKnowledge(
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
      reference: reference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reference',
                ),
              )
              .toList() ??
          this.reference,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeRelatedMedicationKnowledge) {
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
    if (!listEquals<Reference>(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMonograph]
/// Associated documentation about the medication.
class MedicationKnowledgeMonograph extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMonograph]

  const MedicationKnowledgeMonograph({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.monograph',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeMonograph.empty() =>
      const MedicationKnowledgeMonograph();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonograph.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.monograph';
    return MedicationKnowledgeMonograph(
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
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
        '$objectPath.source',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMonograph]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMonograph.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMonograph.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMonograph.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMonograph '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMonograph]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMonograph.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMonograph.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMonograph';

  /// [type]
  /// The category of documentation about the medication. (e.g. professional
  /// monograph, patient education monograph).
  final CodeableConcept? type;

  /// [source]
  /// Associated documentation about the medication.
  final Reference? source;
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
      'source',
      source,
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
      'source',
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
      case 'source':
        if (source != null) {
          fields.add(source!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is Reference) {
            return copyWith(source: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'source':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMonograph]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeMonograph createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'source':
        {
          return copyWith(
            source: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeMonograph clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool source = false,
  }) {
    return MedicationKnowledgeMonograph(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      source: source ? null : this.source,
    );
  }

  @override
  MedicationKnowledgeMonograph clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeMonograph copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeMonograph(
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
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMonograph) {
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
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeIngredient]
/// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredient extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeIngredient]

  const MedicationKnowledgeIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    this.isActive,
    this.strength,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.ingredient',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeIngredient.empty() =>
      MedicationKnowledgeIngredient(
        itemX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIngredient.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.ingredient';
    return MedicationKnowledgeIngredient(
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
      itemX: JsonParser.parsePolymorphic<ItemXMedicationKnowledgeIngredient>(
        json,
        {
          'itemCodeableConcept': CodeableConcept.fromJson,
          'itemReference': Reference.fromJson,
        },
        objectPath,
      )!,
      isActive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isActive',
        FhirBoolean.fromJson,
        '$objectPath.isActive',
      ),
      strength: JsonParser.parseObject<Ratio>(
        json,
        'strength',
        Ratio.fromJson,
        '$objectPath.strength',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeIngredient]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeIngredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeIngredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeIngredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeIngredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeIngredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeIngredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeIngredient';

  /// [itemX]
  /// The actual ingredient - either a substance (simple ingredient) or
  /// another medication.
  final ItemXMedicationKnowledgeIngredient itemX;

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// [isActive]
  /// Indication of whether this ingredient affects the therapeutic action of
  /// the drug.
  final FhirBoolean? isActive;

  /// [strength]
  /// Specifies how many (or how much) of the items there are in this
  /// Medication. For example, 250 mg per tablet. This is expressed as a
  /// ratio where the numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
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
    final itemXFhirType = itemX.fhirType;
    addField(
      'item${itemXFhirType.capitalize()}',
      itemX,
    );

    addField(
      'isActive',
      isActive,
    );
    addField(
      'strength',
      strength,
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
      'itemX',
      'isActive',
      'strength',
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
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
        }
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'isActive':
        if (isActive != null) {
          fields.add(isActive!);
        }
      case 'strength':
        if (strength != null) {
          fields.add(strength!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemX':
        {
          if (child is ItemXMedicationKnowledgeIngredient) {
            return copyWith(itemX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(itemX: child);
            }
            if (child is Reference) {
              return copyWith(itemX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(itemX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemReference':
        {
          if (child is Reference) {
            return copyWith(itemX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isActive':
        {
          if (child is FhirBoolean) {
            return copyWith(isActive: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strength':
        {
          if (child is Ratio) {
            return copyWith(strength: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'item':
      case 'itemX':
        return ['CodeableConcept', 'Reference'];
      case 'itemCodeableConcept':
        return ['CodeableConcept'];
      case 'itemReference':
        return ['Reference'];
      case 'isActive':
        return ['FhirBoolean'];
      case 'strength':
        return ['Ratio'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeIngredient]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeIngredient createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'item':
      case 'itemX':
      case 'itemCodeableConcept':
        {
          return copyWith(
            itemX: CodeableConcept.empty(),
          );
        }
      case 'itemReference':
        {
          return copyWith(
            itemX: Reference.empty(),
          );
        }
      case 'isActive':
        {
          return copyWith(
            isActive: FhirBoolean.empty(),
          );
        }
      case 'strength':
        {
          return copyWith(
            strength: Ratio.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeIngredient clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool isActive = false,
    bool strength = false,
  }) {
    return MedicationKnowledgeIngredient(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      itemX: itemX,
      isActive: isActive ? null : this.isActive,
      strength: strength ? null : this.strength,
    );
  }

  @override
  MedicationKnowledgeIngredient clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeIngredient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ItemXMedicationKnowledgeIngredient? itemX,
    FhirBoolean? isActive,
    Ratio? strength,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeIngredient(
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
      itemX: itemX?.copyWith(
            objectPath: '$newObjectPath.itemX',
          ) as ItemXMedicationKnowledgeIngredient? ??
          this.itemX,
      isActive: isActive?.copyWith(
            objectPath: '$newObjectPath.isActive',
          ) ??
          this.isActive,
      strength: strength?.copyWith(
            objectPath: '$newObjectPath.strength',
          ) ??
          this.strength,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeIngredient) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isActive,
      o.isActive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strength,
      o.strength,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeCost]
/// The price of the medication.
class MedicationKnowledgeCost extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeCost]

  const MedicationKnowledgeCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.source,
    required this.cost,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.cost',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeCost.empty() => MedicationKnowledgeCost(
        type: CodeableConcept.empty(),
        cost: Money.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeCost.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.cost';
    return MedicationKnowledgeCost(
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
      )!,
      source: JsonParser.parsePrimitive<FhirString>(
        json,
        'source',
        FhirString.fromJson,
        '$objectPath.source',
      ),
      cost: JsonParser.parseObject<Money>(
        json,
        'cost',
        Money.fromJson,
        '$objectPath.cost',
      )!,
    );
  }

  /// Deserialize [MedicationKnowledgeCost]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeCost.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeCost.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeCost.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeCost '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeCost.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeCost';

  /// [type]
  /// The category of the cost information. For example, manufacturers' cost,
  /// patient cost, claim reimbursement cost, actual acquisition cost.
  final CodeableConcept type;

  /// [source]
  /// The source or owner that assigns the price to the medication.
  final FhirString? source;

  /// [cost]
  /// The price of the medication.
  final Money cost;
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
      'source',
      source,
    );
    addField(
      'cost',
      cost,
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
      'source',
      'cost',
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
        fields.add(type);
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'cost':
        fields.add(cost);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is FhirString) {
            return copyWith(source: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cost':
        {
          if (child is Money) {
            return copyWith(cost: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'source':
        return ['FhirString'];
      case 'cost':
        return ['Money'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeCost]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeCost createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'source':
        {
          return copyWith(
            source: FhirString.empty(),
          );
        }
      case 'cost':
        {
          return copyWith(
            cost: Money.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeCost clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool source = false,
  }) {
    return MedicationKnowledgeCost(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      source: source ? null : this.source,
      cost: cost,
    );
  }

  @override
  MedicationKnowledgeCost clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? source,
    Money? cost,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeCost(
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
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      cost: cost?.copyWith(
            objectPath: '$newObjectPath.cost',
          ) ??
          this.cost,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeCost) {
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
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cost,
      o.cost,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMonitoringProgram]
/// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgram extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMonitoringProgram]

  const MedicationKnowledgeMonitoringProgram({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.monitoringProgram',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeMonitoringProgram.empty() =>
      const MedicationKnowledgeMonitoringProgram();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonitoringProgram.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.monitoringProgram';
    return MedicationKnowledgeMonitoringProgram(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMonitoringProgram]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMonitoringProgram.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMonitoringProgram.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMonitoringProgram.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMonitoringProgram '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMonitoringProgram]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMonitoringProgram.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMonitoringProgram.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMonitoringProgram';

  /// [type]
  /// Type of program under which the medication is monitored.
  final CodeableConcept? type;

  /// [name]
  /// Name of the reviewing program.
  final FhirString? name;
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
      'name',
      name,
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
      'name',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'name':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMonitoringProgram]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeMonitoringProgram createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeMonitoringProgram clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool name = false,
  }) {
    return MedicationKnowledgeMonitoringProgram(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      name: name ? null : this.name,
    );
  }

  @override
  MedicationKnowledgeMonitoringProgram clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeMonitoringProgram copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? name,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeMonitoringProgram(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMonitoringProgram) {
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
      name,
      o.name,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeAdministrationGuidelines]
/// Guidelines for the administration of the medication.
class MedicationKnowledgeAdministrationGuidelines extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeAdministrationGuidelines]

  const MedicationKnowledgeAdministrationGuidelines({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.dosage,
    this.indicationX,
    this.patientCharacteristics,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.administrationGuidelines',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeAdministrationGuidelines.empty() =>
      const MedicationKnowledgeAdministrationGuidelines();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeAdministrationGuidelines.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.administrationGuidelines';
    return MedicationKnowledgeAdministrationGuidelines(
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
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDosage>(
            (v) => MedicationKnowledgeDosage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
      indicationX: JsonParser.parsePolymorphic<
          IndicationXMedicationKnowledgeAdministrationGuidelines>(
        json,
        {
          'indicationCodeableConcept': CodeableConcept.fromJson,
          'indicationReference': Reference.fromJson,
        },
        objectPath,
      ),
      patientCharacteristics: (json['patientCharacteristics'] as List<dynamic>?)
          ?.map<MedicationKnowledgePatientCharacteristics>(
            (v) => MedicationKnowledgePatientCharacteristics.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientCharacteristics',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeAdministrationGuidelines]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeAdministrationGuidelines.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeAdministrationGuidelines.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeAdministrationGuidelines.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeAdministrationGuidelines '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeAdministrationGuidelines]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeAdministrationGuidelines.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeAdministrationGuidelines.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeAdministrationGuidelines';

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  final List<MedicationKnowledgeDosage>? dosage;

  /// [indicationX]
  /// Indication for use that apply to the specific administration
  /// guidelines.
  final IndicationXMedicationKnowledgeAdministrationGuidelines? indicationX;

  /// Getter for [indicationCodeableConcept] as a CodeableConcept
  CodeableConcept? get indicationCodeableConcept =>
      indicationX?.isAs<CodeableConcept>();

  /// Getter for [indicationReference] as a Reference
  Reference? get indicationReference => indicationX?.isAs<Reference>();

  /// [patientCharacteristics]
  /// Characteristics of the patient that are relevant to the administration
  /// guidelines (for example, height, weight, gender, etc.).
  final List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics;
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
      'dosage',
      dosage,
    );
    if (indicationX != null) {
      final fhirType = indicationX!.fhirType;
      addField(
        'indication${fhirType.capitalize()}',
        indicationX,
      );
    }

    addField(
      'patientCharacteristics',
      patientCharacteristics,
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
      'dosage',
      'indicationX',
      'patientCharacteristics',
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
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
        }
      case 'indication':
        fields.add(indicationX!);
      case 'indicationX':
        fields.add(indicationX!);
      case 'indicationCodeableConcept':
        if (indicationX is CodeableConcept) {
          fields.add(indicationX!);
        }
      case 'indicationReference':
        if (indicationX is Reference) {
          fields.add(indicationX!);
        }
      case 'patientCharacteristics':
        if (patientCharacteristics != null) {
          fields.addAll(patientCharacteristics!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dosage':
        {
          if (child is List<MedicationKnowledgeDosage>) {
            // Add all elements from passed list
            final newList = [...?dosage, ...child];
            return copyWith(dosage: newList);
          } else if (child is MedicationKnowledgeDosage) {
            // Add single element to existing list or create new list
            final newList = [...?dosage, child];
            return copyWith(dosage: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'indicationX':
        {
          if (child is IndicationXMedicationKnowledgeAdministrationGuidelines) {
            return copyWith(indicationX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(indicationX: child);
            }
            if (child is Reference) {
              return copyWith(indicationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indicationCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(indicationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'indicationReference':
        {
          if (child is Reference) {
            return copyWith(indicationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patientCharacteristics':
        {
          if (child is List<MedicationKnowledgePatientCharacteristics>) {
            // Add all elements from passed list
            final newList = [...?patientCharacteristics, ...child];
            return copyWith(patientCharacteristics: newList);
          } else if (child is MedicationKnowledgePatientCharacteristics) {
            // Add single element to existing list or create new list
            final newList = [...?patientCharacteristics, child];
            return copyWith(patientCharacteristics: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'dosage':
        return ['MedicationKnowledgeDosage'];
      case 'indication':
      case 'indicationX':
        return ['CodeableConcept', 'Reference'];
      case 'indicationCodeableConcept':
        return ['CodeableConcept'];
      case 'indicationReference':
        return ['Reference'];
      case 'patientCharacteristics':
        return ['MedicationKnowledgePatientCharacteristics'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeAdministrationGuidelines]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeAdministrationGuidelines createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'dosage':
        {
          return copyWith(
            dosage: <MedicationKnowledgeDosage>[],
          );
        }
      case 'indication':
      case 'indicationX':
      case 'indicationCodeableConcept':
        {
          return copyWith(
            indicationX: CodeableConcept.empty(),
          );
        }
      case 'indicationReference':
        {
          return copyWith(
            indicationX: Reference.empty(),
          );
        }
      case 'patientCharacteristics':
        {
          return copyWith(
            patientCharacteristics: <MedicationKnowledgePatientCharacteristics>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeAdministrationGuidelines clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool dosage = false,
    bool indication = false,
    bool patientCharacteristics = false,
  }) {
    return MedicationKnowledgeAdministrationGuidelines(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      dosage: dosage ? null : this.dosage,
      indicationX: indication ? null : indicationX,
      patientCharacteristics:
          patientCharacteristics ? null : this.patientCharacteristics,
    );
  }

  @override
  MedicationKnowledgeAdministrationGuidelines clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeAdministrationGuidelines copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MedicationKnowledgeDosage>? dosage,
    IndicationXMedicationKnowledgeAdministrationGuidelines? indicationX,
    List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeAdministrationGuidelines(
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
      dosage: dosage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dosage',
                ),
              )
              .toList() ??
          this.dosage,
      indicationX: indicationX?.copyWith(
            objectPath: '$newObjectPath.indicationX',
          ) as IndicationXMedicationKnowledgeAdministrationGuidelines? ??
          this.indicationX,
      patientCharacteristics: patientCharacteristics
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.patientCharacteristics',
                ),
              )
              .toList() ??
          this.patientCharacteristics,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeAdministrationGuidelines) {
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
    if (!listEquals<MedicationKnowledgeDosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      indicationX,
      o.indicationX,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgePatientCharacteristics>(
      patientCharacteristics,
      o.patientCharacteristics,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDosage]
/// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeDosage extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDosage]

  const MedicationKnowledgeDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.dosage,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.administrationGuidelines.dosage',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeDosage.empty() => MedicationKnowledgeDosage(
        type: CodeableConcept.empty(),
        dosage: <Dosage>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.administrationGuidelines.dosage';
    return MedicationKnowledgeDosage(
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
      )!,
      dosage: (json['dosage'] as List<dynamic>)
          .map<Dosage>(
            (v) => Dosage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDosage]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDosage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDosage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDosage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDosage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDosage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDosage';

  /// [type]
  /// The type of dosage (for example, prophylaxis, maintenance, therapeutic,
  /// etc.).
  final CodeableConcept type;

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  final List<Dosage> dosage;
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
      'dosage',
      dosage,
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
      'dosage',
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
        fields.add(type);
      case 'dosage':
        fields.addAll(dosage);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dosage':
        {
          if (child is List<Dosage>) {
            // Add all elements from passed list
            final newList = [...dosage, ...child];
            return copyWith(dosage: newList);
          } else if (child is Dosage) {
            // Add single element to existing list or create new list
            final newList = [...dosage, child];
            return copyWith(dosage: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'dosage':
        return ['Dosage'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeDosage]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeDosage createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'dosage':
        {
          return copyWith(
            dosage: <Dosage>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeDosage clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return MedicationKnowledgeDosage(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      dosage: dosage,
    );
  }

  @override
  MedicationKnowledgeDosage clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeDosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Dosage>? dosage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeDosage(
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
      dosage: dosage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dosage',
                ),
              )
              .toList() ??
          this.dosage,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeDosage) {
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
    if (!listEquals<Dosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgePatientCharacteristics]
/// Characteristics of the patient that are relevant to the administration
/// guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgePatientCharacteristics extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgePatientCharacteristics]

  const MedicationKnowledgePatientCharacteristics({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.characteristicX,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MedicationKnowledge.administrationGuidelines.patientCharacteristics',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgePatientCharacteristics.empty() =>
      MedicationKnowledgePatientCharacteristics(
        characteristicX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePatientCharacteristics.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MedicationKnowledge.administrationGuidelines.patientCharacteristics';
    return MedicationKnowledgePatientCharacteristics(
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
      characteristicX: JsonParser.parsePolymorphic<
          CharacteristicXMedicationKnowledgePatientCharacteristics>(
        json,
        {
          'characteristicCodeableConcept': CodeableConcept.fromJson,
          'characteristicQuantity': Quantity.fromJson,
        },
        objectPath,
      )!,
      value: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgePatientCharacteristics]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgePatientCharacteristics.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgePatientCharacteristics.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgePatientCharacteristics.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgePatientCharacteristics '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgePatientCharacteristics]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgePatientCharacteristics.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgePatientCharacteristics.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgePatientCharacteristics';

  /// [characteristicX]
  /// Specific characteristic that is relevant to the administration
  /// guideline (e.g. height, weight, gender).
  final CharacteristicXMedicationKnowledgePatientCharacteristics
      characteristicX;

  /// Getter for [characteristicCodeableConcept] as a CodeableConcept
  CodeableConcept? get characteristicCodeableConcept =>
      characteristicX.isAs<CodeableConcept>();

  /// Getter for [characteristicQuantity] as a Quantity
  Quantity? get characteristicQuantity => characteristicX.isAs<Quantity>();

  /// [value]
  /// The specific characteristic (e.g. height, weight, gender, etc.).
  final List<FhirString>? value;
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
    final characteristicXFhirType = characteristicX.fhirType;
    addField(
      'characteristic${characteristicXFhirType.capitalize()}',
      characteristicX,
    );

    addField(
      'value',
      value,
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
      'characteristicX',
      'value',
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
      case 'characteristic':
        fields.add(characteristicX);
      case 'characteristicX':
        fields.add(characteristicX);
      case 'characteristicCodeableConcept':
        if (characteristicX is CodeableConcept) {
          fields.add(characteristicX);
        }
      case 'characteristicQuantity':
        if (characteristicX is Quantity) {
          fields.add(characteristicX);
        }
      case 'value':
        if (value != null) {
          fields.addAll(value!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'characteristicX':
        {
          if (child
              is CharacteristicXMedicationKnowledgePatientCharacteristics) {
            return copyWith(characteristicX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(characteristicX: child);
            }
            if (child is Quantity) {
              return copyWith(characteristicX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristicCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(characteristicX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'characteristicQuantity':
        {
          if (child is Quantity) {
            return copyWith(characteristicX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?value, ...child];
            return copyWith(value: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?value, child];
            return copyWith(value: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'characteristic':
      case 'characteristicX':
        return ['CodeableConcept', 'Quantity'];
      case 'characteristicCodeableConcept':
        return ['CodeableConcept'];
      case 'characteristicQuantity':
        return ['Quantity'];
      case 'value':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgePatientCharacteristics]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgePatientCharacteristics createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'characteristic':
      case 'characteristicX':
      case 'characteristicCodeableConcept':
        {
          return copyWith(
            characteristicX: CodeableConcept.empty(),
          );
        }
      case 'characteristicQuantity':
        {
          return copyWith(
            characteristicX: Quantity.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: <FhirString>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgePatientCharacteristics clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool value = false,
  }) {
    return MedicationKnowledgePatientCharacteristics(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      characteristicX: characteristicX,
      value: value ? null : this.value,
    );
  }

  @override
  MedicationKnowledgePatientCharacteristics clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgePatientCharacteristics copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CharacteristicXMedicationKnowledgePatientCharacteristics? characteristicX,
    List<FhirString>? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgePatientCharacteristics(
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
      characteristicX: characteristicX?.copyWith(
            objectPath: '$newObjectPath.characteristicX',
          ) as CharacteristicXMedicationKnowledgePatientCharacteristics? ??
          this.characteristicX,
      value: value
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.value',
                ),
              )
              .toList() ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgePatientCharacteristics) {
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
      characteristicX,
      o.characteristicX,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMedicineClassification]
/// Categorization of the medication within a formulary or classification
/// system.
class MedicationKnowledgeMedicineClassification extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMedicineClassification]

  const MedicationKnowledgeMedicineClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.classification,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.medicineClassification',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeMedicineClassification.empty() =>
      MedicationKnowledgeMedicineClassification(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMedicineClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.medicineClassification';
    return MedicationKnowledgeMedicineClassification(
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
      )!,
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeMedicineClassification]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMedicineClassification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMedicineClassification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMedicineClassification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMedicineClassification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMedicineClassification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMedicineClassification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMedicineClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMedicineClassification';

  /// [type]
  /// The type of category for the medication (for example, therapeutic
  /// classification, therapeutic sub-classification).
  final CodeableConcept type;

  /// [classification]
  /// Specific category assigned to the medication (e.g. anti-infective,
  /// anti-hypertensive, antibiotic, etc.).
  final List<CodeableConcept>? classification;
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
      'classification',
      classification,
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
      'classification',
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
        fields.add(type);
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'classification':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?classification, ...child];
            return copyWith(classification: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?classification, child];
            return copyWith(classification: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'classification':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMedicineClassification]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeMedicineClassification createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'classification':
        {
          return copyWith(
            classification: <CodeableConcept>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeMedicineClassification clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool classification = false,
  }) {
    return MedicationKnowledgeMedicineClassification(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      classification: classification ? null : this.classification,
    );
  }

  @override
  MedicationKnowledgeMedicineClassification clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeMedicineClassification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classification,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeMedicineClassification(
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
      classification: classification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classification',
                ),
              )
              .toList() ??
          this.classification,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMedicineClassification) {
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
    if (!listEquals<CodeableConcept>(
      classification,
      o.classification,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgePackaging]
/// Information that only applies to packages (not products).
class MedicationKnowledgePackaging extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgePackaging]

  const MedicationKnowledgePackaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.quantity,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.packaging',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgePackaging.empty() =>
      const MedicationKnowledgePackaging();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePackaging.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.packaging';
    return MedicationKnowledgePackaging(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgePackaging]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgePackaging.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgePackaging.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgePackaging.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgePackaging '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgePackaging]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgePackaging.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgePackaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgePackaging';

  /// [type]
  /// A code that defines the specific type of packaging that the medication
  /// can be found in (e.g. blister sleeve, tube, bottle).
  final CodeableConcept? type;

  /// [quantity]
  /// The number of product units the package would contain if fully loaded.
  final Quantity? quantity;
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
      'quantity',
      quantity,
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
      'quantity',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgePackaging]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgePackaging createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgePackaging clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool quantity = false,
  }) {
    return MedicationKnowledgePackaging(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      quantity: quantity ? null : this.quantity,
    );
  }

  @override
  MedicationKnowledgePackaging clone() => throw UnimplementedError();
  @override
  MedicationKnowledgePackaging copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? quantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgePackaging(
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
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgePackaging) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDrugCharacteristic]
/// Specifies descriptive properties of the medicine, such as color, shape,
/// imprints, etc.
class MedicationKnowledgeDrugCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDrugCharacteristic]

  const MedicationKnowledgeDrugCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.drugCharacteristic',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeDrugCharacteristic.empty() =>
      const MedicationKnowledgeDrugCharacteristic();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.drugCharacteristic';
    return MedicationKnowledgeDrugCharacteristic(
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
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgeDrugCharacteristic>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueString': FhirString.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueBase64Binary': FhirBase64Binary.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeDrugCharacteristic]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDrugCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDrugCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDrugCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDrugCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDrugCharacteristic';

  /// [type]
  /// A code specifying which characteristic of the medicine is being
  /// described (for example, colour, shape, imprint).
  final CodeableConcept? type;

  /// [valueX]
  /// Description of the characteristic.
  final ValueXMedicationKnowledgeDrugCharacteristic? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX?.isAs<FhirString>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX?.isAs<FhirBase64Binary>();
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
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
      'type',
      'valueX',
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
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXMedicationKnowledgeDrugCharacteristic) {
            return copyWith(valueX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is FhirBase64Binary) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConcept',
          'FhirString',
          'Quantity',
          'FhirBase64Binary',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueString':
        return ['FhirString'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueBase64Binary':
        return ['FhirBase64Binary'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeDrugCharacteristic]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeDrugCharacteristic createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          return copyWith(
            valueX: CodeableConcept.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueBase64Binary':
        {
          return copyWith(
            valueX: FhirBase64Binary.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeDrugCharacteristic clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool value = false,
  }) {
    return MedicationKnowledgeDrugCharacteristic(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      valueX: value ? null : valueX,
    );
  }

  @override
  MedicationKnowledgeDrugCharacteristic clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeDrugCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXMedicationKnowledgeDrugCharacteristic? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeDrugCharacteristic(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXMedicationKnowledgeDrugCharacteristic? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeDrugCharacteristic) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeRegulatory]
/// Regulatory information about a medication.
class MedicationKnowledgeRegulatory extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeRegulatory]

  const MedicationKnowledgeRegulatory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeRegulatory.empty() =>
      MedicationKnowledgeRegulatory(
        regulatoryAuthority: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRegulatory.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory';
    return MedicationKnowledgeRegulatory(
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
      regulatoryAuthority: JsonParser.parseObject<Reference>(
        json,
        'regulatoryAuthority',
        Reference.fromJson,
        '$objectPath.regulatoryAuthority',
      )!,
      substitution: (json['substitution'] as List<dynamic>?)
          ?.map<MedicationKnowledgeSubstitution>(
            (v) => MedicationKnowledgeSubstitution.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.substitution',
              },
            ),
          )
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<MedicationKnowledgeSchedule>(
            (v) => MedicationKnowledgeSchedule.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.schedule',
              },
            ),
          )
          .toList(),
      maxDispense: JsonParser.parseObject<MedicationKnowledgeMaxDispense>(
        json,
        'maxDispense',
        MedicationKnowledgeMaxDispense.fromJson,
        '$objectPath.maxDispense',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeRegulatory]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeRegulatory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeRegulatory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeRegulatory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeRegulatory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeRegulatory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeRegulatory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeRegulatory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeRegulatory';

  /// [regulatoryAuthority]
  /// The authority that is specifying the regulations.
  final Reference regulatoryAuthority;

  /// [substitution]
  /// Specifies if changes are allowed when dispensing a medication from a
  /// regulatory perspective.
  final List<MedicationKnowledgeSubstitution>? substitution;

  /// [schedule]
  /// Specifies the schedule of a medication in jurisdiction.
  final List<MedicationKnowledgeSchedule>? schedule;

  /// [maxDispense]
  /// The maximum number of units of the medication that can be dispensed in
  /// a period.
  final MedicationKnowledgeMaxDispense? maxDispense;
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
      'regulatoryAuthority',
      regulatoryAuthority,
    );
    addField(
      'substitution',
      substitution,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'maxDispense',
      maxDispense,
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
      'regulatoryAuthority',
      'substitution',
      'schedule',
      'maxDispense',
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
      case 'regulatoryAuthority':
        fields.add(regulatoryAuthority);
      case 'substitution':
        if (substitution != null) {
          fields.addAll(substitution!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.addAll(schedule!);
        }
      case 'maxDispense':
        if (maxDispense != null) {
          fields.add(maxDispense!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'regulatoryAuthority':
        {
          if (child is Reference) {
            return copyWith(regulatoryAuthority: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'substitution':
        {
          if (child is List<MedicationKnowledgeSubstitution>) {
            // Add all elements from passed list
            final newList = [...?substitution, ...child];
            return copyWith(substitution: newList);
          } else if (child is MedicationKnowledgeSubstitution) {
            // Add single element to existing list or create new list
            final newList = [...?substitution, child];
            return copyWith(substitution: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'schedule':
        {
          if (child is List<MedicationKnowledgeSchedule>) {
            // Add all elements from passed list
            final newList = [...?schedule, ...child];
            return copyWith(schedule: newList);
          } else if (child is MedicationKnowledgeSchedule) {
            // Add single element to existing list or create new list
            final newList = [...?schedule, child];
            return copyWith(schedule: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDispense':
        {
          if (child is MedicationKnowledgeMaxDispense) {
            return copyWith(maxDispense: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'regulatoryAuthority':
        return ['Reference'];
      case 'substitution':
        return ['MedicationKnowledgeSubstitution'];
      case 'schedule':
        return ['MedicationKnowledgeSchedule'];
      case 'maxDispense':
        return ['MedicationKnowledgeMaxDispense'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeRegulatory]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeRegulatory createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'regulatoryAuthority':
        {
          return copyWith(
            regulatoryAuthority: Reference.empty(),
          );
        }
      case 'substitution':
        {
          return copyWith(
            substitution: <MedicationKnowledgeSubstitution>[],
          );
        }
      case 'schedule':
        {
          return copyWith(
            schedule: <MedicationKnowledgeSchedule>[],
          );
        }
      case 'maxDispense':
        {
          return copyWith(
            maxDispense: MedicationKnowledgeMaxDispense.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeRegulatory clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool substitution = false,
    bool schedule = false,
    bool maxDispense = false,
  }) {
    return MedicationKnowledgeRegulatory(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      regulatoryAuthority: regulatoryAuthority,
      substitution: substitution ? null : this.substitution,
      schedule: schedule ? null : this.schedule,
      maxDispense: maxDispense ? null : this.maxDispense,
    );
  }

  @override
  MedicationKnowledgeRegulatory clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeRegulatory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? regulatoryAuthority,
    List<MedicationKnowledgeSubstitution>? substitution,
    List<MedicationKnowledgeSchedule>? schedule,
    MedicationKnowledgeMaxDispense? maxDispense,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeRegulatory(
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
      regulatoryAuthority: regulatoryAuthority?.copyWith(
            objectPath: '$newObjectPath.regulatoryAuthority',
          ) ??
          this.regulatoryAuthority,
      substitution: substitution
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.substitution',
                ),
              )
              .toList() ??
          this.substitution,
      schedule: schedule
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.schedule',
                ),
              )
              .toList() ??
          this.schedule,
      maxDispense: maxDispense?.copyWith(
            objectPath: '$newObjectPath.maxDispense',
          ) ??
          this.maxDispense,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeRegulatory) {
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
      regulatoryAuthority,
      o.regulatoryAuthority,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeSubstitution>(
      substitution,
      o.substitution,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeSchedule>(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDispense,
      o.maxDispense,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeSubstitution]
/// Specifies if changes are allowed when dispensing a medication from a
/// regulatory perspective.
class MedicationKnowledgeSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeSubstitution]

  const MedicationKnowledgeSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.allowed,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory.substitution',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeSubstitution.empty() =>
      MedicationKnowledgeSubstitution(
        type: CodeableConcept.empty(),
        allowed: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory.substitution';
    return MedicationKnowledgeSubstitution(
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
      )!,
      allowed: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allowed',
        FhirBoolean.fromJson,
        '$objectPath.allowed',
      )!,
    );
  }

  /// Deserialize [MedicationKnowledgeSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeSubstitution';

  /// [type]
  /// Specifies the type of substitution allowed.
  final CodeableConcept type;

  /// [allowed]
  /// Specifies if regulation allows for changes in the medication when
  /// dispensing.
  final FhirBoolean allowed;
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
      'allowed',
      allowed,
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
      'allowed',
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
        fields.add(type);
      case 'allowed':
        fields.add(allowed);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowed':
        {
          if (child is FhirBoolean) {
            return copyWith(allowed: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'allowed':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeSubstitution]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeSubstitution createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'allowed':
        {
          return copyWith(
            allowed: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeSubstitution clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return MedicationKnowledgeSubstitution(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      allowed: allowed,
    );
  }

  @override
  MedicationKnowledgeSubstitution clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeSubstitution copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBoolean? allowed,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeSubstitution(
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
      allowed: allowed?.copyWith(
            objectPath: '$newObjectPath.allowed',
          ) ??
          this.allowed,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeSubstitution) {
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
      allowed,
      o.allowed,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeSchedule]
/// Specifies the schedule of a medication in jurisdiction.
class MedicationKnowledgeSchedule extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeSchedule]

  const MedicationKnowledgeSchedule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.schedule,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory.schedule',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeSchedule.empty() => MedicationKnowledgeSchedule(
        schedule: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSchedule.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory.schedule';
    return MedicationKnowledgeSchedule(
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
      schedule: JsonParser.parseObject<CodeableConcept>(
        json,
        'schedule',
        CodeableConcept.fromJson,
        '$objectPath.schedule',
      )!,
    );
  }

  /// Deserialize [MedicationKnowledgeSchedule]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeSchedule.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeSchedule.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeSchedule.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeSchedule '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeSchedule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeSchedule.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeSchedule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeSchedule';

  /// [schedule]
  /// Specifies the specific drug schedule.
  final CodeableConcept schedule;
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
        fields.add(schedule);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'schedule':
        {
          if (child is CodeableConcept) {
            return copyWith(schedule: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'schedule':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeSchedule]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeSchedule createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'schedule':
        {
          return copyWith(
            schedule: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeSchedule clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return MedicationKnowledgeSchedule(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      schedule: schedule,
    );
  }

  @override
  MedicationKnowledgeSchedule clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeSchedule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? schedule,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeSchedule(
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
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeSchedule) {
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
    return true;
  }
}

/// [MedicationKnowledgeMaxDispense]
/// The maximum number of units of the medication that can be dispensed in
/// a period.
class MedicationKnowledgeMaxDispense extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMaxDispense]

  const MedicationKnowledgeMaxDispense({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.quantity,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory.maxDispense',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeMaxDispense.empty() =>
      MedicationKnowledgeMaxDispense(
        quantity: Quantity.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMaxDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory.maxDispense';
    return MedicationKnowledgeMaxDispense(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      )!,
      period: JsonParser.parseObject<FhirDuration>(
        json,
        'period',
        FhirDuration.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMaxDispense]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMaxDispense.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMaxDispense.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMaxDispense.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMaxDispense '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMaxDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMaxDispense.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMaxDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMaxDispense';

  /// [quantity]
  /// The maximum number of units of the medication that can be dispensed.
  final Quantity quantity;

  /// [period]
  /// The period that applies to the maximum number of units.
  final FhirDuration? period;
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
      'quantity',
      quantity,
    );
    addField(
      'period',
      period,
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
      'quantity',
      'period',
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
      case 'quantity':
        fields.add(quantity);
      case 'period':
        if (period != null) {
          fields.add(period!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is FhirDuration) {
            return copyWith(period: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'quantity':
        return ['Quantity'];
      case 'period':
        return ['FhirDuration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMaxDispense]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeMaxDispense createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'period':
        {
          return copyWith(
            period: FhirDuration.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeMaxDispense clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool period = false,
  }) {
    return MedicationKnowledgeMaxDispense(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      quantity: quantity,
      period: period ? null : this.period,
    );
  }

  @override
  MedicationKnowledgeMaxDispense clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeMaxDispense copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeMaxDispense(
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
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMaxDispense) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeKinetics]
/// The time course of drug absorption, distribution, metabolism and
/// excretion of a medication from the body.
class MedicationKnowledgeKinetics extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeKinetics]

  const MedicationKnowledgeKinetics({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.kinetics',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationKnowledgeKinetics.empty() =>
      const MedicationKnowledgeKinetics();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeKinetics.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.kinetics';
    return MedicationKnowledgeKinetics(
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
      areaUnderCurve: (json['areaUnderCurve'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.areaUnderCurve',
              },
            ),
          )
          .toList(),
      lethalDose50: (json['lethalDose50'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.lethalDose50',
              },
            ),
          )
          .toList(),
      halfLifePeriod: JsonParser.parseObject<FhirDuration>(
        json,
        'halfLifePeriod',
        FhirDuration.fromJson,
        '$objectPath.halfLifePeriod',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeKinetics]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeKinetics.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeKinetics.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeKinetics.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeKinetics '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeKinetics]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeKinetics.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeKinetics.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeKinetics';

  /// [areaUnderCurve]
  /// The drug concentration measured at certain discrete points in time.
  final List<Quantity>? areaUnderCurve;

  /// [lethalDose50]
  /// The median lethal dose of a drug.
  final List<Quantity>? lethalDose50;

  /// [halfLifePeriod]
  /// The time required for any specified property (e.g., the concentration
  /// of a substance in the body) to decrease by half.
  final FhirDuration? halfLifePeriod;
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
      'areaUnderCurve',
      areaUnderCurve,
    );
    addField(
      'lethalDose50',
      lethalDose50,
    );
    addField(
      'halfLifePeriod',
      halfLifePeriod,
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
      'areaUnderCurve',
      'lethalDose50',
      'halfLifePeriod',
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
      case 'areaUnderCurve':
        if (areaUnderCurve != null) {
          fields.addAll(areaUnderCurve!);
        }
      case 'lethalDose50':
        if (lethalDose50 != null) {
          fields.addAll(lethalDose50!);
        }
      case 'halfLifePeriod':
        if (halfLifePeriod != null) {
          fields.add(halfLifePeriod!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'areaUnderCurve':
        {
          if (child is List<Quantity>) {
            // Add all elements from passed list
            final newList = [...?areaUnderCurve, ...child];
            return copyWith(areaUnderCurve: newList);
          } else if (child is Quantity) {
            // Add single element to existing list or create new list
            final newList = [...?areaUnderCurve, child];
            return copyWith(areaUnderCurve: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lethalDose50':
        {
          if (child is List<Quantity>) {
            // Add all elements from passed list
            final newList = [...?lethalDose50, ...child];
            return copyWith(lethalDose50: newList);
          } else if (child is Quantity) {
            // Add single element to existing list or create new list
            final newList = [...?lethalDose50, child];
            return copyWith(lethalDose50: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'halfLifePeriod':
        {
          if (child is FhirDuration) {
            return copyWith(halfLifePeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'areaUnderCurve':
        return ['Quantity'];
      case 'lethalDose50':
        return ['Quantity'];
      case 'halfLifePeriod':
        return ['FhirDuration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeKinetics]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationKnowledgeKinetics createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'areaUnderCurve':
        {
          return copyWith(
            areaUnderCurve: <Quantity>[],
          );
        }
      case 'lethalDose50':
        {
          return copyWith(
            lethalDose50: <Quantity>[],
          );
        }
      case 'halfLifePeriod':
        {
          return copyWith(
            halfLifePeriod: FhirDuration.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationKnowledgeKinetics clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool areaUnderCurve = false,
    bool lethalDose50 = false,
    bool halfLifePeriod = false,
  }) {
    return MedicationKnowledgeKinetics(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      areaUnderCurve: areaUnderCurve ? null : this.areaUnderCurve,
      lethalDose50: lethalDose50 ? null : this.lethalDose50,
      halfLifePeriod: halfLifePeriod ? null : this.halfLifePeriod,
    );
  }

  @override
  MedicationKnowledgeKinetics clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeKinetics copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Quantity>? areaUnderCurve,
    List<Quantity>? lethalDose50,
    FhirDuration? halfLifePeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationKnowledgeKinetics(
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
      areaUnderCurve: areaUnderCurve
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.areaUnderCurve',
                ),
              )
              .toList() ??
          this.areaUnderCurve,
      lethalDose50: lethalDose50
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.lethalDose50',
                ),
              )
              .toList() ??
          this.lethalDose50,
      halfLifePeriod: halfLifePeriod?.copyWith(
            objectPath: '$newObjectPath.halfLifePeriod',
          ) ??
          this.halfLifePeriod,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeKinetics) {
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
    if (!listEquals<Quantity>(
      areaUnderCurve,
      o.areaUnderCurve,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      lethalDose50,
      o.lethalDose50,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      halfLifePeriod,
      o.halfLifePeriod,
    )) {
      return false;
    }
    return true;
  }
}
