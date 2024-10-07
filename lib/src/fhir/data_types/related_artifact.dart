import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [RelatedArtifact] /// Related artifacts such as additional documentation, justification, or
/// bibliographic references.
class RelatedArtifact extends DataType {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of relationship to the related artifact.
  final FhirCode type;
  final Element? typeElement;

  /// [label] /// A short label that can be used to reference the citation from elsewhere in
  /// the containing artifact, such as a footnote index.
  final FhirString? label;
  final Element? labelElement;

  /// [display] /// A brief description of the document or knowledge resource being referenced,
  /// suitable for display to a consumer.
  final FhirString? display;
  final Element? displayElement;

  /// [citation] /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  final FhirMarkdown? citation;
  final Element? citationElement;

  /// [url] /// A url for the artifact that can be followed to access the actual content.
  final FhirUrl? url;
  final Element? urlElement;

  /// [document] /// The document being referenced, represented as an attachment. This is
  /// exclusive with the resource element.
  final Attachment? document;

  /// [resource] /// The related resource, such as a library, value set, profile, or other
  /// knowledge resource.
  final FhirCanonical? resource;
  final Element? resourceElement;
  @override
  RelatedArtifact clone() => throw UnimplementedError();
  RelatedArtifact copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? type,
    Element? typeElement,
    FhirString? label,
    Element? labelElement,
    FhirString? display,
    Element? displayElement,
    FhirMarkdown? citation,
    Element? citationElement,
    FhirUrl? url,
    Element? urlElement,
    Attachment? document,
    FhirCanonical? resource,
    Element? resourceElement,
  }) {
    return RelatedArtifact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      label: label ?? this.label,
      labelElement: labelElement ?? this.labelElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      citation: citation ?? this.citation,
      citationElement: citationElement ?? this.citationElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      document: document ?? this.document,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
    );
  }
}
