import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? manufacturer;
  final CodeableConcept? doseForm;
  final Quantity? amount;
  final List<FhirString>? synonym;
  final List<Element>? synonymElement;
  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge;
  final List<Reference>? associatedMedication;
  final List<CodeableConcept>? productType;
  final List<MedicationKnowledgeMonograph>? monograph;
  final List<MedicationKnowledgeIngredient>? ingredient;
  final FhirMarkdown? preparationInstruction;
  final Element? preparationInstructionElement;
  final List<CodeableConcept>? intendedRoute;
  final List<MedicationKnowledgeCost>? cost;
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;
  final List<MedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines;
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;
  final MedicationKnowledgePackaging? packaging;
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;
  final List<Reference>? contraindication;
  final List<MedicationKnowledgeRegulatory>? regulatory;
  final List<MedicationKnowledgeKinetics>? kinetics;
  @override
  MedicationKnowledge clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept type;
  final List<Reference> reference;
  @override
  MedicationKnowledgeRelatedMedicationKnowledge clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final Reference? source;
  @override
  MedicationKnowledgeMonograph clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final FhirBoolean? isActive;
  final Element? isActiveElement;
  final Ratio? strength;
  @override
  MedicationKnowledgeIngredient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept type;
  final FhirString? source;
  final Element? sourceElement;
  final Money cost;
  @override
  MedicationKnowledgeCost clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final FhirString? name;
  final Element? nameElement;
  @override
  MedicationKnowledgeMonitoringProgram clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final List<MedicationKnowledgeDosage>? dosage;
  final CodeableConcept? indicationCodeableConcept;
  final Reference? indicationReference;
  final List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics;
  @override
  MedicationKnowledgeAdministrationGuidelines clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept type;
  final List<Dosage> dosage;
  @override
  MedicationKnowledgeDosage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept characteristicCodeableConcept;
  final Quantity characteristicQuantity;
  final List<FhirString>? value;
  final List<Element>? valueElement;
  @override
  MedicationKnowledgePatientCharacteristics clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept type;
  final List<CodeableConcept>? classification;
  @override
  MedicationKnowledgeMedicineClassification clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final Quantity? quantity;
  @override
  MedicationKnowledgePackaging clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueString;
  final Element? valueStringElement;
  final Quantity? valueQuantity;
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;
  @override
  MedicationKnowledgeDrugCharacteristic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final Reference regulatoryAuthority;
  final List<MedicationKnowledgeSubstitution>? substitution;
  final List<MedicationKnowledgeSchedule>? schedule;
  final MedicationKnowledgeMaxDispense? maxDispense;
  @override
  MedicationKnowledgeRegulatory clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept type;
  final FhirBoolean allowed;
  final Element? allowedElement;
  @override
  MedicationKnowledgeSubstitution clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept schedule;
  @override
  MedicationKnowledgeSchedule clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final Quantity quantity;
  final FhirDuration? period;
  @override
  MedicationKnowledgeMaxDispense clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final List<Quantity>? areaUnderCurve;
  final List<Quantity>? lethalDose50;
  final FhirDuration? halfLifePeriod;
  @override
  MedicationKnowledgeKinetics clone() => throw UnimplementedError();
}
