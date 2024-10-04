import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GraphDefinition {
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
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
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
  final FhirCode start;
  final PrimitiveElement Start;
  final FhirCanonical profile;
  final List<GraphDefinitionLink> link;
  const GraphDefinition({
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
    this.version,
    this.Version,
    this.name,
    this.Name,
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
    this.start,
    this.Start,
    this.profile,
    this.link,
  });
}
