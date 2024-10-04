import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceCertainty {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept type;
  final CodeableConcept rating;
  final String rater;
  final PrimitiveElement Rater;
  final List<EvidenceCertainty> subcomponent;
  const EvidenceCertainty({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.Rater,
    this.subcomponent,
  });
}
