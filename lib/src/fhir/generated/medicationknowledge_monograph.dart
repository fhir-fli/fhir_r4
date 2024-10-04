import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeMonograph {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final Reference source;
  const MedicationKnowledgeMonograph({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.source,
  });
}
