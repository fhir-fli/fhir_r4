import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledge {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference manufacturer;
  final CodeableConcept doseForm;
  final Quantity amount;
  final List<String> synonym;
  final List<PrimitiveElement> Synonym;
  final List<MedicationKnowledgeRelatedMedicationKnowledge> relatedMedicationKnowledge;
  final List<Reference> associatedMedication;
  final List<CodeableConcept> productType;
  final List<MedicationKnowledgeMonograph> monograph;
  final List<MedicationKnowledgeIngredient> ingredient;
  final FhirMarkdown preparationInstruction;
  final PrimitiveElement PreparationInstruction;
  final List<CodeableConcept> intendedRoute;
  final List<MedicationKnowledgeCost> cost;
  final List<MedicationKnowledgeMonitoringProgram> monitoringProgram;
  final List<MedicationKnowledgeAdministrationGuidelines> administrationGuidelines;
  final List<MedicationKnowledgeMedicineClassification> medicineClassification;
  final MedicationKnowledge_Packaging packaging;
  final List<MedicationKnowledgeDrugCharacteristic> drugCharacteristic;
  final List<Reference> contraindication;
  final List<MedicationKnowledgeRegulatory> regulatory;
  final List<MedicationKnowledgeKinetics> kinetics;
  const MedicationKnowledge({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.code,
    this.status,
    this.Status,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.Synonym,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
    this.PreparationInstruction,
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
  });
}
