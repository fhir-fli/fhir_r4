import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeAdministrationGuidelines {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<MedicationKnowledgeDosage> dosage;
  final CodeableConcept indicationCodeableConcept;
  final Reference indicationReference;
  final List<MedicationKnowledgePatientCharacteristics> patientCharacteristics;
  const MedicationKnowledgeAdministrationGuidelines({
    this.id,
    this.extension,
    this.modifierExtension,
    this.dosage,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.patientCharacteristics,
  });
}
