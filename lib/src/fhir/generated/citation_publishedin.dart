import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationPublishedIn {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<Identifier> identifier;
  final String title;
  final PrimitiveElement Title;
  final Reference publisher;
  final String publisherLocation;
  final PrimitiveElement PublisherLocation;
  const CitationPublishedIn({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.identifier,
    this.title,
    this.Title,
    this.publisher,
    this.publisherLocation,
    this.PublisherLocation,
  });
}
