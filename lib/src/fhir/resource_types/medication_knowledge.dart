import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'medication_knowledge.g.dart';

/// [MedicationKnowledge] /// Information about a medication that is used to support knowledge.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.MedicationKnowledge);
  @override
  String get fhirType => 'MedicationKnowledge';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that specifies this medication, or a textual description if no code
  /// is available. Usage note: This could be a standard medication code such as
  /// a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or
  /// local formulary code, optionally with translations to other code systems.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [status] /// A code to indicate if the medication is in active use. The status refers to
  /// the validity about the information of the medication and not to its
  /// medicinal properties.
  @JsonKey(name: 'status')
  final MedicationKnowledgeStatusCodes? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [manufacturer] /// Describes the details of the manufacturer of the medication product. This
  /// is not intended to represent the distributor of a medication product.
  @JsonKey(name: 'manufacturer')
  final Reference? manufacturer;

  /// [doseForm] /// Describes the form of the item. Powder; tablets; capsule.
  @JsonKey(name: 'doseForm')
  final CodeableConcept? doseForm;

  /// [amount] /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute provides
  /// additional clarification of the package amount (For example, 3 mL, 10mL,
  /// etc.).
  @JsonKey(name: 'amount')
  final Quantity? amount;

  /// [synonym] /// Additional names for a medication, for example, the name(s) given to a
  /// medication in different countries. For example, acetaminophen and
  /// paracetamol or salbutamol and albuterol.
  @JsonKey(name: 'synonym')
  final List<FhirString>? synonym;
  @JsonKey(name: '_synonym')
  final List<Element>? synonymElement;

  /// [relatedMedicationKnowledge] /// Associated or related knowledge about a medication.
  @JsonKey(name: 'relatedMedicationKnowledge')
  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge;

  /// [associatedMedication] /// Associated or related medications. For example, if the medication is a
  /// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  /// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin), this
  /// would link to a branded product (e.g. Crestor).
  @JsonKey(name: 'associatedMedication')
  final List<Reference>? associatedMedication;

  /// [productType] /// Category of the medication or product (e.g. branded product, therapeutic
  /// moeity, generic product, innovator product, etc.).
  @JsonKey(name: 'productType')
  final List<CodeableConcept>? productType;

  /// [monograph] /// Associated documentation about the medication.
  @JsonKey(name: 'monograph')
  final List<MedicationKnowledgeMonograph>? monograph;

  /// [ingredient] /// Identifies a particular constituent of interest in the product.
  @JsonKey(name: 'ingredient')
  final List<MedicationKnowledgeIngredient>? ingredient;

  /// [preparationInstruction] /// The instructions for preparing the medication.
  @JsonKey(name: 'preparationInstruction')
  final FhirMarkdown? preparationInstruction;
  @JsonKey(name: '_preparationInstruction')
  final Element? preparationInstructionElement;

  /// [intendedRoute] /// The intended or approved route of administration.
  @JsonKey(name: 'intendedRoute')
  final List<CodeableConcept>? intendedRoute;

  /// [cost] /// The price of the medication.
  @JsonKey(name: 'cost')
  final List<MedicationKnowledgeCost>? cost;

  /// [monitoringProgram] /// The program under which the medication is reviewed.
  @JsonKey(name: 'monitoringProgram')
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;

  /// [administrationGuidelines] /// Guidelines for the administration of the medication.
  @JsonKey(name: 'administrationGuidelines')
  final List<MedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines;

  /// [medicineClassification] /// Categorization of the medication within a formulary or classification
  /// system.
  @JsonKey(name: 'medicineClassification')
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;

  /// [packaging] /// Information that only applies to packages (not products).
  @JsonKey(name: 'packaging')
  final MedicationKnowledgePackaging? packaging;

  /// [drugCharacteristic] /// Specifies descriptive properties of the medicine, such as color, shape,
  /// imprints, etc.
  @JsonKey(name: 'drugCharacteristic')
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;

  /// [contraindication] /// Potential clinical issue with or between medication(s) (for example,
  /// drug-drug interaction, drug-disease contraindication, drug-allergy
  /// interaction, etc.).
  @JsonKey(name: 'contraindication')
  final List<Reference>? contraindication;

  /// [regulatory] /// Regulatory information about a medication.
  @JsonKey(name: 'regulatory')
  final List<MedicationKnowledgeRegulatory>? regulatory;

  /// [kinetics] /// The time course of drug absorption, distribution, metabolism and excretion
  /// of a medication from the body.
  @JsonKey(name: 'kinetics')
  final List<MedicationKnowledgeKinetics>? kinetics;
  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of the associated medication knowledge reference.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [reference] /// Associated documentation about the associated medication knowledge.
  @JsonKey(name: 'reference')
  final List<Reference> reference;
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeRelatedMedicationKnowledgeFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgeRelatedMedicationKnowledgeToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of documentation about the medication. (e.g. professional
  /// monograph, patient education monograph).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [source] /// Associated documentation about the medication.
  @JsonKey(name: 'source')
  final Reference? source;
  factory MedicationKnowledgeMonograph.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeMonographFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeMonographToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemCodeableConcept] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication.
  @JsonKey(name: 'itemCodeableConcept')
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication.
  @JsonKey(name: 'itemReference')
  final Reference? itemReference;

  /// [isActive] /// Indication of whether this ingredient affects the therapeutic action of the
  /// drug.
  @JsonKey(name: 'isActive')
  final FhirBoolean? isActive;
  @JsonKey(name: '_isActive')
  final Element? isActiveElement;

  /// [strength] /// Specifies how many (or how much) of the items there are in this Medication.
  /// For example, 250 mg per tablet. This is expressed as a ratio where the
  /// numerator is 250mg and the denominator is 1 tablet.
  @JsonKey(name: 'strength')
  final Ratio? strength;
  factory MedicationKnowledgeIngredient.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeIngredientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeIngredientToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of the cost information. For example, manufacturers' cost,
  /// patient cost, claim reimbursement cost, actual acquisition cost.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [source] /// The source or owner that assigns the price to the medication.
  @JsonKey(name: 'source')
  final FhirString? source;
  @JsonKey(name: '_source')
  final Element? sourceElement;

  /// [cost] /// The price of the medication.
  @JsonKey(name: 'cost')
  final Money cost;
  factory MedicationKnowledgeCost.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeCostFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeCostToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of program under which the medication is monitored.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [name] /// Name of the reviewing program.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;
  factory MedicationKnowledgeMonitoringProgram.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeMonitoringProgramFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgeMonitoringProgramToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [dosage] /// Dosage for the medication for the specific guidelines.
  @JsonKey(name: 'dosage')
  final List<MedicationKnowledgeDosage>? dosage;

  /// [indicationCodeableConcept] /// Indication for use that apply to the specific administration guidelines.
  @JsonKey(name: 'indicationCodeableConcept')
  final CodeableConcept? indicationCodeableConcept;

  /// [indicationReference] /// Indication for use that apply to the specific administration guidelines.
  @JsonKey(name: 'indicationReference')
  final Reference? indicationReference;

  /// [patientCharacteristics] /// Characteristics of the patient that are relevant to the administration
  /// guidelines (for example, height, weight, gender, etc.).
  @JsonKey(name: 'patientCharacteristics')
  final List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics;
  factory MedicationKnowledgeAdministrationGuidelines.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeAdministrationGuidelinesFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgeAdministrationGuidelinesToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of dosage (for example, prophylaxis, maintenance, therapeutic,
  /// etc.).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [dosage] /// Dosage for the medication for the specific guidelines.
  @JsonKey(name: 'dosage')
  final List<Dosage> dosage;
  factory MedicationKnowledgeDosage.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeDosageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeDosageToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [characteristicCodeableConcept] /// Specific characteristic that is relevant to the administration guideline
  /// (e.g. height, weight, gender).
  @JsonKey(name: 'characteristicCodeableConcept')
  final CodeableConcept? characteristicCodeableConcept;

  /// [characteristicQuantity] /// Specific characteristic that is relevant to the administration guideline
  /// (e.g. height, weight, gender).
  @JsonKey(name: 'characteristicQuantity')
  final Quantity? characteristicQuantity;

  /// [value] /// The specific characteristic (e.g. height, weight, gender, etc.).
  @JsonKey(name: 'value')
  final List<FhirString>? value;
  @JsonKey(name: '_value')
  final List<Element>? valueElement;
  factory MedicationKnowledgePatientCharacteristics.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgePatientCharacteristicsFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgePatientCharacteristicsToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of category for the medication (for example, therapeutic
  /// classification, therapeutic sub-classification).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [classification] /// Specific category assigned to the medication (e.g. anti-infective,
  /// anti-hypertensive, antibiotic, etc.).
  @JsonKey(name: 'classification')
  final List<CodeableConcept>? classification;
  factory MedicationKnowledgeMedicineClassification.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeMedicineClassificationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgeMedicineClassificationToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code that defines the specific type of packaging that the medication can
  /// be found in (e.g. blister sleeve, tube, bottle).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [quantity] /// The number of product units the package would contain if fully loaded.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;
  factory MedicationKnowledgePackaging.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgePackagingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgePackagingToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code specifying which characteristic of the medicine is being described
  /// (for example, colour, shape, imprint).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [valueCodeableConcept] /// Description of the characteristic.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueString] /// Description of the characteristic.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueQuantity] /// Description of the characteristic.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueBase64Binary] /// Description of the characteristic.
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary? valueBase64Binary;
  @JsonKey(name: '_valueBase64Binary')
  final Element? valueBase64BinaryElement;
  factory MedicationKnowledgeDrugCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeDrugCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgeDrugCharacteristicToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [regulatoryAuthority] /// The authority that is specifying the regulations.
  @JsonKey(name: 'regulatoryAuthority')
  final Reference regulatoryAuthority;

  /// [substitution] /// Specifies if changes are allowed when dispensing a medication from a
  /// regulatory perspective.
  @JsonKey(name: 'substitution')
  final List<MedicationKnowledgeSubstitution>? substitution;

  /// [schedule] /// Specifies the schedule of a medication in jurisdiction.
  @JsonKey(name: 'schedule')
  final List<MedicationKnowledgeSchedule>? schedule;

  /// [maxDispense] /// The maximum number of units of the medication that can be dispensed in a
  /// period.
  @JsonKey(name: 'maxDispense')
  final MedicationKnowledgeMaxDispense? maxDispense;
  factory MedicationKnowledgeRegulatory.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeRegulatoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeRegulatoryToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Specifies the type of substitution allowed.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [allowed] /// Specifies if regulation allows for changes in the medication when
  /// dispensing.
  @JsonKey(name: 'allowed')
  final FhirBoolean allowed;
  @JsonKey(name: '_allowed')
  final Element? allowedElement;
  factory MedicationKnowledgeSubstitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeSubstitutionFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledgeSubstitutionToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [schedule] /// Specifies the specific drug schedule.
  @JsonKey(name: 'schedule')
  final CodeableConcept schedule;
  factory MedicationKnowledgeSchedule.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeScheduleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeScheduleToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The maximum number of units of the medication that can be dispensed.
  @JsonKey(name: 'quantity')
  final Quantity quantity;

  /// [period] /// The period that applies to the maximum number of units.
  @JsonKey(name: 'period')
  final FhirDuration? period;
  factory MedicationKnowledgeMaxDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeMaxDispenseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeMaxDispenseToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [areaUnderCurve] /// The drug concentration measured at certain discrete points in time.
  @JsonKey(name: 'areaUnderCurve')
  final List<Quantity>? areaUnderCurve;

  /// [lethalDose50] /// The median lethal dose of a drug.
  @JsonKey(name: 'lethalDose50')
  final List<Quantity>? lethalDose50;

  /// [halfLifePeriod] /// The time required for any specified property (e.g., the concentration of a
  /// substance in the body) to decrease by half.
  @JsonKey(name: 'halfLifePeriod')
  final FhirDuration? halfLifePeriod;
  factory MedicationKnowledgeKinetics.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeKineticsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationKnowledgeKineticsToJson(this);

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
