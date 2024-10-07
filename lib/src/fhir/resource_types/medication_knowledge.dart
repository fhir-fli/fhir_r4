import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicationKnowledge extends DomainResource {
  final CodeableConcept? code;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? manufacturer;
  final CodeableConcept? doseForm;
  final Quantity? amount;
  final List<FhirString>? synonym;
  final List<Element>? synonymElement;
  final List<BackboneElement>? relatedMedicationKnowledge;
  final List<Reference>? associatedMedication;
  final List<CodeableConcept>? productType;
  final List<BackboneElement>? monograph;
  final List<BackboneElement>? ingredient;
  final FhirMarkdown? preparationInstruction;
  final Element? preparationInstructionElement;
  final List<CodeableConcept>? intendedRoute;
  final List<BackboneElement>? cost;
  final List<BackboneElement>? monitoringProgram;
  final List<BackboneElement>? administrationGuidelines;
  final List<BackboneElement>? dosage;
  final List<BackboneElement>? patientCharacteristics;
  final List<BackboneElement>? medicineClassification;
  final BackboneElement? packaging;
  final List<BackboneElement>? drugCharacteristic;
  final List<Reference>? contraindication;
  final List<BackboneElement>? regulatory;
  final List<BackboneElement>? substitution;
  final List<BackboneElement>? schedule;
  final BackboneElement? maxDispense;
  final List<BackboneElement>? kinetics;

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
    this.dosage,
    this.patientCharacteristics,
    this.medicineClassification,
    this.packaging,
    this.drugCharacteristic,
    this.contraindication,
    this.regulatory,
    this.substitution,
    this.schedule,
    this.maxDispense,
    this.kinetics,
  }) : super(resourceType: R4ResourceType.MedicationKnowledge);

@override
MedicationKnowledge clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement {
  final CodeableConcept type;
  final List<Reference> reference;

  MedicationKnowledgeRelatedMedicationKnowledge({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.reference,
  });

@override
MedicationKnowledgeRelatedMedicationKnowledge clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeMonograph extends BackboneElement {
  final CodeableConcept? type;
  final Reference? source;

  MedicationKnowledgeMonograph({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.source,
  });

@override
MedicationKnowledgeMonograph clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeIngredient extends BackboneElement {
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final FhirBoolean? isActive;
  final Element? isActiveElement;
  final Ratio? strength;

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

@override
MedicationKnowledgeIngredient clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeCost extends BackboneElement {
  final CodeableConcept type;
  final FhirString? source;
  final Element? sourceElement;
  final Money cost;

  MedicationKnowledgeCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.source,
this.sourceElement,
    required this.cost,
  });

@override
MedicationKnowledgeCost clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeMonitoringProgram extends BackboneElement {
  final CodeableConcept? type;
  final FhirString? name;
  final Element? nameElement;

  MedicationKnowledgeMonitoringProgram({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
this.nameElement,
  });

@override
MedicationKnowledgeMonitoringProgram clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeAdministrationGuidelines extends BackboneElement {
  final CodeableConcept? indicationCodeableConcept;
  final Reference? indicationReference;

  MedicationKnowledgeAdministrationGuidelines({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.indicationCodeableConcept,
    this.indicationReference,
  });

@override
MedicationKnowledgeAdministrationGuidelines clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeDosage extends BackboneElement {
  final CodeableConcept type;
  final List<Dosage> dosage;

  MedicationKnowledgeDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.dosage,
  });

@override
MedicationKnowledgeDosage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgePatientCharacteristics extends BackboneElement {
  final CodeableConcept characteristicCodeableConcept;
  final Quantity characteristicQuantity;
  final List<FhirString>? value;
  final List<Element>? valueElement;

  MedicationKnowledgePatientCharacteristics({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.characteristicCodeableConcept,
    required this.characteristicQuantity,
    this.value,
this.valueElement,
  });

@override
MedicationKnowledgePatientCharacteristics clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeMedicineClassification extends BackboneElement {
  final CodeableConcept type;
  final List<CodeableConcept>? classification;

  MedicationKnowledgeMedicineClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.classification,
  });

@override
MedicationKnowledgeMedicineClassification clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgePackaging extends BackboneElement {
  final CodeableConcept? type;
  final Quantity? quantity;

  MedicationKnowledgePackaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.quantity,
  });

@override
MedicationKnowledgePackaging clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeDrugCharacteristic extends BackboneElement {
  final CodeableConcept? type;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final Quantity? valueQuantity;
  final FhirBase64Binary? valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;

  MedicationKnowledgeDrugCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueQuantity,
    this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
  });

@override
MedicationKnowledgeDrugCharacteristic clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeRegulatory extends BackboneElement {
  final Reference regulatoryAuthority;

  MedicationKnowledgeRegulatory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.regulatoryAuthority,
  });

@override
MedicationKnowledgeRegulatory clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeSubstitution extends BackboneElement {
  final CodeableConcept type;
  final FhirBoolean allowed;
  final Element? allowedElement;

  MedicationKnowledgeSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.allowed,
this.allowedElement,
  });

@override
MedicationKnowledgeSubstitution clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeSchedule extends BackboneElement {
  final CodeableConcept schedule;

  MedicationKnowledgeSchedule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.schedule,
  });

@override
MedicationKnowledgeSchedule clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeMaxDispense extends BackboneElement {
  final Quantity quantity;
  final FhirDuration? period;

  MedicationKnowledgeMaxDispense({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.quantity,
    this.period,
  });

@override
MedicationKnowledgeMaxDispense clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationKnowledgeKinetics extends BackboneElement {
  final List<Quantity>? areaUnderCurve;
  final List<Quantity>? lethalDose50;
  final FhirDuration? halfLifePeriod;

  MedicationKnowledgeKinetics({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
  });

@override
MedicationKnowledgeKinetics clone() => throw UnimplementedError();
}

