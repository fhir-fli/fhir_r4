import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CompartmentDefinition {
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
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirBoolean search;
  final PrimitiveElement Search;
  final List<CompartmentDefinitionResource> resource;
  const CompartmentDefinition({
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
    this.purpose,
    this.Purpose,
    this.code,
    this.Code,
    this.search,
    this.Search,
    this.resource,
  });
}
