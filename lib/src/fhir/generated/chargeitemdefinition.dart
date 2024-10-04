import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ChargeItemDefinition {
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
  final String title;
  final PrimitiveElement Title;
  final List<FhirUri> derivedFromUri;
  final List<PrimitiveElement> DerivedFromUri;
  final List<FhirCanonical> partOf;
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
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final CodeableConcept code;
  final List<Reference> instance;
  final List<ChargeItemDefinitionApplicability> applicability;
  final List<ChargeItemDefinitionPropertyGroup> propertyGroup;
  const ChargeItemDefinition({
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
    this.title,
    this.Title,
    this.derivedFromUri,
    this.DerivedFromUri,
    this.partOf,
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
    this.copyright,
    this.Copyright,
    this.approvalDate,
    this.ApprovalDate,
    this.lastReviewDate,
    this.LastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
  });
}
