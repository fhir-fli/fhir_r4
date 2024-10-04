import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ResearchStudyObjective {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
  const ResearchStudyObjective({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.type,
  });
}
