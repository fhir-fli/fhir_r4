import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EpisodeOfCareDiagnosis {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference condition;
  final CodeableConcept role;
  final FhirPositiveInt rank;
  final PrimitiveElement Rank;
  const EpisodeOfCareDiagnosis({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
    this.Rank,
  });
}
