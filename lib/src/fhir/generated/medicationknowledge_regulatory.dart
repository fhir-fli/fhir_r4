import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeRegulatory {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference regulatoryAuthority;
  final List<MedicationKnowledgeSubstitution> substitution;
  final List<MedicationKnowledgeSchedule> schedule;
  final MedicationKnowledge_MaxDispense maxDispense;
  const MedicationKnowledgeRegulatory({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
  });
}
