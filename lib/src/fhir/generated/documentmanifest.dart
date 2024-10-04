import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DocumentManifest {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier masterIdentifier;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final Reference subject;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final List<Reference> author;
  final List<Reference> recipient;
  final FhirUri source;
  final PrimitiveElement Source;
  final String description;
  final PrimitiveElement Description;
  final List<Reference> content;
  final List<DocumentManifestRelated> related;
  const DocumentManifest({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    this.status,
    this.Status,
    this.type,
    this.subject,
    this.created,
    this.Created,
    this.author,
    this.recipient,
    this.source,
    this.Source,
    this.description,
    this.Description,
    required this.content,
    this.related,
  });
}
