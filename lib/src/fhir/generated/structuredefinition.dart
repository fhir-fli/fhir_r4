import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureDefinition {
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
  final List<Coding> keyword;
  final FhirCode fhirVersion;
  final PrimitiveElement FhirVersion;
  final List<StructureDefinitionMapping> mapping;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirBoolean abstract;
  final PrimitiveElement Abstract;
  final List<StructureDefinitionContext> context;
  final List<String> contextInvariant;
  final List<PrimitiveElement> ContextInvariant;
  final FhirUri type;
  final PrimitiveElement Type;
  final FhirCanonical baseDefinition;
  final FhirCode derivation;
  final PrimitiveElement Derivation;
  final StructureDefinition_Snapshot snapshot;
  final StructureDefinition_Differential differential;
  const StructureDefinition({
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
    this.keyword,
    this.fhirVersion,
    this.FhirVersion,
    this.mapping,
    this.kind,
    this.Kind,
    this.abstract,
    this.Abstract,
    this.context,
    this.contextInvariant,
    this.ContextInvariant,
    this.type,
    this.Type,
    this.baseDefinition,
    this.derivation,
    this.Derivation,
    this.snapshot,
    this.differential,
  });
}
