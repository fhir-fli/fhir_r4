import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DocumentReference {
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
  final FhirCode docStatus;
  final PrimitiveElement DocStatus;
  final CodeableConcept type;
  final List<CodeableConcept> category;
  final Reference subject;
  final FhirInstant date;
  final PrimitiveElement Date;
  final List<Reference> author;
  final Reference authenticator;
  final Reference custodian;
  final List<DocumentReferenceRelatesTo> relatesTo;
  final String description;
  final PrimitiveElement Description;
  final List<CodeableConcept> securityLabel;
  final List<DocumentReferenceContent> content;
  final DocumentReference_Context context;
  const DocumentReference({
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
    this.docStatus,
    this.DocStatus,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.Date,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.Description,
    this.securityLabel,
    required this.content,
    this.context,
  });
}
