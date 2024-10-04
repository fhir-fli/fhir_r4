import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EncounterClassHistory {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Coding class;
  final Period period;
  const EncounterClassHistory({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.class,
    required this.period,
  });
}
