import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationKnowledge]
/// Information about a medication that is used to support knowledge.
class MedicationKnowledge extends DomainResource {
  /// Primary constructor for
  /// [MedicationKnowledge]

  MedicationKnowledge({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MedicationKnowledge,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledge.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledge(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      status: parseField<MedicationKnowledgeStatusCodes>(
        json['status'],
        json['_status'],
        MedicationKnowledgeStatusCodes.fromJson,
      ),
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(
              json['manufacturer'] as Map<String, dynamic>,
            )
          : null,
      doseForm: json['doseForm'] != null
          ? CodeableConcept.fromJson(
              json['doseForm'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Quantity.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
      synonym: parseList<FhirString>(
        json['synonym'] as List<dynamic>?,
        json['_synonym'] as List<dynamic>?,
        FhirString.fromJson,
      ),
      relatedMedicationKnowledge:
          parseList<MedicationKnowledgeRelatedMedicationKnowledge>(
        json['relatedMedicationKnowledge'] as List<dynamic>?,
        json['_relatedMedicationKnowledge'] as List<dynamic>?,
        MedicationKnowledgeRelatedMedicationKnowledge.fromJson,
      ),
      associatedMedication: parseList<Reference>(
        json['associatedMedication'] as List<dynamic>?,
        json['_associatedMedication'] as List<dynamic>?,
        Reference.fromJson,
      ),
      productType: parseList<CodeableConcept>(
        json['productType'] as List<dynamic>?,
        json['_productType'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      monograph: parseList<MedicationKnowledgeMonograph>(
        json['monograph'] as List<dynamic>?,
        json['_monograph'] as List<dynamic>?,
        MedicationKnowledgeMonograph.fromJson,
      ),
      ingredient: parseList<MedicationKnowledgeIngredient>(
        json['ingredient'] as List<dynamic>?,
        json['_ingredient'] as List<dynamic>?,
        MedicationKnowledgeIngredient.fromJson,
      ),
      preparationInstruction: parseField<FhirMarkdown>(
        json['preparationInstruction'],
        json['_preparationInstruction'],
        FhirMarkdown.fromJson,
      ),
      intendedRoute: parseList<CodeableConcept>(
        json['intendedRoute'] as List<dynamic>?,
        json['_intendedRoute'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      cost: parseList<MedicationKnowledgeCost>(
        json['cost'] as List<dynamic>?,
        json['_cost'] as List<dynamic>?,
        MedicationKnowledgeCost.fromJson,
      ),
      monitoringProgram: parseList<MedicationKnowledgeMonitoringProgram>(
        json['monitoringProgram'] as List<dynamic>?,
        json['_monitoringProgram'] as List<dynamic>?,
        MedicationKnowledgeMonitoringProgram.fromJson,
      ),
      administrationGuidelines:
          parseList<MedicationKnowledgeAdministrationGuidelines>(
        json['administrationGuidelines'] as List<dynamic>?,
        json['_administrationGuidelines'] as List<dynamic>?,
        MedicationKnowledgeAdministrationGuidelines.fromJson,
      ),
      medicineClassification:
          parseList<MedicationKnowledgeMedicineClassification>(
        json['medicineClassification'] as List<dynamic>?,
        json['_medicineClassification'] as List<dynamic>?,
        MedicationKnowledgeMedicineClassification.fromJson,
      ),
      packaging: json['packaging'] != null
          ? MedicationKnowledgePackaging.fromJson(
              json['packaging'] as Map<String, dynamic>,
            )
          : null,
      drugCharacteristic: parseList<MedicationKnowledgeDrugCharacteristic>(
        json['drugCharacteristic'] as List<dynamic>?,
        json['_drugCharacteristic'] as List<dynamic>?,
        MedicationKnowledgeDrugCharacteristic.fromJson,
      ),
      contraindication: parseList<Reference>(
        json['contraindication'] as List<dynamic>?,
        json['_contraindication'] as List<dynamic>?,
        Reference.fromJson,
      ),
      regulatory: parseList<MedicationKnowledgeRegulatory>(
        json['regulatory'] as List<dynamic>?,
        json['_regulatory'] as List<dynamic>?,
        MedicationKnowledgeRegulatory.fromJson,
      ),
      kinetics: parseList<MedicationKnowledgeKinetics>(
        json['kinetics'] as List<dynamic>?,
        json['_kinetics'] as List<dynamic>?,
        MedicationKnowledgeKinetics.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    if (code != null) {
      json['code'] = code!.toJson();
    }

    addField('status', status);
    if (manufacturer != null) {
      json['manufacturer'] = manufacturer!.toJson();
    }

    if (doseForm != null) {
      json['doseForm'] = doseForm!.toJson();
    }

    if (amount != null) {
      json['amount'] = amount!.toJson();
    }

    if (synonym != null && synonym!.isNotEmpty) {
      final fieldJson0 = synonym!.map((e) => e.toJson()).toList();
      json['synonym'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_synonym'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (relatedMedicationKnowledge != null &&
        relatedMedicationKnowledge!.isNotEmpty) {
      json['relatedMedicationKnowledge'] =
          relatedMedicationKnowledge!.map((e) => e.toJson()).toList();
    }

    if (associatedMedication != null && associatedMedication!.isNotEmpty) {
      json['associatedMedication'] =
          associatedMedication!.map((e) => e.toJson()).toList();
    }

    if (productType != null && productType!.isNotEmpty) {
      json['productType'] = productType!.map((e) => e.toJson()).toList();
    }

    if (monograph != null && monograph!.isNotEmpty) {
      json['monograph'] = monograph!.map((e) => e.toJson()).toList();
    }

    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!.map((e) => e.toJson()).toList();
    }

    addField('preparationInstruction', preparationInstruction);
    if (intendedRoute != null && intendedRoute!.isNotEmpty) {
      json['intendedRoute'] = intendedRoute!.map((e) => e.toJson()).toList();
    }

    if (cost != null && cost!.isNotEmpty) {
      json['cost'] = cost!.map((e) => e.toJson()).toList();
    }

    if (monitoringProgram != null && monitoringProgram!.isNotEmpty) {
      json['monitoringProgram'] =
          monitoringProgram!.map((e) => e.toJson()).toList();
    }

    if (administrationGuidelines != null &&
        administrationGuidelines!.isNotEmpty) {
      json['administrationGuidelines'] =
          administrationGuidelines!.map((e) => e.toJson()).toList();
    }

    if (medicineClassification != null && medicineClassification!.isNotEmpty) {
      json['medicineClassification'] =
          medicineClassification!.map((e) => e.toJson()).toList();
    }

    if (packaging != null) {
      json['packaging'] = packaging!.toJson();
    }

    if (drugCharacteristic != null && drugCharacteristic!.isNotEmpty) {
      json['drugCharacteristic'] =
          drugCharacteristic!.map((e) => e.toJson()).toList();
    }

    if (contraindication != null && contraindication!.isNotEmpty) {
      json['contraindication'] =
          contraindication!.map((e) => e.toJson()).toList();
    }

    if (regulatory != null && regulatory!.isNotEmpty) {
      json['regulatory'] = regulatory!.map((e) => e.toJson()).toList();
    }

    if (kinetics != null && kinetics!.isNotEmpty) {
      json['kinetics'] = kinetics!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledge(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      status: status ?? this.status,
      manufacturer: manufacturer ?? this.manufacturer,
      doseForm: doseForm ?? this.doseForm,
      amount: amount ?? this.amount,
      synonym: synonym ?? this.synonym,
      relatedMedicationKnowledge:
          relatedMedicationKnowledge ?? this.relatedMedicationKnowledge,
      associatedMedication: associatedMedication ?? this.associatedMedication,
      productType: productType ?? this.productType,
      monograph: monograph ?? this.monograph,
      ingredient: ingredient ?? this.ingredient,
      preparationInstruction:
          preparationInstruction ?? this.preparationInstruction,
      intendedRoute: intendedRoute ?? this.intendedRoute,
      cost: cost ?? this.cost,
      monitoringProgram: monitoringProgram ?? this.monitoringProgram,
      administrationGuidelines:
          administrationGuidelines ?? this.administrationGuidelines,
      medicineClassification:
          medicineClassification ?? this.medicineClassification,
      packaging: packaging ?? this.packaging,
      drugCharacteristic: drugCharacteristic ?? this.drugCharacteristic,
      contraindication: contraindication ?? this.contraindication,
      regulatory: regulatory ?? this.regulatory,
      kinetics: kinetics ?? this.kinetics,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeRelatedMedicationKnowledge]
/// Associated or related knowledge about a medication.
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledge]

  MedicationKnowledgeRelatedMedicationKnowledge({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeRelatedMedicationKnowledge(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      reference: parseList<Reference>(
        json['reference'] as List<dynamic>?,
        json['_reference'] as List<dynamic>?,
        Reference.fromJson,
      )!,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (reference.isNotEmpty) {
      json['reference'] = reference.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeMonograph]
/// Associated documentation about the medication.
class MedicationKnowledgeMonograph extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMonograph]

  MedicationKnowledgeMonograph({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.source,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonograph.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeMonograph(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMonograph.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    if (source != null) {
      json['source'] = source!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeMonograph(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      source: source ?? this.source,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeIngredient]
/// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredient extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeIngredient]

  MedicationKnowledgeIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIngredient.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeIngredient(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              json['itemReference'] as Map<String, dynamic>,
            )
          : null,
      isActive: parseField<FhirBoolean>(
        json['isActive'],
        json['_isActive'],
        FhirBoolean.fromJson,
      ),
      strength: json['strength'] != null
          ? Ratio.fromJson(
              json['strength'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeIngredient';

  /// [itemCodeableConcept]
  /// The actual ingredient - either a substance (simple ingredient) or
  /// another medication.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference]
  /// The actual ingredient - either a substance (simple ingredient) or
  /// another medication.
  final Reference? itemReference;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }

    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }

    addField('isActive', isActive);
    if (strength != null) {
      json['strength'] = strength!.toJson();
    }

    return json;
  }

  @override
  MedicationKnowledgeIngredient clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeIngredient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirBoolean? isActive,
    Ratio? strength,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      isActive: isActive ?? this.isActive,
      strength: strength ?? this.strength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeCost]
/// The price of the medication.
class MedicationKnowledgeCost extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeCost]

  MedicationKnowledgeCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.source,
    required this.cost,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeCost.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeCost(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      source: parseField<FhirString>(
        json['source'],
        json['_source'],
        FhirString.fromJson,
      ),
      cost: Money.fromJson(
        json['cost'] as Map<String, dynamic>,
      ),
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    addField('source', source);
    json['cost'] = cost.toJson();

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      source: source ?? this.source,
      cost: cost ?? this.cost,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeMonitoringProgram]
/// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgram extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMonitoringProgram]

  MedicationKnowledgeMonitoringProgram({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonitoringProgram.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeMonitoringProgram(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      name: parseField<FhirString>(
        json['name'],
        json['_name'],
        FhirString.fromJson,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMonitoringProgram.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    addField('name', name);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeMonitoringProgram(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      name: name ?? this.name,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeAdministrationGuidelines]
/// Guidelines for the administration of the medication.
class MedicationKnowledgeAdministrationGuidelines extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeAdministrationGuidelines]

  MedicationKnowledgeAdministrationGuidelines({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.dosage,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.patientCharacteristics,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeAdministrationGuidelines.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeAdministrationGuidelines(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      dosage: parseList<MedicationKnowledgeDosage>(
        json['dosage'] as List<dynamic>?,
        json['_dosage'] as List<dynamic>?,
        MedicationKnowledgeDosage.fromJson,
      ),
      indicationCodeableConcept: json['indicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['indicationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      indicationReference: json['indicationReference'] != null
          ? Reference.fromJson(
              json['indicationReference'] as Map<String, dynamic>,
            )
          : null,
      patientCharacteristics:
          parseList<MedicationKnowledgePatientCharacteristics>(
        json['patientCharacteristics'] as List<dynamic>?,
        json['_patientCharacteristics'] as List<dynamic>?,
        MedicationKnowledgePatientCharacteristics.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeAdministrationGuidelines.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeAdministrationGuidelines';

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  final List<MedicationKnowledgeDosage>? dosage;

  /// [indicationCodeableConcept]
  /// Indication for use that apply to the specific administration
  /// guidelines.
  final CodeableConcept? indicationCodeableConcept;

  /// [indicationReference]
  /// Indication for use that apply to the specific administration
  /// guidelines.
  final Reference? indicationReference;

  /// [patientCharacteristics]
  /// Characteristics of the patient that are relevant to the administration
  /// guidelines (for example, height, weight, gender, etc.).
  final List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (dosage != null && dosage!.isNotEmpty) {
      json['dosage'] = dosage!.map((e) => e.toJson()).toList();
    }

    if (indicationCodeableConcept != null) {
      json['indicationCodeableConcept'] = indicationCodeableConcept!.toJson();
    }

    if (indicationReference != null) {
      json['indicationReference'] = indicationReference!.toJson();
    }

    if (patientCharacteristics != null && patientCharacteristics!.isNotEmpty) {
      json['patientCharacteristics'] =
          patientCharacteristics!.map((e) => e.toJson()).toList();
    }

    return json;
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
    CodeableConcept? indicationCodeableConcept,
    Reference? indicationReference,
    List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeAdministrationGuidelines(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      dosage: dosage ?? this.dosage,
      indicationCodeableConcept:
          indicationCodeableConcept ?? this.indicationCodeableConcept,
      indicationReference: indicationReference ?? this.indicationReference,
      patientCharacteristics:
          patientCharacteristics ?? this.patientCharacteristics,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeDosage]
/// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeDosage extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDosage]

  MedicationKnowledgeDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.dosage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosage.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeDosage(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      dosage: parseList<Dosage>(
        json['dosage'] as List<dynamic>?,
        json['_dosage'] as List<dynamic>?,
        Dosage.fromJson,
      )!,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (dosage.isNotEmpty) {
      json['dosage'] = dosage.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeDosage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      dosage: dosage ?? this.dosage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgePatientCharacteristics]
/// Characteristics of the patient that are relevant to the administration
/// guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgePatientCharacteristics extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgePatientCharacteristics]

  MedicationKnowledgePatientCharacteristics({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePatientCharacteristics.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgePatientCharacteristics(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      characteristicCodeableConcept:
          json['characteristicCodeableConcept'] != null
              ? CodeableConcept.fromJson(
                  json['characteristicCodeableConcept'] as Map<String, dynamic>,
                )
              : null,
      characteristicQuantity: json['characteristicQuantity'] != null
          ? Quantity.fromJson(
              json['characteristicQuantity'] as Map<String, dynamic>,
            )
          : null,
      value: parseList<FhirString>(
        json['value'] as List<dynamic>?,
        json['_value'] as List<dynamic>?,
        FhirString.fromJson,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgePatientCharacteristics.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgePatientCharacteristics';

  /// [characteristicCodeableConcept]
  /// Specific characteristic that is relevant to the administration
  /// guideline (e.g. height, weight, gender).
  final CodeableConcept? characteristicCodeableConcept;

  /// [characteristicQuantity]
  /// Specific characteristic that is relevant to the administration
  /// guideline (e.g. height, weight, gender).
  final Quantity? characteristicQuantity;

  /// [value]
  /// The specific characteristic (e.g. height, weight, gender, etc.).
  final List<FhirString>? value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (characteristicCodeableConcept != null) {
      json['characteristicCodeableConcept'] =
          characteristicCodeableConcept!.toJson();
    }

    if (characteristicQuantity != null) {
      json['characteristicQuantity'] = characteristicQuantity!.toJson();
    }

    if (value != null && value!.isNotEmpty) {
      final fieldJson0 = value!.map((e) => e.toJson()).toList();
      json['value'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_value'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  MedicationKnowledgePatientCharacteristics clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgePatientCharacteristics copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? characteristicCodeableConcept,
    Quantity? characteristicQuantity,
    List<FhirString>? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgePatientCharacteristics(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      characteristicCodeableConcept:
          characteristicCodeableConcept ?? this.characteristicCodeableConcept,
      characteristicQuantity:
          characteristicQuantity ?? this.characteristicQuantity,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeMedicineClassification]
/// Categorization of the medication within a formulary or classification
/// system.
class MedicationKnowledgeMedicineClassification extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMedicineClassification]

  MedicationKnowledgeMedicineClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.classification,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMedicineClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeMedicineClassification(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      classification: parseList<CodeableConcept>(
        json['classification'] as List<dynamic>?,
        json['_classification'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMedicineClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeMedicineClassification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classification: classification ?? this.classification,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgePackaging]
/// Information that only applies to packages (not products).
class MedicationKnowledgePackaging extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgePackaging]

  MedicationKnowledgePackaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.quantity,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePackaging.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgePackaging(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgePackaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgePackaging(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeDrugCharacteristic]
/// Specifies descriptive properties of the medicine, such as color, shape,
/// imprints, etc.
class MedicationKnowledgeDrugCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDrugCharacteristic]

  MedicationKnowledgeDrugCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueQuantity,
    this.valueBase64Binary,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeDrugCharacteristic(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueString: parseField<FhirString>(
        json['valueString'],
        json['_valueString'],
        FhirString.fromJson,
      ),
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueBase64Binary: parseField<FhirBase64Binary>(
        json['valueBase64Binary'],
        json['_valueBase64Binary'],
        FhirBase64Binary.fromJson,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDrugCharacteristic';

  /// [type]
  /// A code specifying which characteristic of the medicine is being
  /// described (for example, colour, shape, imprint).
  final CodeableConcept? type;

  /// [valueCodeableConcept]
  /// Description of the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueString]
  /// Description of the characteristic.
  final FhirString? valueString;

  /// [valueQuantity]
  /// Description of the characteristic.
  final Quantity? valueQuantity;

  /// [valueBase64Binary]
  /// Description of the characteristic.
  final FhirBase64Binary? valueBase64Binary;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    addField('valueString', valueString);
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    addField('valueBase64Binary', valueBase64Binary);
    return json;
  }

  @override
  MedicationKnowledgeDrugCharacteristic clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeDrugCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Quantity? valueQuantity,
    FhirBase64Binary? valueBase64Binary,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeDrugCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueString: valueString ?? this.valueString,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeRegulatory]
/// Regulatory information about a medication.
class MedicationKnowledgeRegulatory extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeRegulatory]

  MedicationKnowledgeRegulatory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRegulatory.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeRegulatory(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      regulatoryAuthority: Reference.fromJson(
        json['regulatoryAuthority'] as Map<String, dynamic>,
      ),
      substitution: parseList<MedicationKnowledgeSubstitution>(
        json['substitution'] as List<dynamic>?,
        json['_substitution'] as List<dynamic>?,
        MedicationKnowledgeSubstitution.fromJson,
      ),
      schedule: parseList<MedicationKnowledgeSchedule>(
        json['schedule'] as List<dynamic>?,
        json['_schedule'] as List<dynamic>?,
        MedicationKnowledgeSchedule.fromJson,
      ),
      maxDispense: json['maxDispense'] != null
          ? MedicationKnowledgeMaxDispense.fromJson(
              json['maxDispense'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeRegulatory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['regulatoryAuthority'] = regulatoryAuthority.toJson();

    if (substitution != null && substitution!.isNotEmpty) {
      json['substitution'] = substitution!.map((e) => e.toJson()).toList();
    }

    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] = schedule!.map((e) => e.toJson()).toList();
    }

    if (maxDispense != null) {
      json['maxDispense'] = maxDispense!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeRegulatory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      regulatoryAuthority: regulatoryAuthority ?? this.regulatoryAuthority,
      substitution: substitution ?? this.substitution,
      schedule: schedule ?? this.schedule,
      maxDispense: maxDispense ?? this.maxDispense,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeSubstitution]
/// Specifies if changes are allowed when dispensing a medication from a
/// regulatory perspective.
class MedicationKnowledgeSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeSubstitution]

  MedicationKnowledgeSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.allowed,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeSubstitution(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      allowed: FhirBoolean.fromJson({
        'value': json['allowed'],
        '_value': json['_allowed'],
      }),
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    addField('allowed', allowed);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeSubstitution(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowed: allowed ?? this.allowed,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeSchedule]
/// Specifies the schedule of a medication in jurisdiction.
class MedicationKnowledgeSchedule extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeSchedule]

  MedicationKnowledgeSchedule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.schedule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSchedule.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeSchedule(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      schedule: CodeableConcept.fromJson(
        json['schedule'] as Map<String, dynamic>,
      ),
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeSchedule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['schedule'] = schedule.toJson();

    return json;
  }

  @override
  MedicationKnowledgeSchedule clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeSchedule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? schedule,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeSchedule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeMaxDispense]
/// The maximum number of units of the medication that can be dispensed in
/// a period.
class MedicationKnowledgeMaxDispense extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMaxDispense]

  MedicationKnowledgeMaxDispense({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.quantity,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMaxDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeMaxDispense(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      quantity: Quantity.fromJson(
        json['quantity'] as Map<String, dynamic>,
      ),
      period: json['period'] != null
          ? FhirDuration.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMaxDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['quantity'] = quantity.toJson();

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeMaxDispense(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationKnowledgeKinetics]
/// The time course of drug absorption, distribution, metabolism and
/// excretion of a medication from the body.
class MedicationKnowledgeKinetics extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeKinetics]

  MedicationKnowledgeKinetics({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeKinetics.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationKnowledgeKinetics(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      areaUnderCurve: parseList<Quantity>(
        json['areaUnderCurve'] as List<dynamic>?,
        json['_areaUnderCurve'] as List<dynamic>?,
        Quantity.fromJson,
      ),
      lethalDose50: parseList<Quantity>(
        json['lethalDose50'] as List<dynamic>?,
        json['_lethalDose50'] as List<dynamic>?,
        Quantity.fromJson,
      ),
      halfLifePeriod: json['halfLifePeriod'] != null
          ? FhirDuration.fromJson(
              json['halfLifePeriod'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeKinetics.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (areaUnderCurve != null && areaUnderCurve!.isNotEmpty) {
      json['areaUnderCurve'] = areaUnderCurve!.map((e) => e.toJson()).toList();
    }

    if (lethalDose50 != null && lethalDose50!.isNotEmpty) {
      json['lethalDose50'] = lethalDose50!.map((e) => e.toJson()).toList();
    }

    if (halfLifePeriod != null) {
      json['halfLifePeriod'] = halfLifePeriod!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationKnowledgeKinetics(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      areaUnderCurve: areaUnderCurve ?? this.areaUnderCurve,
      lethalDose50: lethalDose50 ?? this.lethalDose50,
      halfLifePeriod: halfLifePeriod ?? this.halfLifePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
