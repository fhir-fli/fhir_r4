import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class RelatedArtifact extends DataType {
  final dynamic? type;
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

  RelatedArtifact({
    super.id,
    super.extension_,
    this.type,
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
  });

}



