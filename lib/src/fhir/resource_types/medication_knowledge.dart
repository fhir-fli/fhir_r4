import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.MedicationKnowledge);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that specifies this medication, or a textual description if no code
  /// is available. Usage note: This could be a standard medication code such as
  /// a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or
  /// local formulary code, optionally with translations to other code systems.
  final CodeableConcept? code;

  /// [status] /// A code to indicate if the medication is in active use. The status refers to
  /// the validity about the information of the medication and not to its
  /// medicinal properties.
  final FhirCode? status;
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
  MedicationKnowledge clone() => throw UnimplementedError();
  MedicationKnowledge copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeRelatedMedicationKnowledge] /// Associated or related knowledge about a medication.
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement {
  MedicationKnowledgeRelatedMedicationKnowledge({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.reference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of the associated medication knowledge reference.
  final CodeableConcept type;

  /// [reference] /// Associated documentation about the associated medication knowledge.
  final List<Reference> reference;
  @override
  MedicationKnowledgeRelatedMedicationKnowledge clone() =>
      throw UnimplementedError();
  MedicationKnowledgeRelatedMedicationKnowledge copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? reference,
  }) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      reference: reference ?? this.reference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeMonograph] /// Associated documentation about the medication.
class MedicationKnowledgeMonograph extends BackboneElement {
  MedicationKnowledgeMonograph({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.source,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of documentation about the medication. (e.g. professional
  /// monograph, patient education monograph).
  final CodeableConcept? type;

  /// [source] /// Associated documentation about the medication.
  final Reference? source;
  @override
  MedicationKnowledgeMonograph clone() => throw UnimplementedError();
  MedicationKnowledgeMonograph copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? source,
  }) {
    return MedicationKnowledgeMonograph(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      source: source ?? this.source,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeIngredient] /// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredient extends BackboneElement {
  MedicationKnowledgeIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemCodeableConcept] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication.
  final CodeableConcept itemCodeableConcept;

  /// [itemReference] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication.
  final Reference itemReference;

  /// [isActive] /// Indication of whether this ingredient affects the therapeutic action of the
  /// drug.
  final FhirBoolean? isActive;
  final Element? isActiveElement;

  /// [strength] /// Specifies how many (or how much) of the items there are in this Medication.
  /// For example, 250 mg per tablet. This is expressed as a ratio where the
  /// numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
  @override
  MedicationKnowledgeIngredient clone() => throw UnimplementedError();
  MedicationKnowledgeIngredient copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirBoolean? isActive,
    Element? isActiveElement,
    Ratio? strength,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of the cost information. For example, manufacturers' cost,
  /// patient cost, claim reimbursement cost, actual acquisition cost.
  final CodeableConcept type;

  /// [source] /// The source or owner that assigns the price to the medication.
  final FhirString? source;
  final Element? sourceElement;

  /// [cost] /// The price of the medication.
  final Money cost;
  @override
  MedicationKnowledgeCost clone() => throw UnimplementedError();
  MedicationKnowledgeCost copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? source,
    Element? sourceElement,
    Money? cost,
  }) {
    return MedicationKnowledgeCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      cost: cost ?? this.cost,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeMonitoringProgram] /// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgram extends BackboneElement {
  MedicationKnowledgeMonitoringProgram({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
    this.nameElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of program under which the medication is monitored.
  final CodeableConcept? type;

  /// [name] /// Name of the reviewing program.
  final FhirString? name;
  final Element? nameElement;
  @override
  MedicationKnowledgeMonitoringProgram clone() => throw UnimplementedError();
  MedicationKnowledgeMonitoringProgram copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? name,
    Element? nameElement,
  }) {
    return MedicationKnowledgeMonitoringProgram(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

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
  MedicationKnowledgeAdministrationGuidelines clone() =>
      throw UnimplementedError();
  MedicationKnowledgeAdministrationGuidelines copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MedicationKnowledgeDosage>? dosage,
    CodeableConcept? indicationCodeableConcept,
    Reference? indicationReference,
    List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeDosage] /// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeDosage extends BackboneElement {
  MedicationKnowledgeDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.dosage,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of dosage (for example, prophylaxis, maintenance, therapeutic,
  /// etc.).
  final CodeableConcept type;

  /// [dosage] /// Dosage for the medication for the specific guidelines.
  final List<Dosage> dosage;
  @override
  MedicationKnowledgeDosage clone() => throw UnimplementedError();
  MedicationKnowledgeDosage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Dosage>? dosage,
  }) {
    return MedicationKnowledgeDosage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      dosage: dosage ?? this.dosage,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgePatientCharacteristics] /// Characteristics of the patient that are relevant to the administration
/// guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgePatientCharacteristics extends BackboneElement {
  MedicationKnowledgePatientCharacteristics({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.characteristicCodeableConcept,
    required this.characteristicQuantity,
    this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [characteristicCodeableConcept] /// Specific characteristic that is relevant to the administration guideline
  /// (e.g. height, weight, gender).
  final CodeableConcept characteristicCodeableConcept;

  /// [characteristicQuantity] /// Specific characteristic that is relevant to the administration guideline
  /// (e.g. height, weight, gender).
  final Quantity characteristicQuantity;

  /// [value] /// The specific characteristic (e.g. height, weight, gender, etc.).
  final List<FhirString>? value;
  final List<Element>? valueElement;
  @override
  MedicationKnowledgePatientCharacteristics clone() =>
      throw UnimplementedError();
  MedicationKnowledgePatientCharacteristics copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? characteristicCodeableConcept,
    Quantity? characteristicQuantity,
    List<FhirString>? value,
    List<Element>? valueElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeMedicineClassification] /// Categorization of the medication within a formulary or classification
/// system.
class MedicationKnowledgeMedicineClassification extends BackboneElement {
  MedicationKnowledgeMedicineClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.classification,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of category for the medication (for example, therapeutic
  /// classification, therapeutic sub-classification).
  final CodeableConcept type;

  /// [classification] /// Specific category assigned to the medication (e.g. anti-infective,
  /// anti-hypertensive, antibiotic, etc.).
  final List<CodeableConcept>? classification;
  @override
  MedicationKnowledgeMedicineClassification clone() =>
      throw UnimplementedError();
  MedicationKnowledgeMedicineClassification copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classification,
  }) {
    return MedicationKnowledgeMedicineClassification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classification: classification ?? this.classification,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgePackaging] /// Information that only applies to packages (not products).
class MedicationKnowledgePackaging extends BackboneElement {
  MedicationKnowledgePackaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.quantity,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code that defines the specific type of packaging that the medication can
  /// be found in (e.g. blister sleeve, tube, bottle).
  final CodeableConcept? type;

  /// [quantity] /// The number of product units the package would contain if fully loaded.
  final Quantity? quantity;
  @override
  MedicationKnowledgePackaging clone() => throw UnimplementedError();
  MedicationKnowledgePackaging copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? quantity,
  }) {
    return MedicationKnowledgePackaging(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

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
  MedicationKnowledgeDrugCharacteristic clone() => throw UnimplementedError();
  MedicationKnowledgeDrugCharacteristic copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

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
  MedicationKnowledgeRegulatory clone() => throw UnimplementedError();
  MedicationKnowledgeRegulatory copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? regulatoryAuthority,
    List<MedicationKnowledgeSubstitution>? substitution,
    List<MedicationKnowledgeSchedule>? schedule,
    MedicationKnowledgeMaxDispense? maxDispense,
  }) {
    return MedicationKnowledgeRegulatory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      regulatoryAuthority: regulatoryAuthority ?? this.regulatoryAuthority,
      substitution: substitution ?? this.substitution,
      schedule: schedule ?? this.schedule,
      maxDispense: maxDispense ?? this.maxDispense,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Specifies the type of substitution allowed.
  final CodeableConcept type;

  /// [allowed] /// Specifies if regulation allows for changes in the medication when
  /// dispensing.
  final FhirBoolean allowed;
  final Element? allowedElement;
  @override
  MedicationKnowledgeSubstitution clone() => throw UnimplementedError();
  MedicationKnowledgeSubstitution copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBoolean? allowed,
    Element? allowedElement,
  }) {
    return MedicationKnowledgeSubstitution(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowed: allowed ?? this.allowed,
      allowedElement: allowedElement ?? this.allowedElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeSchedule] /// Specifies the schedule of a medication in jurisdiction.
class MedicationKnowledgeSchedule extends BackboneElement {
  MedicationKnowledgeSchedule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.schedule,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [schedule] /// Specifies the specific drug schedule.
  final CodeableConcept schedule;
  @override
  MedicationKnowledgeSchedule clone() => throw UnimplementedError();
  MedicationKnowledgeSchedule copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? schedule,
  }) {
    return MedicationKnowledgeSchedule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationKnowledgeMaxDispense] /// The maximum number of units of the medication that can be dispensed in a
/// period.
class MedicationKnowledgeMaxDispense extends BackboneElement {
  MedicationKnowledgeMaxDispense({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.quantity,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The maximum number of units of the medication that can be dispensed.
  final Quantity quantity;

  /// [period] /// The period that applies to the maximum number of units.
  final FhirDuration? period;
  @override
  MedicationKnowledgeMaxDispense clone() => throw UnimplementedError();
  MedicationKnowledgeMaxDispense copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? period,
  }) {
    return MedicationKnowledgeMaxDispense(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [areaUnderCurve] /// The drug concentration measured at certain discrete points in time.
  final List<Quantity>? areaUnderCurve;

  /// [lethalDose50] /// The median lethal dose of a drug.
  final List<Quantity>? lethalDose50;

  /// [halfLifePeriod] /// The time required for any specified property (e.g., the concentration of a
  /// substance in the body) to decrease by half.
  final FhirDuration? halfLifePeriod;
  @override
  MedicationKnowledgeKinetics clone() => throw UnimplementedError();
  MedicationKnowledgeKinetics copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Quantity>? areaUnderCurve,
    List<Quantity>? lethalDose50,
    FhirDuration? halfLifePeriod,
  }) {
    return MedicationKnowledgeKinetics(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      areaUnderCurve: areaUnderCurve ?? this.areaUnderCurve,
      lethalDose50: lethalDose50 ?? this.lethalDose50,
      halfLifePeriod: halfLifePeriod ?? this.halfLifePeriod,
    );
  }
}
