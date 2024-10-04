import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EncounterParticipant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> type;
  final Period period;
  final Reference individual;
  const EncounterParticipant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.period,
    this.individual,
  });
}
