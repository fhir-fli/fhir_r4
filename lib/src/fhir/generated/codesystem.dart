import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeSystem {
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
  final FhirBoolean caseSensitive;
  final PrimitiveElement CaseSensitive;
  final FhirCanonical valueSet;
  final FhirCode hierarchyMeaning;
  final PrimitiveElement HierarchyMeaning;
  final FhirBoolean compositional;
  final PrimitiveElement Compositional;
  final FhirBoolean versionNeeded;
  final PrimitiveElement VersionNeeded;
  final FhirCode content;
  final PrimitiveElement Content;
  final FhirCanonical supplements;
  final FhirUnsignedInt count;
  final PrimitiveElement Count;
  final List<CodeSystemFilter> filter;
  final List<CodeSystemProperty> property;
  final List<CodeSystemConcept> concept;
  const CodeSystem({
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
    this.caseSensitive,
    this.CaseSensitive,
    this.valueSet,
    this.hierarchyMeaning,
    this.HierarchyMeaning,
    this.compositional,
    this.Compositional,
    this.versionNeeded,
    this.VersionNeeded,
    this.content,
    this.Content,
    this.supplements,
    this.count,
    this.Count,
    this.filter,
    this.property,
    this.concept,
  });
}
