import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Consent {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept scope;
  final List<CodeableConcept> category;
  final Reference patient;
  final FhirDateTime dateTime;
  final PrimitiveElement DateTime;
  final List<Reference> performer;
  final List<Reference> organization;
  final Attachment sourceAttachment;
  final Reference sourceReference;
  final List<ConsentPolicy> policy;
  final CodeableConcept policyRule;
  final List<ConsentVerification> verification;
  final Consent_Provision provision;
  const Consent({
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
    this.status,
    this.Status,
    required this.scope,
    required this.category,
    this.patient,
    this.dateTime,
    this.DateTime,
    this.performer,
    this.organization,
    this.sourceAttachment,
    this.sourceReference,
    this.policy,
    this.policyRule,
    this.verification,
    this.provision,
  });
}
