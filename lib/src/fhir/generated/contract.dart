import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Contract {
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
  final List<Identifier> identifier;
  final FhirUri url;
  final PrimitiveElement Url;
  final String version;
  final PrimitiveElement Version;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept legalState;
  final Reference instantiatesCanonical;
  final FhirUri instantiatesUri;
  final PrimitiveElement InstantiatesUri;
  final CodeableConcept contentDerivative;
  final FhirDateTime issued;
  final PrimitiveElement Issued;
  final Period applies;
  final CodeableConcept expirationType;
  final List<Reference> subject;
  final List<Reference> authority;
  final List<Reference> domain;
  final List<Reference> site;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
  final Reference author;
  final CodeableConcept scope;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final List<CodeableConcept> subType;
  final Contract_ContentDefinition contentDefinition;
  final List<ContractTerm> term;
  final List<Reference> supportingInfo;
  final List<Reference> relevantHistory;
  final List<ContractSigner> signer;
  final List<ContractFriendly> friendly;
  final List<ContractLegal> legal;
  final List<ContractRule> rule;
  final Attachment legallyBindingAttachment;
  final Reference legallyBindingReference;
  const Contract({
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
    this.identifier,
    this.url,
    this.Url,
    this.version,
    this.Version,
    this.status,
    this.Status,
    this.legalState,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.contentDerivative,
    this.issued,
    this.Issued,
    this.applies,
    this.expirationType,
    this.subject,
    this.authority,
    this.domain,
    this.site,
    this.name,
    this.Name,
    this.title,
    this.Title,
    this.subtitle,
    this.Subtitle,
    this.alias,
    this.Alias,
    this.author,
    this.scope,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.contentDefinition,
    this.term,
    this.supportingInfo,
    this.relevantHistory,
    this.signer,
    this.friendly,
    this.legal,
    this.rule,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
  });
}
