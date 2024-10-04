import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceSampleSize {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final FhirUnsignedInt numberOfStudies;
  final PrimitiveElement NumberOfStudies;
  final FhirUnsignedInt numberOfParticipants;
  final PrimitiveElement NumberOfParticipants;
  final FhirUnsignedInt knownDataCount;
  final PrimitiveElement KnownDataCount;
  const EvidenceSampleSize({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.note,
    this.numberOfStudies,
    this.NumberOfStudies,
    this.numberOfParticipants,
    this.NumberOfParticipants,
    this.knownDataCount,
    this.KnownDataCount,
  });
}
