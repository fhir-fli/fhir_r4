import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageDefinition {
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
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final List<FhirCanonical> replaces;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirCanonical base;
  final List<FhirCanonical> parent;
  final Coding eventCoding;
  final String eventUri;
  final PrimitiveElement EventUri;
  final FhirCode category;
  final PrimitiveElement Category;
  final List<MessageDefinitionFocus> focus;
  final FhirCode responseRequired;
  final PrimitiveElement ResponseRequired;
  final List<MessageDefinitionAllowedResponse> allowedResponse;
  final List<FhirCanonical> graph;
  const MessageDefinition({
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
    this.url,
    this.Url,
    this.identifier,
    this.version,
    this.Version,
    this.name,
    this.Name,
    this.title,
    this.Title,
    this.replaces,
    this.status,
    this.Status,
    this.experimental,
    this.Experimental,
    this.date,
    this.Date,
    this.publisher,
    this.Publisher,
    this.contact,
    this.description,
    this.Description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.Purpose,
    this.copyright,
    this.Copyright,
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.EventUri,
    this.category,
    this.Category,
    this.focus,
    this.responseRequired,
    this.ResponseRequired,
    this.allowedResponse,
    this.graph,
  });
}
