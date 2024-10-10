import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MedicationKnowledge] /// Information about a medication that is used to support knowledge.
class MedicationKnowledge extends DomainResource {
  MedicationKnowledge({
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
    this.code,
    this.status,
    this.statusElement,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.synonymElement,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
    this.preparationInstructionElement,
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
  }) : super(resourceType: R4ResourceType.MedicationKnowledge);

  @override
  String get fhirType => 'MedicationKnowledge';

  /// [code] /// A code that specifies this medication, or a textual description if no code
  /// is available. Usage note: This could be a standard medication code such as
  /// a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or
  /// local formulary code, optionally with translations to other code systems.
  final CodeableConcept? code;

  /// [status] /// A code to indicate if the medication is in active use. The status refers to
  /// the validity about the information of the medication and not to its
  /// medicinal properties.
  final MedicationKnowledgeStatusCodes? status;
  final Element? statusElement;

  /// [manufacturer] /// Describes the details of the manufacturer of the medication product. This
  /// is not intended to represent the distributor of a medication product.
  final Reference? manufacturer;

  /// [doseForm] /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? doseForm;

  /// [amount] /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute provides
  /// additional clarification of the package amount (For example, 3 mL, 10mL,
  /// etc.).
  final Quantity? amount;

  /// [synonym] /// Additional names for a medication, for example, the name(s) given to a
  /// medication in different countries. For example, acetaminophen and
  /// paracetamol or salbutamol and albuterol.
  final List<FhirString>? synonym;
  final List<Element>? synonymElement;

  /// [relatedMedicationKnowledge] /// Associated or related knowledge about a medication.
  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge;

  /// [associatedMedication] /// Associated or related medications. For example, if the medication is a
  /// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  /// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin), this
  /// would link to a branded product (e.g. Crestor).
  final List<Reference>? associatedMedication;

  /// [productType] /// Category of the medication or product (e.g. branded product, therapeutic
  /// moeity, generic product, innovator product, etc.).
  final List<CodeableConcept>? productType;

  /// [monograph] /// Associated documentation about the medication.
  final List<MedicationKnowledgeMonograph>? monograph;

  /// [ingredient] /// Identifies a particular constituent of interest in the product.
  final List<MedicationKnowledgeIngredient>? ingredient;

  /// [preparationInstruction] /// The instructions for preparing the medication.
  final FhirMarkdown? preparationInstruction;
  final Element? preparationInstructionElement;

  /// [intendedRoute] /// The intended or approved route of administration.
  final List<CodeableConcept>? intendedRoute;

  /// [cost] /// The price of the medication.
  final List<MedicationKnowledgeCost>? cost;

  /// [monitoringProgram] /// The program under which the medication is reviewed.
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;

  /// [administrationGuidelines] /// Guidelines for the administration of the medication.
  final List<MedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines;

  /// [medicineClassification] /// Categorization of the medication within a formulary or classification
  /// system.
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;

  /// [packaging] /// Information that only applies to packages (not products).
  final MedicationKnowledgePackaging? packaging;

  /// [drugCharacteristic] /// Specifies descriptive properties of the medicine, such as color, shape,
  /// imprints, etc.
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;

  /// [contraindication] /// Potential clinical issue with or between medication(s) (for example,
  /// drug-drug interaction, drug-disease contraindication, drug-allergy
  /// interaction, etc.).
  final List<Reference>? contraindication;

  /// [regulatory] /// Regulatory information about a medication.
  final List<MedicationKnowledgeRegulatory>? regulatory;

