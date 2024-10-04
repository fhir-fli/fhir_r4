import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RelatedArtifact {
  final String id;
  final List<Extension> extension;
  final dynamic type;
  final PrimitiveElement Type;
  final String label;
  final PrimitiveElement Label;
  final String display;
  final PrimitiveElement Display;
  final FhirMarkdown citation;
  final PrimitiveElement Citation;
  final FhirUrl url;
  final PrimitiveElement Url;
  final Attachment document;
  final FhirCanonical resource;
  const RelatedArtifact({
    this.id,
    this.extension,
    this.type,
    this.Type,
    this.label,
    this.Label,
    this.display,
    this.Display,
    this.citation,
    this.Citation,
    this.url,
    this.Url,
    this.document,
    this.resource,
  });
}
