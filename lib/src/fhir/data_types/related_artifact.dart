import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class RelatedArtifact extends DataType {
  final FhirCode type;
  final Element? typeElement;
  final FhirString? label;
  final Element? labelElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirMarkdown? citation;
  final Element? citationElement;
  final FhirUrl? url;
  final Element? urlElement;
  final Attachment? document;
  final FhirCanonical? resource;
  final Element? resourceElement;

  RelatedArtifact({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.label,
    this.labelElement,
    this.display,
    this.displayElement,
    this.citation,
    this.citationElement,
    this.url,
    this.urlElement,
    this.document,
    this.resource,
    this.resourceElement,
  });

  @override
  RelatedArtifact clone() => throw UnimplementedError();
}