  /// [kinetics] /// The time course of drug absorption, distribution, metabolism and excretion
  /// of a medication from the body.
  final List<MedicationKnowledgeKinetics>? kinetics;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
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
      json['synonym'] = synonym!.map((FhirString v) => v.toJson()).toList();
    }
    if (synonymElement != null && synonymElement!.isNotEmpty) {
      json['_synonym'] =
          synonymElement!.map((Element v) => v.toJson()).toList();
    }
    if (relatedMedicationKnowledge != null &&
        relatedMedicationKnowledge!.isNotEmpty) {
      json['relatedMedicationKnowledge'] = relatedMedicationKnowledge!
          .map<dynamic>(
              (MedicationKnowledgeRelatedMedicationKnowledge v) => v.toJson())
          .toList();
    }
    if (associatedMedication != null && associatedMedication!.isNotEmpty) {
      json['associatedMedication'] = associatedMedication!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (productType != null && productType!.isNotEmpty) {
      json['productType'] =
          productType!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (monograph != null && monograph!.isNotEmpty) {
      json['monograph'] = monograph!
          .map<dynamic>((MedicationKnowledgeMonograph v) => v.toJson())
          .toList();
    }
    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!
          .map<dynamic>((MedicationKnowledgeIngredient v) => v.toJson())
          .toList();
    }
    if (preparationInstruction?.value != null) {
      json['preparationInstruction'] = preparationInstruction!.toJson();
    }
    if (preparationInstructionElement != null) {
      json['_preparationInstruction'] = preparationInstructionElement!.toJson();
    }
    if (intendedRoute != null && intendedRoute!.isNotEmpty) {
      json['intendedRoute'] = intendedRoute!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (cost != null && cost!.isNotEmpty) {
      json['cost'] = cost!
          .map<dynamic>((MedicationKnowledgeCost v) => v.toJson())
          .toList();
    }
    if (monitoringProgram != null && monitoringProgram!.isNotEmpty) {
      json['monitoringProgram'] = monitoringProgram!
          .map<dynamic>((MedicationKnowledgeMonitoringProgram v) => v.toJson())
          .toList();
    }
    if (administrationGuidelines != null &&
        administrationGuidelines!.isNotEmpty) {
      json['administrationGuidelines'] = administrationGuidelines!
          .map<dynamic>(
              (MedicationKnowledgeAdministrationGuidelines v) => v.toJson())
          .toList();
    }
    if (medicineClassification != null && medicineClassification!.isNotEmpty) {
      json['medicineClassification'] = medicineClassification!
          .map<dynamic>(
              (MedicationKnowledgeMedicineClassification v) => v.toJson())
          .toList();
    }
    if (packaging != null) {
      json['packaging'] = packaging!.toJson();
    }
    if (drugCharacteristic != null && drugCharacteristic!.isNotEmpty) {
      json['drugCharacteristic'] = drugCharacteristic!
          .map<dynamic>((MedicationKnowledgeDrugCharacteristic v) => v.toJson())
          .toList();
    }
    if (contraindication != null && contraindication!.isNotEmpty) {
      json['contraindication'] =
          contraindication!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (regulatory != null && regulatory!.isNotEmpty) {
      json['regulatory'] = regulatory!
          .map<dynamic>((MedicationKnowledgeRegulatory v) => v.toJson())
          .toList();
    }
    if (kinetics != null && kinetics!.isNotEmpty) {
      json['kinetics'] = kinetics!
          .map<dynamic>((MedicationKnowledgeKinetics v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledge(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? MedicationKnowledgeStatusCodes.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(json['manufacturer'] as Map<String, dynamic>)
          : null,
      doseForm: json['doseForm'] != null
          ? CodeableConcept.fromJson(json['doseForm'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Quantity.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      synonym: json['synonym'] != null
          ? (json['synonym'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      synonymElement: json['_synonym'] != null
          ? (json['_synonym'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relatedMedicationKnowledge: json['relatedMedicationKnowledge'] != null
          ? (json['relatedMedicationKnowledge'] as List<dynamic>)
              .map<MedicationKnowledgeRelatedMedicationKnowledge>((dynamic v) =>
                  MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      associatedMedication: json['associatedMedication'] != null
          ? (json['associatedMedication'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productType: json['productType'] != null
          ? (json['productType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      monograph: json['monograph'] != null
          ? (json['monograph'] as List<dynamic>)
              .map<MedicationKnowledgeMonograph>((dynamic v) =>
                  MedicationKnowledgeMonograph.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<MedicationKnowledgeIngredient>((dynamic v) =>
                  MedicationKnowledgeIngredient.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      preparationInstruction: json['preparationInstruction'] != null
          ? FhirMarkdown.fromJson(json['preparationInstruction'])
          : null,
      preparationInstructionElement: json['_preparationInstruction'] != null
          ? Element.fromJson(
              json['_preparationInstruction'] as Map<String, dynamic>)
          : null,
      intendedRoute: json['intendedRoute'] != null
          ? (json['intendedRoute'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      cost: json['cost'] != null
          ? (json['cost'] as List<dynamic>)
              .map<MedicationKnowledgeCost>((dynamic v) =>
                  MedicationKnowledgeCost.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      monitoringProgram: json['monitoringProgram'] != null
          ? (json['monitoringProgram'] as List<dynamic>)
              .map<MedicationKnowledgeMonitoringProgram>((dynamic v) =>
                  MedicationKnowledgeMonitoringProgram.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      administrationGuidelines: json['administrationGuidelines'] != null
          ? (json['administrationGuidelines'] as List<dynamic>)
              .map<MedicationKnowledgeAdministrationGuidelines>((dynamic v) =>
                  MedicationKnowledgeAdministrationGuidelines.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      medicineClassification: json['medicineClassification'] != null
          ? (json['medicineClassification'] as List<dynamic>)
              .map<MedicationKnowledgeMedicineClassification>((dynamic v) =>
                  MedicationKnowledgeMedicineClassification.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      packaging: json['packaging'] != null
          ? MedicationKnowledgePackaging.fromJson(
              json['packaging'] as Map<String, dynamic>)
          : null,
      drugCharacteristic: json['drugCharacteristic'] != null
          ? (json['drugCharacteristic'] as List<dynamic>)
              .map<MedicationKnowledgeDrugCharacteristic>((dynamic v) =>
                  MedicationKnowledgeDrugCharacteristic.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      contraindication: json['contraindication'] != null
          ? (json['contraindication'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      regulatory: json['regulatory'] != null
          ? (json['regulatory'] as List<dynamic>)
              .map<MedicationKnowledgeRegulatory>((dynamic v) =>
                  MedicationKnowledgeRegulatory.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      kinetics: json['kinetics'] != null
          ? (json['kinetics'] as List<dynamic>)
              .map<MedicationKnowledgeKinetics>((dynamic v) =>
                  MedicationKnowledgeKinetics.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  MedicationKnowledge clone() => throw UnimplementedError();
  @override
  MedicationKnowledge copyWith({
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
    CodeableConcept? code,
    MedicationKnowledgeStatusCodes? status,
    Element? statusElement,
    Reference? manufacturer,
    CodeableConcept? doseForm,
    Quantity? amount,
    List<FhirString>? synonym,
    List<Element>? synonymElement,
    List<MedicationKnowledgeRelatedMedicationKnowledge>?
        relatedMedicationKnowledge,
    List<Reference>? associatedMedication,
    List<CodeableConcept>? productType,
    List<MedicationKnowledgeMonograph>? monograph,
    List<MedicationKnowledgeIngredient>? ingredient,
    FhirMarkdown? preparationInstruction,
    Element? preparationInstructionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      manufacturer: manufacturer ?? this.manufacturer,
      doseForm: doseForm ?? this.doseForm,
      amount: amount ?? this.amount,
      synonym: synonym ?? this.synonym,
      synonymElement: synonymElement ?? this.synonymElement,
      relatedMedicationKnowledge:
          relatedMedicationKnowledge ?? this.relatedMedicationKnowledge,
      associatedMedication: associatedMedication ?? this.associatedMedication,
      productType: productType ?? this.productType,
      monograph: monograph ?? this.monograph,
      ingredient: ingredient ?? this.ingredient,
      preparationInstruction:
          preparationInstruction ?? this.preparationInstruction,
      preparationInstructionElement:
          preparationInstructionElement ?? this.preparationInstructionElement,
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

  factory MedicationKnowledge.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledge.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledge cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeRelatedMedicationKnowledge] /// Associated or related knowledge about a medication.
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeRelatedMedicationKnowledge';

  /// [type] /// The category of the associated medication knowledge reference.
  final CodeableConcept type;

  /// [reference] /// Associated documentation about the associated medication knowledge.
  final List<Reference> reference;
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
    json['type'] = type.toJson();
    json['reference'] =
        reference.map<dynamic>((Reference v) => v.toJson()).toList();
    return json;
  }

  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
              (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
          .toList(),
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

  factory MedicationKnowledgeRelatedMedicationKnowledge.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          : yaml is YamlMap
              ? MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              : throw ArgumentError(
                  'MedicationKnowledgeRelatedMedicationKnowledge cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeMonograph] /// Associated documentation about the medication.
class MedicationKnowledgeMonograph extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeMonograph';

  /// [type] /// The category of documentation about the medication. (e.g. professional
  /// monograph, patient education monograph).
  final CodeableConcept? type;

  /// [source] /// Associated documentation about the medication.
  final Reference? source;
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
    if (source != null) {
      json['source'] = source!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeMonograph.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeMonograph(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      source: json['source'] != null
          ? Reference.fromJson(json['source'] as Map<String, dynamic>)
          : null,
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

  factory MedicationKnowledgeMonograph.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeMonograph.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeMonograph.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeMonograph cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeMonograph.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMonograph.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeIngredient] /// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredient extends BackboneElement {
  MedicationKnowledgeIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationKnowledgeIngredient';

  /// [itemCodeableConcept] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication.
  final Reference? itemReference;

  /// [isActive] /// Indication of whether this ingredient affects the therapeutic action of the
  /// drug.
  final FhirBoolean? isActive;
  final Element? isActiveElement;

  /// [strength] /// Specifies how many (or how much) of the items there are in this Medication.
  /// For example, 250 mg per tablet. This is expressed as a ratio where the
  /// numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
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
    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }
    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }
    if (isActive?.value != null) {
      json['isActive'] = isActive!.toJson();
    }
    if (isActiveElement != null) {
      json['_isActive'] = isActiveElement!.toJson();
    }
    if (strength != null) {
      json['strength'] = strength!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeIngredient.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeIngredient(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>)
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>)
          : null,
      isActive: json['isActive'] != null
          ? FhirBoolean.fromJson(json['isActive'])
          : null,
      isActiveElement: json['_isActive'] != null
          ? Element.fromJson(json['_isActive'] as Map<String, dynamic>)
          : null,
      strength: json['strength'] != null
          ? Ratio.fromJson(json['strength'] as Map<String, dynamic>)
          : null,
    );
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
    Element? isActiveElement,
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
      isActiveElement: isActiveElement ?? this.isActiveElement,
      strength: strength ?? this.strength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationKnowledgeIngredient.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeIngredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeIngredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeIngredient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeIngredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeCost] /// The price of the medication.
class MedicationKnowledgeCost extends BackboneElement {
  MedicationKnowledgeCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.source,
    this.sourceElement,
    required this.cost,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationKnowledgeCost';

  /// [type] /// The category of the cost information. For example, manufacturers' cost,
  /// patient cost, claim reimbursement cost, actual acquisition cost.
  final CodeableConcept type;

  /// [source] /// The source or owner that assigns the price to the medication.
  final FhirString? source;
  final Element? sourceElement;

  /// [cost] /// The price of the medication.
  final Money cost;
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
    json['type'] = type.toJson();
    if (source?.value != null) {
      json['source'] = source!.toJson();
    }
    if (sourceElement != null) {
      json['_source'] = sourceElement!.toJson();
    }
    json['cost'] = cost.toJson();
    return json;
  }

  factory MedicationKnowledgeCost.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeCost(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      source:
          json['source'] != null ? FhirString.fromJson(json['source']) : null,
      sourceElement: json['_source'] != null
          ? Element.fromJson(json['_source'] as Map<String, dynamic>)
          : null,
      cost: Money.fromJson(json['cost'] as Map<String, dynamic>),
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
    Element? sourceElement,
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
      sourceElement: sourceElement ?? this.sourceElement,
      cost: cost ?? this.cost,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationKnowledgeCost.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeCost cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeMonitoringProgram] /// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgram extends BackboneElement {
  MedicationKnowledgeMonitoringProgram({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
    this.nameElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationKnowledgeMonitoringProgram';

  /// [type] /// Type of program under which the medication is monitored.
  final CodeableConcept? type;

  /// [name] /// Name of the reviewing program.
  final FhirString? name;
  final Element? nameElement;
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
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeMonitoringProgram.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeMonitoringProgram(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
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
    Element? nameElement,
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
      nameElement: nameElement ?? this.nameElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationKnowledgeMonitoringProgram.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeMonitoringProgram.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeMonitoringProgram.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeMonitoringProgram cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeMonitoringProgram.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMonitoringProgram.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeAdministrationGuidelines] /// Guidelines for the administration of the medication.
class MedicationKnowledgeAdministrationGuidelines extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeAdministrationGuidelines';

  /// [dosage] /// Dosage for the medication for the specific guidelines.
  final List<MedicationKnowledgeDosage>? dosage;

  /// [indicationCodeableConcept] /// Indication for use that apply to the specific administration guidelines.
  final CodeableConcept? indicationCodeableConcept;

  /// [indicationReference] /// Indication for use that apply to the specific administration guidelines.
  final Reference? indicationReference;

  /// [patientCharacteristics] /// Characteristics of the patient that are relevant to the administration
  /// guidelines (for example, height, weight, gender, etc.).
  final List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics;
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
    if (dosage != null && dosage!.isNotEmpty) {
      json['dosage'] = dosage!
          .map<dynamic>((MedicationKnowledgeDosage v) => v.toJson())
          .toList();
    }
    if (indicationCodeableConcept != null) {
      json['indicationCodeableConcept'] = indicationCodeableConcept!.toJson();
    }
    if (indicationReference != null) {
      json['indicationReference'] = indicationReference!.toJson();
    }
    if (patientCharacteristics != null && patientCharacteristics!.isNotEmpty) {
      json['patientCharacteristics'] = patientCharacteristics!
          .map<dynamic>(
              (MedicationKnowledgePatientCharacteristics v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory MedicationKnowledgeAdministrationGuidelines.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeAdministrationGuidelines(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      dosage: json['dosage'] != null
          ? (json['dosage'] as List<dynamic>)
              .map<MedicationKnowledgeDosage>((dynamic v) =>
                  MedicationKnowledgeDosage.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      indicationCodeableConcept: json['indicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['indicationCodeableConcept'] as Map<String, dynamic>)
          : null,
      indicationReference: json['indicationReference'] != null
          ? Reference.fromJson(
              json['indicationReference'] as Map<String, dynamic>)
          : null,
      patientCharacteristics: json['patientCharacteristics'] != null
          ? (json['patientCharacteristics'] as List<dynamic>)
              .map<MedicationKnowledgePatientCharacteristics>((dynamic v) =>
                  MedicationKnowledgePatientCharacteristics.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
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

  factory MedicationKnowledgeAdministrationGuidelines.fromYaml(dynamic yaml) =>
      yaml is String
          ? MedicationKnowledgeAdministrationGuidelines.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          : yaml is YamlMap
              ? MedicationKnowledgeAdministrationGuidelines.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              : throw ArgumentError(
                  'MedicationKnowledgeAdministrationGuidelines cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeAdministrationGuidelines.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeAdministrationGuidelines.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeDosage] /// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeDosage extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeDosage';

  /// [type] /// The type of dosage (for example, prophylaxis, maintenance, therapeutic,
  /// etc.).
  final CodeableConcept type;

  /// [dosage] /// Dosage for the medication for the specific guidelines.
  final List<Dosage> dosage;
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
    json['type'] = type.toJson();
    json['dosage'] = dosage.map<dynamic>((Dosage v) => v.toJson()).toList();
    return json;
  }

  factory MedicationKnowledgeDosage.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeDosage(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      dosage: (json['dosage'] as List<dynamic>)
          .map<Dosage>(
              (dynamic v) => Dosage.fromJson(v as Map<String, dynamic>))
          .toList(),
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

  factory MedicationKnowledgeDosage.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeDosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeDosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeDosage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeDosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgePatientCharacteristics] /// Characteristics of the patient that are relevant to the administration
/// guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgePatientCharacteristics extends BackboneElement {
  MedicationKnowledgePatientCharacteristics({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationKnowledgePatientCharacteristics';

  /// [characteristicCodeableConcept] /// Specific characteristic that is relevant to the administration guideline
  /// (e.g. height, weight, gender).
  final CodeableConcept? characteristicCodeableConcept;

  /// [characteristicQuantity] /// Specific characteristic that is relevant to the administration guideline
  /// (e.g. height, weight, gender).
  final Quantity? characteristicQuantity;

  /// [value] /// The specific characteristic (e.g. height, weight, gender, etc.).
  final List<FhirString>? value;
  final List<Element>? valueElement;
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
    if (characteristicCodeableConcept != null) {
      json['characteristicCodeableConcept'] =
          characteristicCodeableConcept!.toJson();
    }
    if (characteristicQuantity != null) {
      json['characteristicQuantity'] = characteristicQuantity!.toJson();
    }
    if (value != null && value!.isNotEmpty) {
      json['value'] = value!.map((FhirString v) => v.toJson()).toList();
    }
    if (valueElement != null && valueElement!.isNotEmpty) {
      json['_value'] = valueElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory MedicationKnowledgePatientCharacteristics.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgePatientCharacteristics(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      characteristicCodeableConcept:
          json['characteristicCodeableConcept'] != null
              ? CodeableConcept.fromJson(
                  json['characteristicCodeableConcept'] as Map<String, dynamic>)
              : null,
      characteristicQuantity: json['characteristicQuantity'] != null
          ? Quantity.fromJson(
              json['characteristicQuantity'] as Map<String, dynamic>)
          : null,
      value: json['value'] != null
          ? (json['value'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      valueElement: json['_value'] != null
          ? (json['_value'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
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
    CodeableConcept? characteristicCodeableConcept,
    Quantity? characteristicQuantity,
    List<FhirString>? value,
    List<Element>? valueElement,
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
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationKnowledgePatientCharacteristics.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgePatientCharacteristics.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgePatientCharacteristics.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgePatientCharacteristics cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgePatientCharacteristics.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgePatientCharacteristics.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeMedicineClassification] /// Categorization of the medication within a formulary or classification
/// system.
class MedicationKnowledgeMedicineClassification extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeMedicineClassification';

  /// [type] /// The type of category for the medication (for example, therapeutic
  /// classification, therapeutic sub-classification).
  final CodeableConcept type;

  /// [classification] /// Specific category assigned to the medication (e.g. anti-infective,
  /// anti-hypertensive, antibiotic, etc.).
  final List<CodeableConcept>? classification;
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
    json['type'] = type.toJson();
    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory MedicationKnowledgeMedicineClassification.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeMedicineClassification(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
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

  factory MedicationKnowledgeMedicineClassification.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeMedicineClassification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeMedicineClassification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeMedicineClassification cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeMedicineClassification.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMedicineClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgePackaging] /// Information that only applies to packages (not products).
class MedicationKnowledgePackaging extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgePackaging';

  /// [type] /// A code that defines the specific type of packaging that the medication can
  /// be found in (e.g. blister sleeve, tube, bottle).
  final CodeableConcept? type;

  /// [quantity] /// The number of product units the package would contain if fully loaded.
  final Quantity? quantity;
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
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgePackaging.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgePackaging(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
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

  factory MedicationKnowledgePackaging.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgePackaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgePackaging.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgePackaging cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgePackaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgePackaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeDrugCharacteristic] /// Specifies descriptive properties of the medicine, such as color, shape,
/// imprints, etc.
class MedicationKnowledgeDrugCharacteristic extends BackboneElement {
  MedicationKnowledgeDrugCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationKnowledgeDrugCharacteristic';

  /// [type] /// A code specifying which characteristic of the medicine is being described
  /// (for example, colour, shape, imprint).
  final CodeableConcept? type;

  /// [valueCodeableConcept] /// Description of the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueString] /// Description of the characteristic.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueQuantity] /// Description of the characteristic.
  final Quantity? valueQuantity;

  /// [valueBase64Binary] /// Description of the characteristic.
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;
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
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.toJson();
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeDrugCharacteristic.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeDrugCharacteristic(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(json['_valueBase64Binary'] as Map<String, dynamic>)
          : null,
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
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Element? valueStringElement,
    Quantity? valueQuantity,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
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
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationKnowledgeDrugCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeDrugCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeDrugCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeDrugCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeDrugCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeRegulatory] /// Regulatory information about a medication.
class MedicationKnowledgeRegulatory extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeRegulatory';

  /// [regulatoryAuthority] /// The authority that is specifying the regulations.
  final Reference regulatoryAuthority;

  /// [substitution] /// Specifies if changes are allowed when dispensing a medication from a
  /// regulatory perspective.
  final List<MedicationKnowledgeSubstitution>? substitution;

  /// [schedule] /// Specifies the schedule of a medication in jurisdiction.
  final List<MedicationKnowledgeSchedule>? schedule;

  /// [maxDispense] /// The maximum number of units of the medication that can be dispensed in a
  /// period.
  final MedicationKnowledgeMaxDispense? maxDispense;
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
    json['regulatoryAuthority'] = regulatoryAuthority.toJson();
    if (substitution != null && substitution!.isNotEmpty) {
      json['substitution'] = substitution!
          .map<dynamic>((MedicationKnowledgeSubstitution v) => v.toJson())
          .toList();
    }
    if (schedule != null && schedule!.isNotEmpty) {
      json['schedule'] = schedule!
          .map<dynamic>((MedicationKnowledgeSchedule v) => v.toJson())
          .toList();
    }
    if (maxDispense != null) {
      json['maxDispense'] = maxDispense!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeRegulatory.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeRegulatory(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      regulatoryAuthority: Reference.fromJson(
          json['regulatoryAuthority'] as Map<String, dynamic>),
      substitution: json['substitution'] != null
          ? (json['substitution'] as List<dynamic>)
              .map<MedicationKnowledgeSubstitution>((dynamic v) =>
                  MedicationKnowledgeSubstitution.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      schedule: json['schedule'] != null
          ? (json['schedule'] as List<dynamic>)
              .map<MedicationKnowledgeSchedule>((dynamic v) =>
                  MedicationKnowledgeSchedule.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      maxDispense: json['maxDispense'] != null
          ? MedicationKnowledgeMaxDispense.fromJson(
              json['maxDispense'] as Map<String, dynamic>)
          : null,
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

  factory MedicationKnowledgeRegulatory.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeRegulatory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeRegulatory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeRegulatory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeRegulatory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeRegulatory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeSubstitution] /// Specifies if changes are allowed when dispensing a medication from a
/// regulatory perspective.
class MedicationKnowledgeSubstitution extends BackboneElement {
  MedicationKnowledgeSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.allowed,
    this.allowedElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationKnowledgeSubstitution';

  /// [type] /// Specifies the type of substitution allowed.
  final CodeableConcept type;

  /// [allowed] /// Specifies if regulation allows for changes in the medication when
  /// dispensing.
  final FhirBoolean allowed;
  final Element? allowedElement;
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
    json['type'] = type.toJson();
    json['allowed'] = allowed.toJson();
    if (allowedElement != null) {
      json['_allowed'] = allowedElement!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeSubstitution.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeSubstitution(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      allowed: FhirBoolean.fromJson(json['allowed']),
      allowedElement: json['_allowed'] != null
          ? Element.fromJson(json['_allowed'] as Map<String, dynamic>)
          : null,
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
    Element? allowedElement,
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
      allowedElement: allowedElement ?? this.allowedElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationKnowledgeSubstitution.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeSubstitution cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeSchedule] /// Specifies the schedule of a medication in jurisdiction.
class MedicationKnowledgeSchedule extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeSchedule';

  /// [schedule] /// Specifies the specific drug schedule.
  final CodeableConcept schedule;
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
    json['schedule'] = schedule.toJson();
    return json;
  }

  factory MedicationKnowledgeSchedule.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeSchedule(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      schedule:
          CodeableConcept.fromJson(json['schedule'] as Map<String, dynamic>),
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

  factory MedicationKnowledgeSchedule.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeSchedule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeSchedule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeSchedule cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeSchedule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeSchedule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeMaxDispense] /// The maximum number of units of the medication that can be dispensed in a
/// period.
class MedicationKnowledgeMaxDispense extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeMaxDispense';

  /// [quantity] /// The maximum number of units of the medication that can be dispensed.
  final Quantity quantity;

  /// [period] /// The period that applies to the maximum number of units.
  final FhirDuration? period;
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
    json['quantity'] = quantity.toJson();
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeMaxDispense.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeMaxDispense(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      quantity: Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      period: json['period'] != null
          ? FhirDuration.fromJson(json['period'] as Map<String, dynamic>)
          : null,
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

  factory MedicationKnowledgeMaxDispense.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeMaxDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeMaxDispense.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeMaxDispense cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeMaxDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeMaxDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationKnowledgeKinetics] /// The time course of drug absorption, distribution, metabolism and excretion
/// of a medication from the body.
class MedicationKnowledgeKinetics extends BackboneElement {
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

  @override
  String get fhirType => 'MedicationKnowledgeKinetics';

  /// [areaUnderCurve] /// The drug concentration measured at certain discrete points in time.
  final List<Quantity>? areaUnderCurve;

  /// [lethalDose50] /// The median lethal dose of a drug.
  final List<Quantity>? lethalDose50;

  /// [halfLifePeriod] /// The time required for any specified property (e.g., the concentration of a
  /// substance in the body) to decrease by half.
  final FhirDuration? halfLifePeriod;
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
    if (areaUnderCurve != null && areaUnderCurve!.isNotEmpty) {
      json['areaUnderCurve'] =
          areaUnderCurve!.map<dynamic>((Quantity v) => v.toJson()).toList();
    }
    if (lethalDose50 != null && lethalDose50!.isNotEmpty) {
      json['lethalDose50'] =
          lethalDose50!.map<dynamic>((Quantity v) => v.toJson()).toList();
    }
    if (halfLifePeriod != null) {
      json['halfLifePeriod'] = halfLifePeriod!.toJson();
    }
    return json;
  }

  factory MedicationKnowledgeKinetics.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeKinetics(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      areaUnderCurve: json['areaUnderCurve'] != null
          ? (json['areaUnderCurve'] as List<dynamic>)
              .map<Quantity>(
                  (dynamic v) => Quantity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      lethalDose50: json['lethalDose50'] != null
          ? (json['lethalDose50'] as List<dynamic>)
              .map<Quantity>(
                  (dynamic v) => Quantity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      halfLifePeriod: json['halfLifePeriod'] != null
          ? FhirDuration.fromJson(
              json['halfLifePeriod'] as Map<String, dynamic>)
          : null,
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

  factory MedicationKnowledgeKinetics.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeKinetics.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationKnowledgeKinetics.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationKnowledgeKinetics cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledgeKinetics.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationKnowledgeKinetics.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
