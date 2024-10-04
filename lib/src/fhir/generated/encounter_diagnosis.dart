import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EncounterDiagnosis {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference condition;
  final CodeableConcept use;
  final FhirPositiveInt rank;
  final PrimitiveElement Rank;
  const EncounterDiagnosis({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    this.Rank,
  });
}
