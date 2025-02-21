// Generated from FHIR R4 SearchParameter definitions
// ignore_for_file: unnecessary_statements, cascade_invocations, lines_longer_than_80_chars
import 'package:fhir_r4/fhir_r4.dart';

extension MakeIterable on FhirBase {
  /// Returns an iterable of the given type.
  Iterable<T> makeIterable<T extends FhirBase>() {
    return <T>[this as T];
  }
}

void main() {
  final account = Account.empty();
 // Account.identifier (token)
account.identifier;
 // Account.name (string)
account.name;
 // Account.owner (reference)
account.owner;
 // Account.subject.where(resolve() is Patient) (reference)
account.subject?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Account.servicePeriod (date)
account.servicePeriod;
 // Account.status (token)
account.status;
 // Account.subject (reference)
account.subject;
 // Account.type (token)
account.type;
  final activityDefinition = ActivityDefinition.empty();
 // ActivityDefinition.relatedArtifact.where(type='composed-of').resource (reference)
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // ActivityDefinition.useContext.code (token)
activityDefinition.useContext?.map((e) => e.code);
 // ActivityDefinition.date (date)
activityDefinition.date;
 // ActivityDefinition.relatedArtifact.where(type='depends-on').resource (reference)
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // ActivityDefinition.library (reference)
activityDefinition.library_;
 // ActivityDefinition.relatedArtifact.where(type='derived-from').resource (reference)
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // ActivityDefinition.description (string)
activityDefinition.description;
 // ActivityDefinition.effectivePeriod (date)
activityDefinition.effectivePeriod;
 // ActivityDefinition.identifier (token)
activityDefinition.identifier;
 // ActivityDefinition.jurisdiction (token)
activityDefinition.jurisdiction;
 // ActivityDefinition.name (string)
activityDefinition.name;
 // ActivityDefinition.relatedArtifact.where(type='predecessor').resource (reference)
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // ActivityDefinition.publisher (string)
activityDefinition.publisher;
 // ActivityDefinition.status (token)
activityDefinition.status;
 // ActivityDefinition.relatedArtifact.where(type='successor').resource (reference)
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // ActivityDefinition.title (string)
activityDefinition.title;
 // ActivityDefinition.topic (token)
activityDefinition.topic;
 // ActivityDefinition.url (uri)
activityDefinition.url;
 // ActivityDefinition.version (token)
activityDefinition.version;
 // ActivityDefinition.useContext (composite)
activityDefinition.useContext;
 // ActivityDefinition.useContext (composite)
activityDefinition.useContext;
  final administrableProductDefinition = AdministrableProductDefinition.empty();
 // AdministrableProductDefinition.device (reference)
administrableProductDefinition.device;
 // AdministrableProductDefinition.administrableDoseForm (token)
administrableProductDefinition.administrableDoseForm;
 // AdministrableProductDefinition.formOf (reference)
administrableProductDefinition.formOf;
 // AdministrableProductDefinition.identifier (token)
administrableProductDefinition.identifier;
 // AdministrableProductDefinition.ingredient (token)
administrableProductDefinition.ingredient;
 // AdministrableProductDefinition.producedFrom (reference)
administrableProductDefinition.producedFrom;
 // AdministrableProductDefinition.routeOfAdministration.code (token)
administrableProductDefinition.routeOfAdministration.map((e) => e.code);
 // AdministrableProductDefinition.routeOfAdministration.targetSpecies.code (token)
administrableProductDefinition.routeOfAdministration.expand((e) => e.targetSpecies ?? <AdministrableProductDefinitionTargetSpecies>[]).map((e) => e.code);
  final adverseEvent = AdverseEvent.empty();
 // AdverseEvent.actuality (token)
adverseEvent.actuality;
 // AdverseEvent.category (token)
adverseEvent.category;
 // AdverseEvent.date (date)
adverseEvent.date;
 // AdverseEvent.event (token)
adverseEvent.event;
 // AdverseEvent.location (reference)
adverseEvent.location;
 // AdverseEvent.recorder (reference)
adverseEvent.recorder;
 // AdverseEvent.resultingCondition (reference)
adverseEvent.resultingCondition;
 // AdverseEvent.seriousness (token)
adverseEvent.seriousness;
 // AdverseEvent.severity (token)
adverseEvent.severity;
 // AdverseEvent.study (reference)
adverseEvent.study;
 // AdverseEvent.subject (reference)
adverseEvent.subject;
 // AdverseEvent.suspectEntity.instance (reference)
adverseEvent.suspectEntity?.map((e) => e.instance);
  final allergyIntolerance = AllergyIntolerance.empty();
 // AllergyIntolerance.asserter (reference)
allergyIntolerance.asserter;
 // AllergyIntolerance.category (token)
allergyIntolerance.category;
 // AllergyIntolerance.clinicalStatus (token)
allergyIntolerance.clinicalStatus;
 // AllergyIntolerance.code (token)
allergyIntolerance.code;
 // AllergyIntolerance.reaction.substance (token)
allergyIntolerance.reaction?.map((e) => e.substance);
 // AllergyIntolerance.criticality (token)
allergyIntolerance.criticality;
 // AllergyIntolerance.recordedDate (token)
allergyIntolerance.recordedDate;
 // AllergyIntolerance.identifier (token)
allergyIntolerance.identifier;
 // AllergyIntolerance.lastOccurrence (token)
allergyIntolerance.lastOccurrence;
 // AllergyIntolerance.reaction.manifestation (token)
allergyIntolerance.reaction?.expand((e) => e.manifestation ?? <CodeableConcept>[]);
 // AllergyIntolerance.reaction.onset (token)
allergyIntolerance.reaction?.map((e) => e.onset);
 // AllergyIntolerance.patient (token)
allergyIntolerance.patient;
 // AllergyIntolerance.recorder (token)
allergyIntolerance.recorder;
 // AllergyIntolerance.reaction.exposureRoute (token)
allergyIntolerance.reaction?.map((e) => e.exposureRoute);
 // AllergyIntolerance.reaction.severity (date)
allergyIntolerance.reaction?.map((e) => e.severity);
 // AllergyIntolerance.type (date)
allergyIntolerance.type;
 // AllergyIntolerance.verificationStatus (date)
allergyIntolerance.verificationStatus;
  final appointment = Appointment.empty();
 // Appointment.participant.actor (date)
appointment.participant.map((e) => e.actor);
 // Appointment.appointmentType (date)
appointment.appointmentType;
 // Appointment.basedOn (date)
appointment.basedOn;
 // Appointment.start (date)
appointment.start;
 // Appointment.identifier (date)
appointment.identifier;
 // Appointment.participant.actor.where(resolve() is Location) (date)
appointment.participant.map((e) => e.actor).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Location';
  });
 // Appointment.participant.status (date)
appointment.participant.map((e) => e.status);
 // Appointment.participant.actor.where(resolve() is Patient) (date)
appointment.participant.map((e) => e.actor).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Appointment.participant.actor.where(resolve() is Practitioner) (date)
appointment.participant.map((e) => e.actor).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // Appointment.reasonCode (date)
appointment.reasonCode;
 // Appointment.reasonReference (date)
appointment.reasonReference;
 // Appointment.serviceCategory (date)
appointment.serviceCategory;
 // Appointment.serviceType (token)
appointment.serviceType;
 // Appointment.slot (token)
appointment.slot;
 // Appointment.specialty (token)
appointment.specialty;
 // Appointment.status (token)
appointment.status;
 // Appointment.supportingInformation (token)
appointment.supportingInformation;
  final appointmentResponse = AppointmentResponse.empty();
 // AppointmentResponse.actor (token)
appointmentResponse.actor;
 // AppointmentResponse.appointment (token)
appointmentResponse.appointment;
 // AppointmentResponse.identifier (token)
appointmentResponse.identifier;
 // AppointmentResponse.actor.where(resolve() is Location) (token)
appointmentResponse.actor?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Location';
  });
 // AppointmentResponse.participantStatus (token)
appointmentResponse.participantStatus;
 // AppointmentResponse.actor.where(resolve() is Patient) (token)
appointmentResponse.actor?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // AppointmentResponse.actor.where(resolve() is Practitioner) (token)
appointmentResponse.actor?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
  final auditEvent = AuditEvent.empty();
 // AuditEvent.action (token)
auditEvent.action;
 // AuditEvent.agent.network.address (token)
auditEvent.agent.map((e) => e.network).map((e) => e?.address);
 // AuditEvent.agent.who (token)
auditEvent.agent.map((e) => e.who);
 // AuditEvent.agent.name (token)
auditEvent.agent.map((e) => e.name);
 // AuditEvent.agent.role (token)
auditEvent.agent.expand((e) => e.role ?? <CodeableConcept>[]);
 // AuditEvent.agent.altId (token)
auditEvent.agent.map((e) => e.altId);
 // AuditEvent.recorded (token)
auditEvent.recorded;
 // AuditEvent.entity.what (token)
auditEvent.entity?.map((e) => e.what);
 // AuditEvent.entity.name (token)
auditEvent.entity?.map((e) => e.name);
 // AuditEvent.entity.role (token)
auditEvent.entity?.map((e) => e.role);
 // AuditEvent.entity.type (token)
auditEvent.entity?.map((e) => e.type);
 // AuditEvent.outcome (token)
auditEvent.outcome;
 // AuditEvent.agent.who.where(resolve() is Patient) (token)
auditEvent.agent.map((e) => e.who).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // AuditEvent.entity.what.where(resolve() is Patient) (token)
auditEvent.entity?.map((e) => e.what).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // AuditEvent.agent.policy (token)
auditEvent.agent.expand((e) => e.policy ?? <FhirUri>[]);
 // AuditEvent.source.site (token)
auditEvent.source.site;
 // AuditEvent.source.observer (token)
auditEvent.source.observer;
 // AuditEvent.subtype (token)
auditEvent.subtype;
 // AuditEvent.type (token)
auditEvent.type;
  final basic = Basic.empty();
 // Basic.author (token)
basic.author;
 // Basic.code (date)
basic.code;
 // Basic.created (token)
basic.created;
 // Basic.identifier (date)
basic.identifier;
 // Basic.subject.where(resolve() is Patient) (reference)
basic.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Basic.subject (reference)
basic.subject;
  final binary = Binary.empty();
  final biologicallyDerivedProduct = BiologicallyDerivedProduct.empty();
  final bodyStructure = BodyStructure.empty();
 // BodyStructure.identifier (reference)
bodyStructure.identifier;
 // BodyStructure.location (reference)
bodyStructure.location;
 // BodyStructure.morphology (reference)
bodyStructure.morphology;
 // BodyStructure.patient (reference)
bodyStructure.patient;
  final bundle = Bundle.empty();
 // Bundle.entry[0].resource (reference)
bundle.entry?.firstOrNull?.resource;
 // Bundle.identifier (reference)
bundle.identifier;
 // Bundle.entry[0].resource (reference)
bundle.entry?.firstOrNull?.resource;
 // Bundle.timestamp (reference)
bundle.timestamp;
 // Bundle.type (reference)
bundle.type;
  final capabilityStatement = CapabilityStatement.empty();
 // CapabilityStatement.useContext.code (reference)
capabilityStatement.useContext?.map((e) => e.code);
 // CapabilityStatement.date (reference)
capabilityStatement.date;
 // CapabilityStatement.description (reference)
capabilityStatement.description;
 // CapabilityStatement.version (reference)
capabilityStatement.version;
 // CapabilityStatement.format (reference)
capabilityStatement.format;
 // CapabilityStatement.implementationGuide (reference)
capabilityStatement.implementationGuide;
 // CapabilityStatement.jurisdiction (reference)
capabilityStatement.jurisdiction;
 // CapabilityStatement.rest.mode (reference)
capabilityStatement.rest?.map((e) => e.mode);
 // CapabilityStatement.name (reference)
capabilityStatement.name;
 // CapabilityStatement.publisher (reference)
capabilityStatement.publisher;
 // CapabilityStatement.rest.resource.type (reference)
capabilityStatement.rest?.expand((e) => e.resource ?? <CapabilityStatementResource>[]).map((e) => e.type);
 // CapabilityStatement.rest.resource.profile (reference)
capabilityStatement.rest?.expand((e) => e.resource ?? <CapabilityStatementResource>[]).map((e) => e.profile);
 // CapabilityStatement.rest.security.service (reference)
capabilityStatement.rest?.map((e) => e.security).expand((e) => e?.service ?? <CodeableConcept>[]);
 // CapabilityStatement.software.name (reference)
capabilityStatement.software?.name;
 // CapabilityStatement.status (reference)
capabilityStatement.status;
 // CapabilityStatement.rest.resource.supportedProfile (reference)
capabilityStatement.rest?.expand((e) => e.resource ?? <CapabilityStatementResource>[]).expand((e) => e.supportedProfile ?? <FhirCanonical>[]);
 // CapabilityStatement.title (reference)
capabilityStatement.title;
 // CapabilityStatement.url (reference)
capabilityStatement.url;
 // CapabilityStatement.version (reference)
capabilityStatement.version;
 // CapabilityStatement.useContext (reference)
capabilityStatement.useContext;
 // CapabilityStatement.useContext (reference)
capabilityStatement.useContext;
  final carePlan = CarePlan.empty();
 // CarePlan.period (reference)
carePlan.period;
 // CarePlan.identifier (token)
carePlan.identifier;
 // CarePlan.subject.where(resolve() is Patient) (token)
carePlan.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // CarePlan.activity.detail.code (token)
carePlan.activity?.map((e) => e.detail).map((e) => e?.code);
 // CarePlan.activity.detail.scheduled (token)
carePlan.activity?.map((e) => e.detail).map((e) => e?.scheduledX);
 // CarePlan.activity.reference (token)
carePlan.activity?.map((e) => e.reference);
 // CarePlan.basedOn (token)
carePlan.basedOn;
 // CarePlan.careTeam (token)
carePlan.careTeam;
 // CarePlan.category (token)
carePlan.category;
 // CarePlan.addresses (token)
carePlan.addresses;
 // CarePlan.encounter (reference)
carePlan.encounter;
 // CarePlan.goal (token)
carePlan.goal;
 // CarePlan.instantiatesCanonical (reference)
carePlan.instantiatesCanonical;
 // CarePlan.instantiatesUri (date)
carePlan.instantiatesUri;
 // CarePlan.intent (token)
carePlan.intent;
 // CarePlan.partOf (reference)
carePlan.partOf;
 // CarePlan.activity.detail.performer (token)
carePlan.activity?.map((e) => e.detail).expand((e) => e?.performer ?? <Reference>[]);
 // CarePlan.replaces (reference)
carePlan.replaces;
 // CarePlan.status (reference)
carePlan.status;
 // CarePlan.subject (token)
carePlan.subject;
  final careTeam = CareTeam.empty();
 // CareTeam.period (reference)
careTeam.period;
 // CareTeam.identifier (token)
careTeam.identifier;
 // CareTeam.subject.where(resolve() is Patient) (token)
careTeam.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // CareTeam.category (reference)
careTeam.category;
 // CareTeam.encounter (token)
careTeam.encounter;
 // CareTeam.participant.member (token)
careTeam.participant?.map((e) => e.member);
 // CareTeam.status (reference)
careTeam.status;
 // CareTeam.subject (reference)
careTeam.subject;
  final catalogEntry = CatalogEntry.empty();
  final chargeItem = ChargeItem.empty();
 // ChargeItem.account (reference)
chargeItem.account;
 // ChargeItem.code (token)
chargeItem.code;
 // ChargeItem.context (reference)
chargeItem.context;
 // ChargeItem.enteredDate (token)
chargeItem.enteredDate;
 // ChargeItem.enterer (reference)
chargeItem.enterer;
 // ChargeItem.factorOverride (reference)
chargeItem.factorOverride;
 // ChargeItem.identifier (token)
chargeItem.identifier;
 // ChargeItem.occurrence (string)
chargeItem.occurrenceX;
 // ChargeItem.subject.where(resolve() is Patient) (reference)
chargeItem.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ChargeItem.performer.actor (string)
chargeItem.performer?.map((e) => e.actor);
 // ChargeItem.performer.function (token)
chargeItem.performer?.map((e) => e.function_);
 // ChargeItem.performingOrganization (token)
chargeItem.performingOrganization;
 // ChargeItem.priceOverride (date)
chargeItem.priceOverride;
 // ChargeItem.quantity (reference)
chargeItem.quantity;
 // ChargeItem.requestingOrganization (string)
chargeItem.requestingOrganization;
 // ChargeItem.service (token)
chargeItem.service;
 // ChargeItem.subject (token)
chargeItem.subject;
  final chargeItemDefinition = ChargeItemDefinition.empty();
 // ChargeItemDefinition.useContext.code (token)
chargeItemDefinition.useContext?.map((e) => e.code);
 // ChargeItemDefinition.date (reference)
chargeItemDefinition.date;
 // ChargeItemDefinition.description (reference)
chargeItemDefinition.description;
 // ChargeItemDefinition.effectivePeriod (uri)
chargeItemDefinition.effectivePeriod;
 // ChargeItemDefinition.identifier (token)
chargeItemDefinition.identifier;
 // ChargeItemDefinition.jurisdiction (reference)
chargeItemDefinition.jurisdiction;
 // ChargeItemDefinition.publisher (token)
chargeItemDefinition.publisher;
 // ChargeItemDefinition.status (token)
chargeItemDefinition.status;
 // ChargeItemDefinition.title (reference)
chargeItemDefinition.title;
 // ChargeItemDefinition.url (token)
chargeItemDefinition.url;
 // ChargeItemDefinition.version (date)
chargeItemDefinition.version;
 // ChargeItemDefinition.useContext (token)
chargeItemDefinition.useContext;
 // ChargeItemDefinition.useContext (reference)
chargeItemDefinition.useContext;
  final citation = Citation.empty();
 // Citation.useContext.code (reference)
citation.useContext?.map((e) => e.code);
 // Citation.date (token)
citation.date;
 // Citation.description (token)
citation.description;
 // Citation.effectivePeriod (token)
citation.effectivePeriod;
 // Citation.identifier (reference)
citation.identifier;
 // Citation.jurisdiction (reference)
citation.jurisdiction;
 // Citation.name (token)
citation.name;
 // Citation.publisher (reference)
citation.publisher;
 // Citation.status (date)
citation.status;
 // Citation.title (token)
citation.title;
 // Citation.url (token)
citation.url;
 // Citation.version (token)
citation.version;
 // Citation.useContext (token)
citation.useContext;
 // Citation.useContext (token)
citation.useContext;
  final claim = Claim.empty();
 // Claim.careTeam.provider (token)
claim.careTeam?.map((e) => e.provider);
 // Claim.created (token)
claim.created;
 // Claim.item.detail.udi (token)
claim.item?.expand((e) => e.detail ?? <ClaimDetail>[]).expand((e) => e.udi ?? <Reference>[]);
 // Claim.item.encounter (token)
claim.item?.expand((e) => e.encounter ?? <Reference>[]);
 // Claim.enterer (token)
claim.enterer;
 // Claim.facility (token)
claim.facility;
 // Claim.identifier (token)
claim.identifier;
 // Claim.insurer (token)
claim.insurer;
 // Claim.item.udi (token)
claim.item?.expand((e) => e.udi ?? <Reference>[]);
 // Claim.patient (token)
claim.patient;
 // Claim.payee.party (date)
claim.payee?.party;
 // Claim.priority (date)
claim.priority;
 // Claim.procedure.udi (date)
claim.procedure?.expand((e) => e.udi ?? <Reference>[]);
 // Claim.provider (date)
claim.provider;
 // Claim.status (date)
claim.status;
 // Claim.item.detail.subDetail.udi (date)
claim.item?.expand((e) => e.detail ?? <ClaimDetail>[]).expand((e) => e.subDetail ?? <ClaimSubDetail>[]).expand((e) => e.udi ?? <Reference>[]);
 // Claim.use (date)
claim.use;
  final claimResponse = ClaimResponse.empty();
 // ClaimResponse.created (date)
claimResponse.created;
 // ClaimResponse.disposition (date)
claimResponse.disposition;
 // ClaimResponse.identifier (date)
claimResponse.identifier;
 // ClaimResponse.insurer (date)
claimResponse.insurer;
 // ClaimResponse.outcome (date)
claimResponse.outcome;
 // ClaimResponse.patient (date)
claimResponse.patient;
 // ClaimResponse.payment.date (date)
claimResponse.payment?.date;
 // ClaimResponse.request (string)
claimResponse.request;
 // ClaimResponse.requestor (string)
claimResponse.requestor;
 // ClaimResponse.status (string)
claimResponse.status;
 // ClaimResponse.use (string)
claimResponse.use;
  final clinicalImpression = ClinicalImpression.empty();
 // ClinicalImpression.date (string)
clinicalImpression.date;
 // ClinicalImpression.subject.where(resolve() is Patient) (string)
clinicalImpression.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ClinicalImpression.assessor (string)
clinicalImpression.assessor;
 // ClinicalImpression.encounter (string)
clinicalImpression.encounter;
 // ClinicalImpression.finding.itemCodeableConcept (string)
clinicalImpression.finding?.map((e) => e.itemCodeableConcept);
 // ClinicalImpression.finding.itemReference (string)
clinicalImpression.finding?.map((e) => e.itemReference);
 // ClinicalImpression.identifier (string)
clinicalImpression.identifier;
 // ClinicalImpression.investigation.item (string)
clinicalImpression.investigation?.expand((e) => e.item ?? <Reference>[]);
 // ClinicalImpression.previous (string)
clinicalImpression.previous;
 // ClinicalImpression.problem (string)
clinicalImpression.problem;
 // ClinicalImpression.status (token)
clinicalImpression.status;
 // ClinicalImpression.subject (token)
clinicalImpression.subject;
 // ClinicalImpression.supportingInfo (reference)
clinicalImpression.supportingInfo;
  final clinicalUseDefinition = ClinicalUseDefinition.empty();
 // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure (token)
clinicalUseDefinition.contraindication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure (token)
clinicalUseDefinition.contraindication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect (token)
clinicalUseDefinition.undesirableEffect?.symptomConditionEffect;
 // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect (token)
clinicalUseDefinition.undesirableEffect?.symptomConditionEffect;
 // ClinicalUseDefinition.identifier (token)
clinicalUseDefinition.identifier;
 // ClinicalUseDefinition.indication.diseaseSymptomProcedure (token)
clinicalUseDefinition.indication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.indication.diseaseSymptomProcedure (token)
clinicalUseDefinition.indication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.interaction.type (token)
clinicalUseDefinition.interaction?.type;
 // ClinicalUseDefinition.subject.where(resolve() is MedicinalProductDefinition) (token)
clinicalUseDefinition.subject?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'MedicinalProductDefinition';
  });
 // ClinicalUseDefinition.subject (token)
clinicalUseDefinition.subject;
 // ClinicalUseDefinition.type (token)
clinicalUseDefinition.type;
  final codeSystem = CodeSystem.empty();
 // CodeSystem.useContext.code (token)
codeSystem.useContext?.map((e) => e.code);
 // CodeSystem.date (token)
codeSystem.date;
 // CodeSystem.description (token)
codeSystem.description;
 // CodeSystem.jurisdiction (string)
codeSystem.jurisdiction;
 // CodeSystem.name (string)
codeSystem.name;
 // CodeSystem.publisher (string)
codeSystem.publisher;
 // CodeSystem.status (string)
codeSystem.status;
 // CodeSystem.title (string)
codeSystem.title;
 // CodeSystem.url (string)
codeSystem.url;
 // CodeSystem.version (string)
codeSystem.version;
 // CodeSystem.useContext (string)
codeSystem.useContext;
 // CodeSystem.useContext (string)
codeSystem.useContext;
 // CodeSystem.concept.code (string)
codeSystem.concept?.map((e) => e.code);
 // CodeSystem.content (string)
codeSystem.content;
 // CodeSystem.identifier (string)
codeSystem.identifier;
 // CodeSystem.concept.designation.language (string)
codeSystem.concept?.expand((e) => e.designation ?? <CodeSystemDesignation>[]).map((e) => e.language);
 // CodeSystem.supplements (string)
codeSystem.supplements;
 // CodeSystem.url (string)
codeSystem.url;
  final communication = Communication.empty();
 // Communication.basedOn (string)
communication.basedOn;
 // Communication.category (string)
communication.category;
 // Communication.encounter (string)
communication.encounter;
 // Communication.identifier (string)
communication.identifier;
 // Communication.instantiatesCanonical (string)
communication.instantiatesCanonical;
 // Communication.instantiatesUri (string)
communication.instantiatesUri;
 // Communication.medium (string)
communication.medium;
 // Communication.partOf (string)
communication.partOf;
 // Communication.subject.where(resolve() is Patient) (string)
communication.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Communication.received (string)
communication.received;
 // Communication.recipient (string)
communication.recipient;
 // Communication.sender (string)
communication.sender;
 // Communication.sent (string)
communication.sent;
 // Communication.status (token)
communication.status;
 // Communication.subject (reference)
communication.subject;
  final communicationRequest = CommunicationRequest.empty();
 // CommunicationRequest.authoredOn (token)
communicationRequest.authoredOn;
 // CommunicationRequest.basedOn (string)
communicationRequest.basedOn;
 // CommunicationRequest.category (token)
communicationRequest.category;
 // CommunicationRequest.encounter (token)
communicationRequest.encounter;
 // CommunicationRequest.groupIdentifier (token)
communicationRequest.groupIdentifier;
 // CommunicationRequest.identifier (token)
communicationRequest.identifier;
 // CommunicationRequest.medium (token)
communicationRequest.medium;
 // CommunicationRequest.subject.where(resolve() is Patient) (token)
communicationRequest.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // CommunicationRequest.priority (token)
communicationRequest.priority;
 // CommunicationRequest.recipient (token)
communicationRequest.recipient;
 // CommunicationRequest.replaces (token)
communicationRequest.replaces;
 // CommunicationRequest.requester (token)
communicationRequest.requester;
 // CommunicationRequest.sender (token)
communicationRequest.sender;
 // CommunicationRequest.status (token)
communicationRequest.status;
 // CommunicationRequest.subject (token)
communicationRequest.subject;
  final compartmentDefinition = CompartmentDefinition.empty();
 // CompartmentDefinition.useContext.code (token)
compartmentDefinition.useContext?.map((e) => e.code);
 // CompartmentDefinition.date (reference)
compartmentDefinition.date;
 // CompartmentDefinition.description (string)
compartmentDefinition.description;
 // CompartmentDefinition.name (string)
compartmentDefinition.name;
 // CompartmentDefinition.publisher (string)
compartmentDefinition.publisher;
 // CompartmentDefinition.status (string)
compartmentDefinition.status;
 // CompartmentDefinition.url (string)
compartmentDefinition.url;
 // CompartmentDefinition.version (string)
compartmentDefinition.version;
 // CompartmentDefinition.useContext (string)
compartmentDefinition.useContext;
 // CompartmentDefinition.useContext (string)
compartmentDefinition.useContext;
 // CompartmentDefinition.code (string)
compartmentDefinition.code;
 // CompartmentDefinition.resource.code (string)
compartmentDefinition.resource?.map((e) => e.code);
  final composition = Composition.empty();
 // Composition.date (uri)
composition.date;
 // Composition.identifier (uri)
composition.identifier;
 // Composition.subject.where(resolve() is Patient) (uri)
composition.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Composition.type (uri)
composition.type;
 // Composition.attester.party (uri)
composition.attester?.map((e) => e.party);
 // Composition.author (uri)
composition.author;
 // Composition.category (uri)
composition.category;
 // Composition.confidentiality (uri)
composition.confidentiality;
 // Composition.event.code (uri)
composition.event?.expand((e) => e.code ?? <CodeableConcept>[]);
 // Composition.encounter (uri)
composition.encounter;
 // Composition.section.entry (uri)
composition.section?.expand((e) => e.entry ?? <Reference>[]);
 // Composition.event.period (uri)
composition.event?.map((e) => e.period);
 // Composition.section.code (uri)
composition.section?.map((e) => e.code);
 // Composition.status (token)
composition.status;
 // Composition.subject (token)
composition.subject;
 // Composition.title (token)
composition.title;
  final conceptMap = ConceptMap.empty();
 // ConceptMap.useContext.code (token)
conceptMap.useContext?.map((e) => e.code);
 // ConceptMap.date (token)
conceptMap.date;
 // ConceptMap.description (token)
conceptMap.description;
 // ConceptMap.jurisdiction (token)
conceptMap.jurisdiction;
 // ConceptMap.name (token)
conceptMap.name;
 // ConceptMap.publisher (token)
conceptMap.publisher;
 // ConceptMap.status (token)
conceptMap.status;
 // ConceptMap.title (token)
conceptMap.title;
 // ConceptMap.url (token)
conceptMap.url;
 // ConceptMap.version (token)
conceptMap.version;
 // ConceptMap.useContext (composite)
conceptMap.useContext;
 // ConceptMap.useContext (composite)
conceptMap.useContext;
 // ConceptMap.identifier (composite)
conceptMap.identifier;
 // ConceptMap.group.element.target.dependsOn.property (composite)
conceptMap.group?.expand((e) => e.element ?? <ConceptMapElement>[]).expand((e) => e.target ?? <ConceptMapTarget>[]).expand((e) => e.dependsOn ?? <ConceptMapDependsOn>[]).map((e) => e.property);
 // ConceptMap.group.unmapped.url (composite)
conceptMap.group?.map((e) => e.unmapped).map((e) => e?.url);
 // ConceptMap.group.element.target.product.property (composite)
conceptMap.group?.expand((e) => e.element ?? <ConceptMapElement>[]).expand((e) => e.target ?? <ConceptMapTarget>[]).expand((e) => e.product ?? <ConceptMapDependsOn>[]).map((e) => e.property);
 // ConceptMap.group.element.code (composite)
conceptMap.group?.expand((e) => e.element ?? <ConceptMapElement>[]).map((e) => e.code);
 // ConceptMap.group.source (composite)
conceptMap.group?.map((e) => e.source);
 // ConceptMap.group.element.target.code (composite)
conceptMap.group?.expand((e) => e.element ?? <ConceptMapElement>[]).expand((e) => e.target ?? <ConceptMapTarget>[]).map((e) => e.code);
 // ConceptMap.group.target (composite)
conceptMap.group?.map((e) => e.target);
  final condition = Condition.empty();
 // Condition.code (composite)
condition.code;
 // Condition.identifier (composite)
condition.identifier;
 // Condition.subject.where(resolve() is Patient) (composite)
condition.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Condition.abatement.as(Age) (composite)
condition.abatementAge;
 // Condition.abatement.as(Range) (composite)
condition.abatementRange;
 // Condition.abatement.as(dateTime) (composite)
condition.abatementDateTime;
 // Condition.abatement.as(Period) (composite)
condition.abatementPeriod;
 // Condition.abatement.as(string) (composite)
condition.abatementString;
 // Condition.asserter (composite)
condition.asserter;
 // Condition.bodySite (composite)
condition.bodySite;
 // Condition.category (composite)
condition.category;
 // Condition.clinicalStatus (composite)
condition.clinicalStatus;
 // Condition.encounter (composite)
condition.encounter;
 // Condition.evidence.code (composite)
condition.evidence?.expand((e) => e.code ?? <CodeableConcept>[]);
 // Condition.evidence.detail (composite)
condition.evidence?.expand((e) => e.detail ?? <Reference>[]);
 // Condition.onset.as(Age) (composite)
condition.onsetAge;
 // Condition.onset.as(Range) (composite)
condition.onsetRange;
 // Condition.onset.as(dateTime) (composite)
condition.onsetDateTime;
 // Condition.onset.as(Period) (token)
condition.onsetPeriod;
 // Condition.onset.as(string) (date)
condition.onsetString;
 // Condition.recordedDate (reference)
condition.recordedDate;
 // Condition.severity (reference)
condition.severity;
 // Condition.stage.summary (reference)
condition.stage?.map((e) => e.summary);
 // Condition.subject (token)
condition.subject;
 // Condition.verificationStatus (reference)
condition.verificationStatus;
  final consent = Consent.empty();
 // Consent.dateTime (reference)
consent.dateTime;
 // Consent.identifier (reference)
consent.identifier;
 // Consent.patient (reference)
consent.patient;
 // Consent.provision.action (uri)
consent.provision?.action;
 // Consent.provision.actor.reference (token)
consent.provision?.actor?.map((e) => e.reference);
 // Consent.category (reference)
consent.category;
 // Consent.performer (reference)
consent.performer;
 // Consent.provision.data.reference (reference)
consent.provision?.data?.map((e) => e.reference);
 // Consent.organization (token)
consent.organization;
 // Consent.provision.period (reference)
consent.provision?.period;
 // Consent.provision.purpose (token)
consent.provision?.purpose;
 // Consent.scope (reference)
consent.scope;
 // Consent.provision.securityLabel (reference)
consent.provision?.securityLabel;
 // Consent.source (token)
consent.sourceX;
 // Consent.status (reference)
consent.status;
  final contract = Contract.empty();
 // Contract.authority (reference)
contract.authority;
 // Contract.domain (token)
contract.domain;
 // Contract.identifier (reference)
contract.identifier;
 // Contract.instantiatesUri (date)
contract.instantiatesUri;
 // Contract.issued (reference)
contract.issued;
 // Contract.subject.where(resolve() is Patient) (number)
contract.subject?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Contract.signer.party (token)
contract.signer?.map((e) => e.party);
 // Contract.status (date)
contract.status;
 // Contract.subject (reference)
contract.subject;
 // Contract.url (reference)
contract.url;
  final coverage = Coverage.empty();
 // Coverage.beneficiary (token)
coverage.beneficiary;
 // Coverage.class.type (reference)
coverage.class_?.map((e) => e.type);
 // Coverage.class.value (quantity)
coverage.class_?.map((e) => e.value);
 // Coverage.dependent (quantity)
coverage.dependent;
 // Coverage.identifier (reference)
coverage.identifier;
 // Coverage.beneficiary (reference)
coverage.beneficiary;
 // Coverage.payor (reference)
coverage.payor;
 // Coverage.policyHolder (token)
coverage.policyHolder;
 // Coverage.status (date)
coverage.status;
 // Coverage.subscriber (string)
coverage.subscriber;
 // Coverage.type (date)
coverage.type;
  final coverageEligibilityRequest = CoverageEligibilityRequest.empty();
 // CoverageEligibilityRequest.created (token)
coverageEligibilityRequest.created;
 // CoverageEligibilityRequest.enterer (token)
coverageEligibilityRequest.enterer;
 // CoverageEligibilityRequest.facility (string)
coverageEligibilityRequest.facility;
 // CoverageEligibilityRequest.identifier (token)
coverageEligibilityRequest.identifier;
 // CoverageEligibilityRequest.patient (string)
coverageEligibilityRequest.patient;
 // CoverageEligibilityRequest.provider (uri)
coverageEligibilityRequest.provider;
 // CoverageEligibilityRequest.status (token)
coverageEligibilityRequest.status;
  final coverageEligibilityResponse = CoverageEligibilityResponse.empty();
 // CoverageEligibilityResponse.created (composite)
coverageEligibilityResponse.created;
 // CoverageEligibilityResponse.disposition (composite)
coverageEligibilityResponse.disposition;
 // CoverageEligibilityResponse.identifier (token)
coverageEligibilityResponse.identifier;
 // CoverageEligibilityResponse.insurer (date)
coverageEligibilityResponse.insurer;
 // CoverageEligibilityResponse.outcome (string)
coverageEligibilityResponse.outcome;
 // CoverageEligibilityResponse.patient (date)
coverageEligibilityResponse.patient;
 // CoverageEligibilityResponse.request (token)
coverageEligibilityResponse.request;
 // CoverageEligibilityResponse.requestor (token)
coverageEligibilityResponse.requestor;
 // CoverageEligibilityResponse.status (string)
coverageEligibilityResponse.status;
  final detectedIssue = DetectedIssue.empty();
 // DetectedIssue.identifier (string)
detectedIssue.identifier;
 // DetectedIssue.patient (token)
detectedIssue.patient;
 // DetectedIssue.author (string)
detectedIssue.author;
 // DetectedIssue.code (uri)
detectedIssue.code;
 // DetectedIssue.identified (token)
detectedIssue.identifiedX;
 // DetectedIssue.implicated (composite)
detectedIssue.implicated;
  final device = Device.empty();
 // Device.deviceName.name (composite)
device.deviceName?.map((e) => e.name);
 // Device.type.coding.display (reference)
device.type?.coding?.map((e) => e.display);
 // Device.type.text (date)
device.type?.text;
 // Device.identifier (reference)
device.identifier;
 // Device.location (reference)
device.location;
 // Device.manufacturer (reference)
device.manufacturer;
 // Device.modelNumber (reference)
device.modelNumber;
 // Device.owner (token)
device.owner;
 // Device.patient (reference)
device.patient;
 // Device.status (reference)
device.status;
 // Device.type (reference)
device.type;
 // Device.udiCarrier.carrierHRF (reference)
device.udiCarrier?.map((e) => e.carrierHRF);
 // Device.udiCarrier.deviceIdentifier (token)
device.udiCarrier?.map((e) => e.deviceIdentifier);
 // Device.url (reference)
device.url;
  final deviceDefinition = DeviceDefinition.empty();
 // DeviceDefinition.identifier (reference)
deviceDefinition.identifier;
 // DeviceDefinition.parentDevice (token)
deviceDefinition.parentDevice;
 // DeviceDefinition.type (reference)
deviceDefinition.type;
  final deviceMetric = DeviceMetric.empty();
 // DeviceMetric.category (token)
deviceMetric.category;
 // DeviceMetric.identifier (date)
deviceMetric.identifier;
 // DeviceMetric.parent (string)
deviceMetric.parent;
 // DeviceMetric.source (token)
deviceMetric.source;
 // DeviceMetric.type (reference)
deviceMetric.type;
  final deviceRequest = DeviceRequest.empty();
 // DeviceRequest.identifier (token)
deviceRequest.identifier;
 // DeviceRequest.subject.where(resolve() is Patient) (reference)
deviceRequest.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DeviceRequest.encounter (date)
deviceRequest.encounter;
 // DeviceRequest.authoredOn (reference)
deviceRequest.authoredOn;
 // DeviceRequest.basedOn (reference)
deviceRequest.basedOn;
 // DeviceRequest.groupIdentifier (token)
deviceRequest.groupIdentifier;
 // DeviceRequest.instantiatesCanonical (token)
deviceRequest.instantiatesCanonical;
 // DeviceRequest.instantiatesUri (reference)
deviceRequest.instantiatesUri;
 // DeviceRequest.insurance (reference)
deviceRequest.insurance;
 // DeviceRequest.intent (token)
deviceRequest.intent;
 // DeviceRequest.performer (reference)
deviceRequest.performer;
 // DeviceRequest.priorRequest (token)
deviceRequest.priorRequest;
 // DeviceRequest.requester (reference)
deviceRequest.requester;
 // DeviceRequest.status (reference)
deviceRequest.status;
 // DeviceRequest.subject (reference)
deviceRequest.subject;
  final deviceUseStatement = DeviceUseStatement.empty();
 // DeviceUseStatement.subject.where(resolve() is Patient) (token)
deviceUseStatement.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DeviceUseStatement.device (reference)
deviceUseStatement.device;
 // DeviceUseStatement.identifier (reference)
deviceUseStatement.identifier;
 // DeviceUseStatement.subject (token)
deviceUseStatement.subject;
  final diagnosticReport = DiagnosticReport.empty();
 // DiagnosticReport.code (reference)
diagnosticReport.code;
 // DiagnosticReport.effective (token)
diagnosticReport.effectiveX;
 // DiagnosticReport.identifier (reference)
diagnosticReport.identifier;
 // DiagnosticReport.subject.where(resolve() is Patient) (token)
diagnosticReport.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DiagnosticReport.encounter (token)
diagnosticReport.encounter;
 // DiagnosticReport.basedOn (reference)
diagnosticReport.basedOn;
 // DiagnosticReport.category (token)
diagnosticReport.category;
 // DiagnosticReport.conclusionCode (reference)
diagnosticReport.conclusionCode;
 // DiagnosticReport.issued (reference)
diagnosticReport.issued;
 // DiagnosticReport.media.link (token)
diagnosticReport.media?.map((e) => e.link);
 // DiagnosticReport.performer (token)
diagnosticReport.performer;
 // DiagnosticReport.result (token)
diagnosticReport.result;
 // DiagnosticReport.resultsInterpreter (token)
diagnosticReport.resultsInterpreter;
 // DiagnosticReport.specimen (token)
diagnosticReport.specimen;
 // DiagnosticReport.status (token)
diagnosticReport.status;
 // DiagnosticReport.subject (token)
diagnosticReport.subject;
  final documentManifest = DocumentManifest.empty();
 // DocumentManifest.masterIdentifier (token)
documentManifest.masterIdentifier;
 // DocumentManifest.identifier (token)
documentManifest.identifier;
 // DocumentManifest.subject.where(resolve() is Patient) (token)
documentManifest.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DocumentManifest.type (reference)
documentManifest.type;
 // DocumentManifest.author (uri)
documentManifest.author;
 // DocumentManifest.created (reference)
documentManifest.created;
 // DocumentManifest.description (token)
documentManifest.description;
 // DocumentManifest.content (reference)
documentManifest.content;
 // DocumentManifest.recipient (token)
documentManifest.recipient;
 // DocumentManifest.related.identifier (reference)
documentManifest.related?.map((e) => e.identifier);
 // DocumentManifest.related.ref (uri)
documentManifest.related?.map((e) => e.ref);
 // DocumentManifest.source (token)
documentManifest.source;
 // DocumentManifest.status (reference)
documentManifest.status;
 // DocumentManifest.subject (reference)
documentManifest.subject;
  final documentReference = DocumentReference.empty();
 // DocumentReference.masterIdentifier (date)
documentReference.masterIdentifier;
 // DocumentReference.identifier (reference)
documentReference.identifier;
 // DocumentReference.subject.where(resolve() is Patient) (reference)
documentReference.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DocumentReference.type (date)
documentReference.type;
 // DocumentReference.context.encounter.where(resolve() is Encounter) (token)
documentReference.context?.encounter?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Encounter';
  });
 // DocumentReference.authenticator (reference)
documentReference.authenticator;
 // DocumentReference.author (date)
documentReference.author;
 // DocumentReference.category (reference)
documentReference.category;
 // DocumentReference.content.attachment.contentType (token)
documentReference.content.map((e) => e.attachment).map((e) => e.contentType);
 // DocumentReference.custodian (reference)
documentReference.custodian;
 // DocumentReference.date (token)
documentReference.date;
 // DocumentReference.description (token)
documentReference.description;
 // DocumentReference.context.event (token)
documentReference.context?.event;
 // DocumentReference.context.facilityType (reference)
documentReference.context?.facilityType;
 // DocumentReference.content.format (token)
documentReference.content.map((e) => e.format);
 // DocumentReference.content.attachment.language (reference)
documentReference.content.map((e) => e.attachment).map((e) => e.language);
 // DocumentReference.content.attachment.url (reference)
documentReference.content.map((e) => e.attachment).map((e) => e.url);
 // DocumentReference.context.period (reference)
documentReference.context?.period;
 // DocumentReference.context.related (reference)
documentReference.context?.related;
 // DocumentReference.relatesTo.target (token)
documentReference.relatesTo?.map((e) => e.target);
 // DocumentReference.relatesTo.code (reference)
documentReference.relatesTo?.map((e) => e.code);
 // DocumentReference.securityLabel (token)
documentReference.securityLabel;
 // DocumentReference.context.practiceSetting (token)
documentReference.context?.practiceSetting;
 // DocumentReference.status (reference)
documentReference.status;
 // DocumentReference.subject (reference)
documentReference.subject;
 // DocumentReference.relatesTo (token)
documentReference.relatesTo;
  final encounter = Encounter.empty();
 // Encounter.period (token)
encounter.period;
 // Encounter.identifier (token)
encounter.identifier;
 // Encounter.subject.where(resolve() is Patient) (reference)
encounter.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Encounter.type (reference)
encounter.type;
 // Encounter.account (reference)
encounter.account;
 // Encounter.appointment (reference)
encounter.appointment;
 // Encounter.basedOn (reference)
encounter.basedOn;
 // Encounter.class (reference)
encounter.class_;
 // Encounter.diagnosis.condition (reference)
encounter.diagnosis?.map((e) => e.condition);
 // Encounter.episodeOfCare (reference)
encounter.episodeOfCare;
 // Encounter.length (reference)
encounter.length;
 // Encounter.location.location (reference)
encounter.location?.map((e) => e.location);
 // Encounter.location.period (reference)
encounter.location?.map((e) => e.period);
 // Encounter.partOf (reference)
encounter.partOf;
 // Encounter.participant.individual (reference)
encounter.participant?.map((e) => e.individual);
 // Encounter.participant.type (date)
encounter.participant?.expand((e) => e.type ?? <CodeableConcept>[]);
 // Encounter.participant.individual.where(resolve() is Practitioner) (token)
encounter.participant?.map((e) => e.individual).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // Encounter.reasonCode (token)
encounter.reasonCode;
 // Encounter.reasonReference (reference)
encounter.reasonReference;
 // Encounter.serviceProvider (string)
encounter.serviceProvider;
 // Encounter.hospitalization.specialArrangement (uri)
encounter.hospitalization?.specialArrangement;
 // Encounter.status (reference)
encounter.status;
 // Encounter.subject (uri)
encounter.subject;
  final enrollmentRequest = EnrollmentRequest.empty();
 // EnrollmentRequest.identifier (token)
enrollmentRequest.identifier;
 // EnrollmentRequest.candidate (uri)
enrollmentRequest.candidate;
 // EnrollmentRequest.status (token)
enrollmentRequest.status;
 // EnrollmentRequest.candidate (uri)
enrollmentRequest.candidate;
  final enrollmentResponse = EnrollmentResponse.empty();
 // EnrollmentResponse.identifier (quantity)
enrollmentResponse.identifier;
 // EnrollmentResponse.request (quantity)
enrollmentResponse.request;
 // EnrollmentResponse.status (date)
enrollmentResponse.status;
  final episodeOfCare = EpisodeOfCare.empty();
 // EpisodeOfCare.period (date)
episodeOfCare.period;
 // EpisodeOfCare.identifier (string)
episodeOfCare.identifier;
 // EpisodeOfCare.patient (reference)
episodeOfCare.patient;
 // EpisodeOfCare.type (token)
episodeOfCare.type;
 // EpisodeOfCare.careManager.where(resolve() is Practitioner) (token)
episodeOfCare.careManager?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // EpisodeOfCare.diagnosis.condition (token)
episodeOfCare.diagnosis?.map((e) => e.condition);
 // EpisodeOfCare.referralRequest (reference)
episodeOfCare.referralRequest;
 // EpisodeOfCare.managingOrganization (token)
episodeOfCare.managingOrganization;
 // EpisodeOfCare.status (reference)
episodeOfCare.status;
  final eventDefinition = EventDefinition.empty();
 // EventDefinition.relatedArtifact.where(type='composed-of').resource (quantity)
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // EventDefinition.useContext.code (quantity)
eventDefinition.useContext?.map((e) => e.code);
 // EventDefinition.date (date)
eventDefinition.date;
 // EventDefinition.relatedArtifact.where(type='depends-on').resource (date)
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // EventDefinition.relatedArtifact.where(type='derived-from').resource (string)
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // EventDefinition.description (date)
eventDefinition.description;
 // EventDefinition.effectivePeriod (token)
eventDefinition.effectivePeriod;
 // EventDefinition.identifier (token)
eventDefinition.identifier;
 // EventDefinition.jurisdiction (reference)
eventDefinition.jurisdiction;
 // EventDefinition.name (token)
eventDefinition.name;
 // EventDefinition.relatedArtifact.where(type='predecessor').resource (token)
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // EventDefinition.publisher (reference)
eventDefinition.publisher;
 // EventDefinition.status (token)
eventDefinition.status;
 // EventDefinition.relatedArtifact.where(type='successor').resource (reference)
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // EventDefinition.title (reference)
eventDefinition.title;
 // EventDefinition.topic (reference)
eventDefinition.topic;
 // EventDefinition.url (date)
eventDefinition.url;
 // EventDefinition.version (token)
eventDefinition.version;
 // EventDefinition.useContext (token)
eventDefinition.useContext;
 // EventDefinition.useContext (token)
eventDefinition.useContext;
  final evidence = Evidence.empty();
 // Evidence.useContext.code (reference)
evidence.useContext?.map((e) => e.code);
 // Evidence.date (token)
evidence.date;
 // Evidence.description (reference)
evidence.description;
 // Evidence.identifier (reference)
evidence.identifier;
 // Evidence.publisher (token)
evidence.publisher;
 // Evidence.status (uri)
evidence.status;
 // Evidence.title (date)
evidence.title;
 // Evidence.url (reference)
evidence.url;
 // Evidence.version (reference)
evidence.version;
 // Evidence.useContext (token)
evidence.useContext;
 // Evidence.useContext (reference)
evidence.useContext;
  final evidenceReport = EvidenceReport.empty();
 // EvidenceReport.useContext.code (uri)
evidenceReport.useContext?.map((e) => e.code);
 // EvidenceReport.identifier (reference)
evidenceReport.identifier;
 // EvidenceReport.publisher (token)
evidenceReport.publisher;
 // EvidenceReport.status (string)
evidenceReport.status;
 // EvidenceReport.url (string)
evidenceReport.url;
 // EvidenceReport.useContext (token)
evidenceReport.useContext;
 // EvidenceReport.useContext (reference)
evidenceReport.useContext;
  final evidenceVariable = EvidenceVariable.empty();
 // EvidenceVariable.useContext.code (reference)
evidenceVariable.useContext?.map((e) => e.code);
 // EvidenceVariable.date (reference)
evidenceVariable.date;
 // EvidenceVariable.description (token)
evidenceVariable.description;
 // EvidenceVariable.identifier (reference)
evidenceVariable.identifier;
 // EvidenceVariable.name (token)
evidenceVariable.name;
 // EvidenceVariable.publisher (date)
evidenceVariable.publisher;
 // EvidenceVariable.status (reference)
evidenceVariable.status;
 // EvidenceVariable.title (reference)
evidenceVariable.title;
 // EvidenceVariable.url (token)
evidenceVariable.url;
 // EvidenceVariable.version (reference)
evidenceVariable.version;
 // EvidenceVariable.useContext (reference)
evidenceVariable.useContext;
 // EvidenceVariable.useContext (token)
evidenceVariable.useContext;
  final exampleScenario = ExampleScenario.empty();
 // ExampleScenario.useContext.code (date)
exampleScenario.useContext?.map((e) => e.code);
 // ExampleScenario.date (string)
exampleScenario.date;
 // ExampleScenario.identifier (token)
exampleScenario.identifier;
 // ExampleScenario.jurisdiction (reference)
exampleScenario.jurisdiction;
 // ExampleScenario.name (token)
exampleScenario.name;
 // ExampleScenario.publisher (reference)
exampleScenario.publisher;
 // ExampleScenario.status (reference)
exampleScenario.status;
 // ExampleScenario.url (reference)
exampleScenario.url;
 // ExampleScenario.version (token)
exampleScenario.version;
 // ExampleScenario.useContext (reference)
exampleScenario.useContext;
 // ExampleScenario.useContext (token)
exampleScenario.useContext;
  final explanationOfBenefit = ExplanationOfBenefit.empty();
 // ExplanationOfBenefit.careTeam.provider (date)
explanationOfBenefit.careTeam?.map((e) => e.provider);
 // ExplanationOfBenefit.claim (reference)
explanationOfBenefit.claim;
 // ExplanationOfBenefit.insurance.coverage (string)
explanationOfBenefit.insurance.map((e) => e.coverage);
 // ExplanationOfBenefit.created (string)
explanationOfBenefit.created;
 // ExplanationOfBenefit.item.detail.udi (string)
explanationOfBenefit.item?.expand((e) => e.detail ?? <ExplanationOfBenefitDetail>[]).expand((e) => e.udi ?? <Reference>[]);
 // ExplanationOfBenefit.disposition (token)
explanationOfBenefit.disposition;
 // ExplanationOfBenefit.item.encounter (reference)
explanationOfBenefit.item?.expand((e) => e.encounter ?? <Reference>[]);
 // ExplanationOfBenefit.enterer (string)
explanationOfBenefit.enterer;
 // ExplanationOfBenefit.facility (string)
explanationOfBenefit.facility;
 // ExplanationOfBenefit.identifier (reference)
explanationOfBenefit.identifier;
 // ExplanationOfBenefit.item.udi (reference)
explanationOfBenefit.item?.expand((e) => e.udi ?? <Reference>[]);
 // ExplanationOfBenefit.patient (token)
explanationOfBenefit.patient;
 // ExplanationOfBenefit.payee.party (token)
explanationOfBenefit.payee?.party;
 // ExplanationOfBenefit.procedure.udi (string)
explanationOfBenefit.procedure?.expand((e) => e.udi ?? <Reference>[]);
 // ExplanationOfBenefit.provider (string)
explanationOfBenefit.provider;
 // ExplanationOfBenefit.status (uri)
explanationOfBenefit.status;
 // ExplanationOfBenefit.item.detail.subDetail.udi (token)
explanationOfBenefit.item?.expand((e) => e.detail ?? <ExplanationOfBenefitDetail>[]).expand((e) => e.subDetail ?? <ExplanationOfBenefitSubDetail>[]).expand((e) => e.udi ?? <Reference>[]);
  final familyMemberHistory = FamilyMemberHistory.empty();
 // FamilyMemberHistory.condition.code (reference)
familyMemberHistory.condition?.map((e) => e.code);
 // FamilyMemberHistory.date (token)
familyMemberHistory.date;
 // FamilyMemberHistory.identifier (token)
familyMemberHistory.identifier;
 // FamilyMemberHistory.patient (token)
familyMemberHistory.patient;
 // FamilyMemberHistory.instantiatesCanonical (reference)
familyMemberHistory.instantiatesCanonical;
 // FamilyMemberHistory.instantiatesUri (reference)
familyMemberHistory.instantiatesUri;
 // FamilyMemberHistory.relationship (token)
familyMemberHistory.relationship;
 // FamilyMemberHistory.sex (date)
familyMemberHistory.sex;
 // FamilyMemberHistory.status (reference)
familyMemberHistory.status;
  final fhirEndpoint = FhirEndpoint.empty();
 // Endpoint.connectionType (token)
fhirEndpoint.connectionType;
 // Endpoint.identifier (reference)
fhirEndpoint.identifier;
 // Endpoint.name (uri)
fhirEndpoint.name;
 // Endpoint.managingOrganization (reference)
fhirEndpoint.managingOrganization;
 // Endpoint.payloadType (token)
fhirEndpoint.payloadType;
 // Endpoint.status (reference)
fhirEndpoint.status;
  final fhirGroup = FhirGroup.empty();
 // Group.actual (reference)
fhirGroup.actual;
 // Group.characteristic.code (reference)
fhirGroup.characteristic?.map((e) => e.code);
 // Group.code (token)
fhirGroup.code;
 // Group.characteristic.exclude (reference)
fhirGroup.characteristic?.map((e) => e.exclude);
 // Group.identifier (reference)
fhirGroup.identifier;
 // Group.managingEntity (token)
fhirGroup.managingEntity;
 // Group.member.entity (reference)
fhirGroup.member?.map((e) => e.entity);
 // Group.type (reference)
fhirGroup.type;
 // Group.characteristic (token)
fhirGroup.characteristic;
  final fhirList = FhirList.empty();
 // List.code (token)
fhirList.code;
 // List.date (date)
fhirList.date;
 // List.identifier (reference)
fhirList.identifier;
 // List.subject.where(resolve() is Patient) (reference)
fhirList.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // List.encounter (reference)
fhirList.encounter;
 // List.emptyReason (reference)
fhirList.emptyReason;
 // List.entry.item (reference)
fhirList.entry?.map((e) => e.item);
 // List.note.text (token)
fhirList.note?.map((e) => e.text);
 // List.source (reference)
fhirList.source;
 // List.status (reference)
fhirList.status;
 // List.subject (date)
fhirList.subject;
 // List.title (string)
fhirList.title;
  final flag = Flag.empty();
 // Flag.period (reference)
flag.period;
 // Flag.subject.where(resolve() is Patient) (reference)
flag.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Flag.encounter (token)
flag.encounter;
 // Flag.author (reference)
flag.author;
 // Flag.identifier (uri)
flag.identifier;
 // Flag.subject (token)
flag.subject;
  final goal = Goal.empty();
 // Goal.identifier (reference)
goal.identifier;
 // Goal.subject.where(resolve() is Patient) (reference)
goal.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Goal.achievementStatus (reference)
goal.achievementStatus;
 // Goal.category (token)
goal.category;
 // Goal.lifecycleStatus (token)
goal.lifecycleStatus;
 // Goal.subject (reference)
goal.subject;
  final graphDefinition = GraphDefinition.empty();
 // GraphDefinition.useContext.code (date)
graphDefinition.useContext?.map((e) => e.code);
 // GraphDefinition.date (string)
graphDefinition.date;
 // GraphDefinition.description (token)
graphDefinition.description;
 // GraphDefinition.jurisdiction (token)
graphDefinition.jurisdiction;
 // GraphDefinition.name (token)
graphDefinition.name;
 // GraphDefinition.publisher (token)
graphDefinition.publisher;
 // GraphDefinition.status (uri)
graphDefinition.status;
 // GraphDefinition.url (date)
graphDefinition.url;
 // GraphDefinition.version (reference)
graphDefinition.version;
 // GraphDefinition.useContext (reference)
graphDefinition.useContext;
 // GraphDefinition.useContext (token)
graphDefinition.useContext;
 // GraphDefinition.start (token)
graphDefinition.start;
  final guidanceResponse = GuidanceResponse.empty();
 // GuidanceResponse.identifier (token)
guidanceResponse.identifier;
 // GuidanceResponse.subject.where(resolve() is Patient) (token)
guidanceResponse.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // GuidanceResponse.requestIdentifier (reference)
guidanceResponse.requestIdentifier;
 // GuidanceResponse.subject (composite)
guidanceResponse.subject;
  final healthcareService = HealthcareService.empty();
 // HealthcareService.active (reference)
healthcareService.active;
 // HealthcareService.characteristic (reference)
healthcareService.characteristic;
 // HealthcareService.coverageArea (reference)
healthcareService.coverageArea;
 // HealthcareService.endpoint (token)
healthcareService.endpoint;
 // HealthcareService.identifier (reference)
healthcareService.identifier;
 // HealthcareService.location (reference)
healthcareService.location;
 // HealthcareService.name (quantity)
healthcareService.name;
 // HealthcareService.providedBy (reference)
healthcareService.providedBy;
 // HealthcareService.program (date)
healthcareService.program;
 // HealthcareService.category (reference)
healthcareService.category;
 // HealthcareService.type (reference)
healthcareService.type;
 // HealthcareService.specialty (token)
healthcareService.specialty;
  final imagingStudy = ImagingStudy.empty();
 // ImagingStudy.identifier (reference)
imagingStudy.identifier;
 // ImagingStudy.subject.where(resolve() is Patient) (token)
imagingStudy.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ImagingStudy.basedOn (reference)
imagingStudy.basedOn;
 // ImagingStudy.series.bodySite (reference)
imagingStudy.series?.map((e) => e.bodySite);
 // ImagingStudy.series.instance.sopClass (token)
imagingStudy.series?.expand((e) => e.instance ?? <ImagingStudyInstance>[]).map((e) => e.sopClass);
 // ImagingStudy.encounter (token)
imagingStudy.encounter;
 // ImagingStudy.endpoint (reference)
imagingStudy.endpoint;
 // ImagingStudy.series.endpoint (token)
imagingStudy.series?.expand((e) => e.endpoint ?? <Reference>[]);
 // ImagingStudy.series.instance.uid (token)
imagingStudy.series?.expand((e) => e.instance ?? <ImagingStudyInstance>[]).map((e) => e.uid);
 // ImagingStudy.interpreter (string)
imagingStudy.interpreter;
 // ImagingStudy.series.modality (reference)
imagingStudy.series?.map((e) => e.modality);
 // ImagingStudy.series.performer.actor (token)
imagingStudy.series?.expand((e) => e.performer ?? <ImagingStudyPerformer>[]).map((e) => e.actor);
 // ImagingStudy.reasonCode (token)
imagingStudy.reasonCode;
 // ImagingStudy.referrer (token)
imagingStudy.referrer;
 // ImagingStudy.series.uid (reference)
imagingStudy.series?.map((e) => e.uid);
 // ImagingStudy.started (token)
imagingStudy.started;
 // ImagingStudy.status (reference)
imagingStudy.status;
 // ImagingStudy.subject (token)
imagingStudy.subject;
  final immunization = Immunization.empty();
 // Immunization.identifier (reference)
immunization.identifier;
 // Immunization.patient (token)
immunization.patient;
 // Immunization.location (reference)
immunization.location;
 // Immunization.lotNumber (reference)
immunization.lotNumber;
 // Immunization.manufacturer (reference)
immunization.manufacturer;
 // Immunization.performer.actor (reference)
immunization.performer?.map((e) => e.actor);
 // Immunization.reaction.detail (token)
immunization.reaction?.map((e) => e.detail);
 // Immunization.reaction.date (reference)
immunization.reaction?.map((e) => e.date);
 // Immunization.reasonCode (token)
immunization.reasonCode;
 // Immunization.reasonReference (date)
immunization.reasonReference;
 // Immunization.protocolApplied.series (reference)
immunization.protocolApplied?.map((e) => e.series);
 // Immunization.status (reference)
immunization.status;
 // Immunization.statusReason (string)
immunization.statusReason;
 // Immunization.protocolApplied.targetDisease (date)
immunization.protocolApplied?.expand((e) => e.targetDisease ?? <CodeableConcept>[]);
 // Immunization.vaccineCode (token)
immunization.vaccineCode;
  final immunizationEvaluation = ImmunizationEvaluation.empty();
 // ImmunizationEvaluation.date (token)
immunizationEvaluation.date;
 // ImmunizationEvaluation.doseStatus (string)
immunizationEvaluation.doseStatus;
 // ImmunizationEvaluation.identifier (reference)
immunizationEvaluation.identifier;
 // ImmunizationEvaluation.immunizationEvent (string)
immunizationEvaluation.immunizationEvent;
 // ImmunizationEvaluation.patient (token)
immunizationEvaluation.patient;
 // ImmunizationEvaluation.status (reference)
immunizationEvaluation.status;
 // ImmunizationEvaluation.targetDisease (string)
immunizationEvaluation.targetDisease;
  final immunizationRecommendation = ImmunizationRecommendation.empty();
 // ImmunizationRecommendation.date (token)
immunizationRecommendation.date;
 // ImmunizationRecommendation.identifier (uri)
immunizationRecommendation.identifier;
 // ImmunizationRecommendation.recommendation.supportingPatientInformation (token)
immunizationRecommendation.recommendation.expand((e) => e.supportingPatientInformation ?? <Reference>[]);
 // ImmunizationRecommendation.patient (composite)
immunizationRecommendation.patient;
 // ImmunizationRecommendation.recommendation.forecastStatus (composite)
immunizationRecommendation.recommendation.map((e) => e.forecastStatus);
 // ImmunizationRecommendation.recommendation.supportingImmunization (token)
immunizationRecommendation.recommendation.expand((e) => e.supportingImmunization ?? <Reference>[]);
 // ImmunizationRecommendation.recommendation.targetDisease (date)
immunizationRecommendation.recommendation.map((e) => e.targetDisease);
 // ImmunizationRecommendation.recommendation.vaccineCode (string)
immunizationRecommendation.recommendation.expand((e) => e.vaccineCode ?? <CodeableConcept>[]);
  final implementationGuide = ImplementationGuide.empty();
 // ImplementationGuide.useContext.code (token)
implementationGuide.useContext?.map((e) => e.code);
 // ImplementationGuide.date (string)
implementationGuide.date;
 // ImplementationGuide.description (token)
implementationGuide.description;
 // ImplementationGuide.jurisdiction (string)
implementationGuide.jurisdiction;
 // ImplementationGuide.name (uri)
implementationGuide.name;
 // ImplementationGuide.publisher (token)
implementationGuide.publisher;
 // ImplementationGuide.status (composite)
implementationGuide.status;
 // ImplementationGuide.title (composite)
implementationGuide.title;
 // ImplementationGuide.url (token)
implementationGuide.url;
 // ImplementationGuide.version (token)
implementationGuide.version;
 // ImplementationGuide.useContext (string)
implementationGuide.useContext;
 // ImplementationGuide.useContext (token)
implementationGuide.useContext;
 // ImplementationGuide.dependsOn.uri (uri)
implementationGuide.dependsOn?.map((e) => e.uri);
 // ImplementationGuide.experimental (composite)
implementationGuide.experimental;
 // ImplementationGuide.global.profile (composite)
implementationGuide.global?.map((e) => e.profile);
 // ImplementationGuide.definition.resource.reference (token)
implementationGuide.definition?.resource.map((e) => e.reference);
  final ingredient = Ingredient.empty();
 // Ingredient.for (date)
ingredient.for_;
 // Ingredient.function (string)
ingredient.function_;
 // Ingredient.identifier (token)
ingredient.identifier;
 // Ingredient.manufacturer (string)
ingredient.manufacturer;
 // Ingredient.role (string)
ingredient.role;
 // Ingredient.substance.code.reference (token)
ingredient.substance.code.reference;
 // Ingredient.substance.code.concept (string)
ingredient.substance.code.concept;
 // Ingredient.substance.code.reference (uri)
ingredient.substance.code.reference;
  final insurancePlan = InsurancePlan.empty();
 // InsurancePlan.contact.address (token)
insurancePlan.contact?.map((e) => e.address);
 // InsurancePlan.contact.address.city (composite)
insurancePlan.contact?.map((e) => e.address).map((e) => e?.city);
 // InsurancePlan.contact.address.country (composite)
insurancePlan.contact?.map((e) => e.address).map((e) => e?.country);
 // InsurancePlan.contact.address.postalCode (token)
insurancePlan.contact?.map((e) => e.address).map((e) => e?.postalCode);
 // InsurancePlan.contact.address.state (date)
insurancePlan.contact?.map((e) => e.address).map((e) => e?.state);
 // InsurancePlan.contact.address.use (token)
insurancePlan.contact?.map((e) => e.address).map((e) => e?.use);
 // InsurancePlan.administeredBy (token)
insurancePlan.administeredBy;
 // InsurancePlan.endpoint (string)
insurancePlan.endpoint;
 // InsurancePlan.identifier (string)
insurancePlan.identifier;
 // InsurancePlan.ownedBy (token)
insurancePlan.ownedBy;
 // InsurancePlan.name (uri)
insurancePlan.name;
 // InsurancePlan.status (token)
insurancePlan.status;
 // InsurancePlan.type (composite)
insurancePlan.type;
  final invoice = Invoice.empty();
 // Invoice.account (composite)
invoice.account;
 // Invoice.date (reference)
invoice.date;
 // Invoice.identifier (reference)
invoice.identifier;
 // Invoice.issuer (reference)
invoice.issuer;
 // Invoice.participant.actor (date)
invoice.participant?.map((e) => e.actor);
 // Invoice.participant.role (reference)
invoice.participant?.map((e) => e.role);
 // Invoice.subject.where(resolve() is Patient) (string)
invoice.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Invoice.recipient (reference)
invoice.recipient;
 // Invoice.status (reference)
invoice.status;
 // Invoice.subject (reference)
invoice.subject;
 // Invoice.totalGross (token)
invoice.totalGross;
 // Invoice.totalNet (reference)
invoice.totalNet;
 // Invoice.type (reference)
invoice.type;
  final library = Library.empty();
 // Library.relatedArtifact.where(type='composed-of').resource (reference)
library.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // Library.content.contentType (reference)
library.content?.map((e) => e.contentType);
 // Library.useContext.code (reference)
library.useContext?.map((e) => e.code);
 // Library.date (token)
library.date;
 // Library.relatedArtifact.where(type='depends-on').resource (reference)
library.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // Library.relatedArtifact.where(type='derived-from').resource (reference)
library.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // Library.description (uri)
library.description;
 // Library.effectivePeriod (token)
library.effectivePeriod;
 // Library.identifier (token)
library.identifier;
 // Library.jurisdiction (token)
library.jurisdiction;
 // Library.name (reference)
library.name;
 // Library.relatedArtifact.where(type='predecessor').resource (token)
library.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // Library.publisher (reference)
library.publisher;
 // Library.status (token)
library.status;
 // Library.relatedArtifact.where(type='successor').resource (token)
library.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // Library.title (token)
library.title;
 // Library.topic (reference)
library.topic;
 // Library.type (token)
library.type;
 // Library.url (token)
library.url;
 // Library.version (token)
library.version;
 // Library.useContext (token)
library.useContext;
 // Library.useContext (token)
library.useContext;
  final linkage = Linkage.empty();
 // Linkage.author (token)
linkage.author;
 // Linkage.item.resource (reference)
linkage.item.map((e) => e.resource);
 // Linkage.item.resource (reference)
linkage.item.map((e) => e.resource);
  final location = Location.empty();
 // Location.address (token)
location.address;
 // Location.address.city (composite)
location.address?.city;
 // Location.address.country (token)
location.address?.country;
 // Location.address.postalCode (reference)
location.address?.postalCode;
 // Location.address.state (token)
location.address?.state;
 // Location.address.use (reference)
location.address?.use;
 // Location.endpoint (token)
location.endpoint;
 // Location.identifier (token)
location.identifier;
 // Location.name (reference)
location.name;
 // Location.alias (reference)
location.alias;
 // Location.position (token)
location.position;
 // Location.operationalStatus (reference)
location.operationalStatus;
 // Location.managingOrganization (string)
location.managingOrganization;
 // Location.partOf (reference)
location.partOf;
 // Location.status (token)
location.status;
 // Location.type (token)
location.type;
  final manufacturedItemDefinition = ManufacturedItemDefinition.empty();
 // ManufacturedItemDefinition.manufacturedDoseForm (token)
manufacturedItemDefinition.manufacturedDoseForm;
 // ManufacturedItemDefinition.identifier (token)
manufacturedItemDefinition.identifier;
 // ManufacturedItemDefinition.ingredient (reference)
manufacturedItemDefinition.ingredient;
  final measure = Measure.empty();
 // Measure.relatedArtifact.where(type='composed-of').resource (token)
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // Measure.useContext.code (token)
measure.useContext?.map((e) => e.code);
 // Measure.date (reference)
measure.date;
 // Measure.relatedArtifact.where(type='depends-on').resource (reference)
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // Measure.library (reference)
measure.library_;
 // Measure.relatedArtifact.where(type='derived-from').resource (token)
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // Measure.description (reference)
measure.description;
 // Measure.effectivePeriod (token)
measure.effectivePeriod;
 // Measure.identifier (reference)
measure.identifier;
 // Measure.jurisdiction (token)
measure.jurisdiction;
 // Measure.name (reference)
measure.name;
 // Measure.relatedArtifact.where(type='predecessor').resource (token)
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // Measure.publisher (date)
measure.publisher;
 // Measure.status (token)
measure.status;
 // Measure.relatedArtifact.where(type='successor').resource (reference)
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // Measure.title (reference)
measure.title;
 // Measure.topic (string)
measure.topic;
 // Measure.url (reference)
measure.url;
 // Measure.version (reference)
measure.version;
 // Measure.useContext (reference)
measure.useContext;
 // Measure.useContext (date)
measure.useContext;
  final measureReport = MeasureReport.empty();
 // MeasureReport.date (token)
measureReport.date;
 // MeasureReport.evaluatedResource (reference)
measureReport.evaluatedResource;
 // MeasureReport.identifier (string)
measureReport.identifier;
 // MeasureReport.measure (token)
measureReport.measure;
 // MeasureReport.subject.where(resolve() is Patient) (token)
measureReport.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MeasureReport.period (token)
measureReport.period;
 // MeasureReport.reporter (token)
measureReport.reporter;
 // MeasureReport.status (date)
measureReport.status;
 // MeasureReport.subject (token)
measureReport.subject;
  final media = Media.empty();
 // Media.basedOn (token)
media.basedOn;
 // Media.created (reference)
media.createdX;
 // Media.device (reference)
media.device;
 // Media.encounter (token)
media.encounter;
 // Media.identifier (token)
media.identifier;
 // Media.modality (date)
media.modality;
 // Media.operator (token)
media.operator_;
 // Media.subject.where(resolve() is Patient) (reference)
media.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Media.bodySite (reference)
media.bodySite;
 // Media.status (token)
media.status;
 // Media.subject (reference)
media.subject;
 // Media.type (token)
media.type;
 // Media.view (token)
media.view;
  final medication = Medication.empty();
 // Medication.code (reference)
medication.code;
 // Medication.batch.expirationDate (token)
medication.batch?.expirationDate;
 // Medication.form (reference)
medication.form;
 // Medication.identifier (reference)
medication.identifier;
 // Medication.batch.lotNumber (reference)
medication.batch?.lotNumber;
 // Medication.manufacturer (token)
medication.manufacturer;
 // Medication.status (token)
medication.status;
  final medicationAdministration = MedicationAdministration.empty();
 // MedicationAdministration.identifier (reference)
medicationAdministration.identifier;
 // MedicationAdministration.subject.where(resolve() is Patient) (token)
medicationAdministration.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationAdministration.context (reference)
medicationAdministration.context;
 // MedicationAdministration.device (token)
medicationAdministration.device;
 // MedicationAdministration.effective (reference)
medicationAdministration.effectiveX;
 // MedicationAdministration.performer.actor (string)
medicationAdministration.performer?.map((e) => e.actor);
 // MedicationAdministration.reasonCode (string)
medicationAdministration.reasonCode;
 // MedicationAdministration.statusReason (string)
medicationAdministration.statusReason;
 // MedicationAdministration.request (string)
medicationAdministration.request;
 // MedicationAdministration.status (string)
medicationAdministration.status;
 // MedicationAdministration.subject (token)
medicationAdministration.subject;
  final medicationDispense = MedicationDispense.empty();
 // MedicationDispense.identifier (reference)
medicationDispense.identifier;
 // MedicationDispense.subject.where(resolve() is Patient) (reference)
medicationDispense.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationDispense.status (token)
medicationDispense.status;
 // MedicationDispense.context (reference)
medicationDispense.context;
 // MedicationDispense.destination (string)
medicationDispense.destination;
 // MedicationDispense.performer.actor (token)
medicationDispense.performer?.map((e) => e.actor);
 // MedicationDispense.authorizingPrescription (token)
medicationDispense.authorizingPrescription;
 // MedicationDispense.receiver (reference)
medicationDispense.receiver;
 // MedicationDispense.substitution.responsibleParty (date)
medicationDispense.substitution?.responsibleParty;
 // MedicationDispense.subject (token)
medicationDispense.subject;
 // MedicationDispense.type (reference)
medicationDispense.type;
 // MedicationDispense.whenHandedOver (reference)
medicationDispense.whenHandedOver;
 // MedicationDispense.whenPrepared (token)
medicationDispense.whenPrepared;
  final medicationKnowledge = MedicationKnowledge.empty();
 // MedicationKnowledge.medicineClassification.classification (reference)
medicationKnowledge.medicineClassification?.expand((e) => e.classification ?? <CodeableConcept>[]);
 // MedicationKnowledge.medicineClassification.type (reference)
medicationKnowledge.medicineClassification?.map((e) => e.type);
 // MedicationKnowledge.code (token)
medicationKnowledge.code;
 // MedicationKnowledge.doseForm (reference)
medicationKnowledge.doseForm;
 // MedicationKnowledge.manufacturer (quantity)
medicationKnowledge.manufacturer;
 // MedicationKnowledge.monitoringProgram.name (quantity)
medicationKnowledge.monitoringProgram?.map((e) => e.name);
 // MedicationKnowledge.monitoringProgram.type (token)
medicationKnowledge.monitoringProgram?.map((e) => e.type);
 // MedicationKnowledge.monograph.source (reference)
medicationKnowledge.monograph?.map((e) => e.source);
 // MedicationKnowledge.monograph.type (token)
medicationKnowledge.monograph?.map((e) => e.type);
 // MedicationKnowledge.cost.source (token)
medicationKnowledge.cost?.map((e) => e.source);
 // MedicationKnowledge.status (date)
medicationKnowledge.status;
  final medicationRequest = MedicationRequest.empty();
 // MedicationRequest.identifier (reference)
medicationRequest.identifier;
 // MedicationRequest.subject.where(resolve() is Patient) (reference)
medicationRequest.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationRequest.status (string)
medicationRequest.status;
 // MedicationRequest.authoredOn (date)
medicationRequest.authoredOn;
 // MedicationRequest.category (token)
medicationRequest.category;
 // MedicationRequest.dosageInstruction.timing.event (token)
medicationRequest.dosageInstruction?.map((e) => e.timing).expand((e) => e?.event ?? <FhirDateTime>[]);
 // MedicationRequest.encounter (string)
medicationRequest.encounter;
 // MedicationRequest.dispenseRequest.performer (reference)
medicationRequest.dispenseRequest?.performer;
 // MedicationRequest.performer (string)
medicationRequest.performer;
 // MedicationRequest.performerType (token)
medicationRequest.performerType;
 // MedicationRequest.intent (reference)
medicationRequest.intent;
 // MedicationRequest.priority (string)
medicationRequest.priority;
 // MedicationRequest.requester (token)
medicationRequest.requester;
 // MedicationRequest.subject (token)
medicationRequest.subject;
  final medicationStatement = MedicationStatement.empty();
 // MedicationStatement.identifier (uri)
medicationStatement.identifier;
 // MedicationStatement.subject.where(resolve() is Patient) (token)
medicationStatement.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationStatement.status (composite)
medicationStatement.status;
 // MedicationStatement.category (composite)
medicationStatement.category;
 // MedicationStatement.context (reference)
medicationStatement.context;
 // MedicationStatement.effective (reference)
medicationStatement.effectiveX;
 // MedicationStatement.partOf (reference)
medicationStatement.partOf;
 // MedicationStatement.informationSource (token)
medicationStatement.informationSource;
 // MedicationStatement.subject (reference)
medicationStatement.subject;
  final medicinalProductDefinition = MedicinalProductDefinition.empty();
 // MedicinalProductDefinition.characteristic.value (string)
medicinalProductDefinition.characteristic?.map((e) => e.valueX);
 // MedicinalProductDefinition.characteristic.type (reference)
medicinalProductDefinition.characteristic?.map((e) => e.type);
 // MedicinalProductDefinition.contact.contact (token)
medicinalProductDefinition.contact?.map((e) => e.contact);
 // MedicinalProductDefinition.domain (reference)
medicinalProductDefinition.domain;
 // MedicinalProductDefinition.identifier (string)
medicinalProductDefinition.identifier;
 // MedicinalProductDefinition.ingredient (string)
medicinalProductDefinition.ingredient;
 // MedicinalProductDefinition.masterFile (string)
medicinalProductDefinition.masterFile;
 // MedicinalProductDefinition.name.productName (string)
medicinalProductDefinition.name.map((e) => e.productName);
 // MedicinalProductDefinition.name.countryLanguage.language (string)
medicinalProductDefinition.name.expand((e) => e.countryLanguage ?? <MedicinalProductDefinitionCountryLanguage>[]).map((e) => e.language);
 // MedicinalProductDefinition.classification (string)
medicinalProductDefinition.classification;
 // MedicinalProductDefinition.status (token)
medicinalProductDefinition.status;
 // MedicinalProductDefinition.type (reference)
medicinalProductDefinition.type;
  final messageDefinition = MessageDefinition.empty();
 // MessageDefinition.useContext.code (token)
messageDefinition.useContext?.map((e) => e.code);
 // MessageDefinition.date (string)
messageDefinition.date;
 // MessageDefinition.description (string)
messageDefinition.description;
 // MessageDefinition.jurisdiction (special)
messageDefinition.jurisdiction;
 // MessageDefinition.name (token)
messageDefinition.name;
 // MessageDefinition.publisher (reference)
messageDefinition.publisher;
 // MessageDefinition.status (reference)
messageDefinition.status;
 // MessageDefinition.title (token)
messageDefinition.title;
 // MessageDefinition.url (token)
messageDefinition.url;
 // MessageDefinition.version (token)
messageDefinition.version;
 // MessageDefinition.useContext (token)
messageDefinition.useContext;
 // MessageDefinition.useContext (token)
messageDefinition.useContext;
 // MessageDefinition.identifier (reference)
messageDefinition.identifier;
 // MessageDefinition.category (token)
messageDefinition.category;
 // MessageDefinition.event (date)
messageDefinition.eventX;
 // MessageDefinition.focus.code (reference)
messageDefinition.focus?.map((e) => e.code);
 // MessageDefinition.parent (reference)
messageDefinition.parent;
  final messageHeader = MessageHeader.empty();
 // MessageHeader.author (reference)
messageHeader.author;
 // MessageHeader.response.code (string)
messageHeader.response?.code;
 // MessageHeader.destination.name (date)
messageHeader.destination?.map((e) => e.name);
 // MessageHeader.destination.endpoint (token)
messageHeader.destination?.map((e) => e.endpoint);
 // MessageHeader.enterer (token)
messageHeader.enterer;
 // MessageHeader.event (string)
messageHeader.eventX;
 // MessageHeader.focus (reference)
messageHeader.focus;
 // MessageHeader.destination.receiver (string)
messageHeader.destination?.map((e) => e.receiver);
 // MessageHeader.response.identifier (token)
messageHeader.response?.identifier;
 // MessageHeader.responsible (reference)
messageHeader.responsible;
 // MessageHeader.sender (string)
messageHeader.sender;
 // MessageHeader.source.name (token)
messageHeader.source.name;
 // MessageHeader.source.endpoint (uri)
messageHeader.source.endpoint;
 // MessageHeader.destination.target (token)
messageHeader.destination?.map((e) => e.target);
  final molecularSequence = MolecularSequence.empty();
 // MolecularSequence.referenceSeq.chromosome (composite)
molecularSequence.referenceSeq?.chromosome;
 // MolecularSequence.identifier (composite)
molecularSequence.identifier;
 // MolecularSequence.patient (date)
molecularSequence.patient;
 // MolecularSequence.referenceSeq.referenceSeqId (reference)
molecularSequence.referenceSeq?.referenceSeqId;
 // MolecularSequence.type (token)
molecularSequence.type;
 // MolecularSequence.variant.end (reference)
molecularSequence.variant?.map((e) => e.end);
 // MolecularSequence.variant.start (reference)
molecularSequence.variant?.map((e) => e.start);
 // MolecularSequence.referenceSeq.windowEnd (date)
molecularSequence.referenceSeq?.windowEnd;
 // MolecularSequence.referenceSeq.windowStart (reference)
molecularSequence.referenceSeq?.windowStart;
 // MolecularSequence.variant (token)
molecularSequence.variant;
 // MolecularSequence.referenceSeq (reference)
molecularSequence.referenceSeq;
 // MolecularSequence.variant (reference)
molecularSequence.variant;
 // MolecularSequence.referenceSeq (date)
molecularSequence.referenceSeq;
  final namingSystem = NamingSystem.empty();
 // NamingSystem.useContext.code (reference)
namingSystem.useContext?.map((e) => e.code);
 // NamingSystem.date (reference)
namingSystem.date;
 // NamingSystem.description (token)
namingSystem.description;
 // NamingSystem.jurisdiction (token)
namingSystem.jurisdiction;
 // NamingSystem.name (reference)
namingSystem.name;
 // NamingSystem.publisher (reference)
namingSystem.publisher;
 // NamingSystem.status (token)
namingSystem.status;
 // NamingSystem.useContext (token)
namingSystem.useContext;
 // NamingSystem.useContext (reference)
namingSystem.useContext;
 // NamingSystem.contact.name (token)
namingSystem.contact?.map((e) => e.name);
 // NamingSystem.uniqueId.type (token)
namingSystem.uniqueId.map((e) => e.type);
 // NamingSystem.kind (date)
namingSystem.kind;
 // NamingSystem.uniqueId.period (token)
namingSystem.uniqueId.map((e) => e.period);
 // NamingSystem.responsible (token)
namingSystem.responsible;
 // NamingSystem.contact.telecom (token)
namingSystem.contact?.expand((e) => e.telecom ?? <ContactPoint>[]);
 // NamingSystem.type (reference)
namingSystem.type;
 // NamingSystem.uniqueId.value (token)
namingSystem.uniqueId.map((e) => e.value);
  final nutritionOrder = NutritionOrder.empty();
 // NutritionOrder.identifier (reference)
nutritionOrder.identifier;
 // NutritionOrder.patient (reference)
nutritionOrder.patient;
 // NutritionOrder.encounter (date)
nutritionOrder.encounter;
 // NutritionOrder.enteralFormula.additiveType (reference)
nutritionOrder.enteralFormula?.additiveType;
 // NutritionOrder.dateTime (token)
nutritionOrder.dateTime;
 // NutritionOrder.enteralFormula.baseFormulaType (token)
nutritionOrder.enteralFormula?.baseFormulaType;
 // NutritionOrder.instantiatesCanonical (reference)
nutritionOrder.instantiatesCanonical;
 // NutritionOrder.instantiatesUri (token)
nutritionOrder.instantiatesUri;
 // NutritionOrder.oralDiet.type (token)
nutritionOrder.oralDiet?.type;
 // NutritionOrder.orderer (token)
nutritionOrder.orderer;
 // NutritionOrder.status (token)
nutritionOrder.status;
 // NutritionOrder.supplement.type (reference)
nutritionOrder.supplement?.map((e) => e.type);
  final nutritionProduct = NutritionProduct.empty();
 // NutritionProduct.instance.identifier (reference)
nutritionProduct.instance?.identifier;
 // NutritionProduct.status (reference)
nutritionProduct.status;
  final observation = Observation.empty();
 // Observation.code (reference)
observation.code;
 // Observation.effective (reference)
observation.effectiveX;
 // Observation.identifier (reference)
observation.identifier;
 // Observation.subject.where(resolve() is Patient) (reference)
observation.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Observation.encounter (reference)
observation.encounter;
 // Observation.basedOn (token)
observation.basedOn;
 // Observation.category (date)
observation.category;
 // Observation.code (date)
observation.code;
 // Observation.component.code (token)
observation.component?.map((e) => e.code);
 // Observation.dataAbsentReason (token)
observation.dataAbsentReason;
 // Observation.component.dataAbsentReason (token)
observation.component?.map((e) => e.dataAbsentReason);
 // Observation.component.code (token)
observation.component?.map((e) => e.code);
 // Observation.component.dataAbsentReason (reference)
observation.component?.map((e) => e.dataAbsentReason);
 // Observation.dataAbsentReason (token)
observation.dataAbsentReason;
 // Observation.derivedFrom (token)
observation.derivedFrom;
 // Observation.device (reference)
observation.device;
 // Observation.focus (token)
observation.focus;
 // Observation.hasMember (token)
observation.hasMember;
 // Observation.method (token)
observation.method;
 // Observation.partOf (date)
observation.partOf;
 // Observation.performer (token)
observation.performer;
 // Observation.specimen (date)
observation.specimen;
 // Observation.status (reference)
observation.status;
 // Observation.subject (reference)
observation.subject;
 // Observation (reference)
observation;
 // Observation (token)
observation;
 // Observation (token)
observation;
 // Observation (token)
observation;
 // Observation (reference)
observation;
 // Observation.component (reference)
observation.component;
 // Observation (token)
observation;
 // Observation.component (reference)
observation.component;
 // Observation.component (date)
observation.component;
 // Observation.component (reference)
observation.component;
  final observationDefinition = ObservationDefinition.empty();
  final operationDefinition = OperationDefinition.empty();
 // OperationDefinition.useContext.code (reference)
operationDefinition.useContext?.map((e) => e.code);
 // OperationDefinition.date (reference)
operationDefinition.date;
 // OperationDefinition.description (token)
operationDefinition.description;
 // OperationDefinition.jurisdiction (token)
operationDefinition.jurisdiction;
 // OperationDefinition.name (reference)
operationDefinition.name;
 // OperationDefinition.publisher (token)
operationDefinition.publisher;
 // OperationDefinition.status (token)
operationDefinition.status;
 // OperationDefinition.title (token)
operationDefinition.title;
 // OperationDefinition.url (reference)
operationDefinition.url;
 // OperationDefinition.version (string)
operationDefinition.version;
 // OperationDefinition.useContext (token)
operationDefinition.useContext;
 // OperationDefinition.useContext (token)
operationDefinition.useContext;
 // OperationDefinition.base (token)
operationDefinition.base;
 // OperationDefinition.code (token)
operationDefinition.code;
 // OperationDefinition.inputProfile (token)
operationDefinition.inputProfile;
 // OperationDefinition.instance (token)
operationDefinition.instance;
 // OperationDefinition.kind (token)
operationDefinition.kind;
 // OperationDefinition.outputProfile (reference)
operationDefinition.outputProfile;
 // OperationDefinition.system (reference)
operationDefinition.system;
 // OperationDefinition.type (token)
operationDefinition.type;
  final operationOutcome = OperationOutcome.empty();
  final organization = Organization.empty();
 // Organization.active (string)
organization.active;
 // Organization.address (uri)
organization.address;
 // Organization.address.city (reference)
organization.address?.map((e) => e.city);
 // Organization.address.country (token)
organization.address?.map((e) => e.country);
 // Organization.address.postalCode (reference)
organization.address?.map((e) => e.postalCode);
 // Organization.address.state (reference)
organization.address?.map((e) => e.state);
 // Organization.address.use (token)
organization.address?.map((e) => e.use);
 // Organization.endpoint (reference)
organization.endpoint;
 // Organization.identifier (reference)
organization.identifier;
 // Organization.name (string)
organization.name;
 // Organization.alias (uri)
organization.alias;
 // Organization.partOf (reference)
organization.partOf;
 // Organization.name (token)
organization.name;
 // Organization.type (token)
organization.type;
  final organizationAffiliation = OrganizationAffiliation.empty();
 // OrganizationAffiliation.active (reference)
organizationAffiliation.active;
 // OrganizationAffiliation.period (token)
organizationAffiliation.period;
 // OrganizationAffiliation.telecom.where(system='email') (token)
organizationAffiliation.telecom?.where((e) => e.system?.value.toString() == 'email');
 // OrganizationAffiliation.endpoint (number)
organizationAffiliation.endpoint;
 // OrganizationAffiliation.identifier (number)
organizationAffiliation.identifier;
 // OrganizationAffiliation.location (number)
organizationAffiliation.location;
 // OrganizationAffiliation.network (number)
organizationAffiliation.network;
 // OrganizationAffiliation.participatingOrganization (composite)
organizationAffiliation.participatingOrganization;
 // OrganizationAffiliation.telecom.where(system='phone') (composite)
organizationAffiliation.telecom?.where((e) => e.system?.value.toString() == 'phone');
 // OrganizationAffiliation.organization (composite)
organizationAffiliation.organization;
 // OrganizationAffiliation.code (composite)
organizationAffiliation.code;
 // OrganizationAffiliation.healthcareService (string)
organizationAffiliation.healthcareService;
 // OrganizationAffiliation.specialty (token)
organizationAffiliation.specialty;
 // OrganizationAffiliation.telecom (token)
organizationAffiliation.telecom;
  final packagedProductDefinition = PackagedProductDefinition.empty();
 // PackagedProductDefinition.package.containedItem.item.reference (date)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference (string)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference (token)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.identifier (token)
packagedProductDefinition.identifier;
 // PackagedProductDefinition.package.containedItem.item.reference (string)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference (token)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.name (date)
packagedProductDefinition.name;
 // PackagedProductDefinition.package.containedItem.item.reference (token)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference (reference)
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.packageFor (uri)
packagedProductDefinition.packageFor;
 // PackagedProductDefinition.status (token)
packagedProductDefinition.status;
  final parameters = Parameters.empty();
  final patient = Patient.empty();
 // Patient.active (reference)
patient.active;
 // Patient.address (token)
patient.address;
 // Patient.address.city (token)
patient.address?.map((e) => e.city);
 // Patient.address.country (token)
patient.address?.map((e) => e.country);
 // Patient.address.postalCode (token)
patient.address?.map((e) => e.postalCode);
 // Patient.address.state (reference)
patient.address?.map((e) => e.state);
 // Patient.address.use (token)
patient.address?.map((e) => e.use);
 // Patient.birthDate (token)
patient.birthDate;
 // Patient.deceased.exists() and Patient.deceased != false (token)
patient.deceasedBoolean?.value != false || patient.deceasedDateTime?.value != null;
 // Patient.telecom.where(system='email') (token)
patient.telecom?.where((e) => e.system?.value.toString() == 'email');
 // Patient.name.family (token)
patient.name?.map((e) => e.family);
 // Patient.gender (token)
patient.gender;
 // Patient.generalPractitioner (token)
patient.generalPractitioner;
 // Patient.name.given (token)
patient.name?.expand((e) => e.given ?? <FhirString>[]);
 // Patient.identifier (reference)
patient.identifier;
 // Patient.communication.language (reference)
patient.communication?.map((e) => e.language);
 // Patient.link.other (reference)
patient.link?.map((e) => e.other);
 // Patient.name (reference)
patient.name;
 // Patient.managingOrganization (token)
patient.managingOrganization;
 // Patient.telecom.where(system='phone') (reference)
patient.telecom?.where((e) => e.system?.value.toString() == 'phone');
 // Patient.name (reference)
patient.name;
 // Patient.telecom (reference)
patient.telecom;
  final paymentNotice = PaymentNotice.empty();
 // PaymentNotice.created (token)
paymentNotice.created;
 // PaymentNotice.identifier (reference)
paymentNotice.identifier;
 // PaymentNotice.paymentStatus (composite)
paymentNotice.paymentStatus;
 // PaymentNotice.provider (composite)
paymentNotice.provider;
 // PaymentNotice.request (composite)
paymentNotice.request;
 // PaymentNotice.response (composite)
paymentNotice.response;
 // PaymentNotice.status (composite)
paymentNotice.status;
  final paymentReconciliation = PaymentReconciliation.empty();
 // PaymentReconciliation.created (composite)
paymentReconciliation.created;
 // PaymentReconciliation.disposition (composite)
paymentReconciliation.disposition;
 // PaymentReconciliation.identifier (composite)
paymentReconciliation.identifier;
 // PaymentReconciliation.outcome (composite)
paymentReconciliation.outcome;
 // PaymentReconciliation.paymentIssuer (composite)
paymentReconciliation.paymentIssuer;
 // PaymentReconciliation.request (reference)
paymentReconciliation.request;
 // PaymentReconciliation.requestor (token)
paymentReconciliation.requestor;
 // PaymentReconciliation.status (reference)
paymentReconciliation.status;
  final person = Person.empty();
 // Person.address (token)
person.address;
 // Person.address.city (token)
person.address?.map((e) => e.city);
 // Person.address.country (reference)
person.address?.map((e) => e.country);
 // Person.address.postalCode (token)
person.address?.map((e) => e.postalCode);
 // Person.address.state (token)
person.address?.map((e) => e.state);
 // Person.address.use (token)
person.address?.map((e) => e.use);
 // Person.birthDate (string)
person.birthDate;
 // Person.telecom.where(system='email') (string)
person.telecom?.where((e) => e.system?.value.toString() == 'email');
 // Person.gender (string)
person.gender;
 // Person.telecom.where(system='phone') (string)
person.telecom?.where((e) => e.system?.value.toString() == 'phone');
 // Person.name (string)
person.name;
 // Person.telecom (token)
person.telecom;
 // Person.identifier (reference)
person.identifier;
 // Person.link.target (token)
person.link?.map((e) => e.target);
 // Person.name (string)
person.name;
 // Person.managingOrganization (string)
person.managingOrganization;
 // Person.link.target.where(resolve() is Patient) (reference)
person.link?.map((e) => e.target).where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Person.link.target.where(resolve() is Practitioner) (string)
person.link?.map((e) => e.target).where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // Person.link.target.where(resolve() is RelatedPerson) (token)
person.link?.map((e) => e.target).where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'RelatedPerson';
  });
  final planDefinition = PlanDefinition.empty();
 // PlanDefinition.relatedArtifact.where(type='composed-of').resource (token)
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // PlanDefinition.useContext.code (date)
planDefinition.useContext?.map((e) => e.code);
 // PlanDefinition.date (token)
planDefinition.date;
 // PlanDefinition.action.definition (reference)
planDefinition.action?.map((e) => e.definitionX);
 // PlanDefinition.relatedArtifact.where(type='depends-on').resource (token)
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // PlanDefinition.library (reference)
planDefinition.library_;
 // PlanDefinition.relatedArtifact.where(type='derived-from').resource (reference)
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // PlanDefinition.description (reference)
planDefinition.description;
 // PlanDefinition.effectivePeriod (token)
planDefinition.effectivePeriod;
 // PlanDefinition.identifier (reference)
planDefinition.identifier;
 // PlanDefinition.jurisdiction (token)
planDefinition.jurisdiction;
 // PlanDefinition.name (reference)
planDefinition.name;
 // PlanDefinition.relatedArtifact.where(type='predecessor').resource (token)
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // PlanDefinition.publisher (token)
planDefinition.publisher;
 // PlanDefinition.status (reference)
planDefinition.status;
 // PlanDefinition.relatedArtifact.where(type='successor').resource (reference)
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // PlanDefinition.title (reference)
planDefinition.title;
 // PlanDefinition.topic (token)
planDefinition.topic;
 // PlanDefinition.type (reference)
planDefinition.type;
 // PlanDefinition.url (reference)
planDefinition.url;
 // PlanDefinition.version (token)
planDefinition.version;
 // PlanDefinition.useContext (reference)
planDefinition.useContext;
 // PlanDefinition.useContext (reference)
planDefinition.useContext;
  final practitioner = Practitioner.empty();
 // Practitioner.address (reference)
practitioner.address;
 // Practitioner.address.city (token)
practitioner.address?.map((e) => e.city);
 // Practitioner.address.country (token)
practitioner.address?.map((e) => e.country);
 // Practitioner.address.postalCode (string)
practitioner.address?.map((e) => e.postalCode);
 // Practitioner.address.state (string)
practitioner.address?.map((e) => e.state);
 // Practitioner.address.use (string)
practitioner.address?.map((e) => e.use);
 // Practitioner.telecom.where(system='email') (string)
practitioner.telecom?.where((e) => e.system?.value.toString() == 'email');
 // Practitioner.name.family (string)
practitioner.name?.map((e) => e.family);
 // Practitioner.gender (string)
practitioner.gender;
 // Practitioner.name.given (string)
practitioner.name?.expand((e) => e.given ?? <FhirString>[]);
 // Practitioner.telecom.where(system='phone') (string)
practitioner.telecom?.where((e) => e.system?.value.toString() == 'phone');
 // Practitioner.name (string)
practitioner.name;
 // Practitioner.telecom (string)
practitioner.telecom;
 // Practitioner.active (string)
practitioner.active;
 // Practitioner.communication (string)
practitioner.communication;
 // Practitioner.identifier (string)
practitioner.identifier;
 // Practitioner.name (string)
practitioner.name;
  final practitionerRole = PractitionerRole.empty();
 // PractitionerRole.telecom.where(system='email') (string)
practitionerRole.telecom?.where((e) => e.system?.value.toString() == 'email');
 // PractitionerRole.telecom.where(system='phone') (string)
practitionerRole.telecom?.where((e) => e.system?.value.toString() == 'phone');
 // PractitionerRole.telecom (string)
practitionerRole.telecom;
 // PractitionerRole.active (string)
practitionerRole.active;
 // PractitionerRole.period (string)
practitionerRole.period;
 // PractitionerRole.endpoint (string)
practitionerRole.endpoint;
 // PractitionerRole.identifier (token)
practitionerRole.identifier;
 // PractitionerRole.location (token)
practitionerRole.location;
 // PractitionerRole.organization (token)
practitionerRole.organization;
 // PractitionerRole.practitioner (token)
practitionerRole.practitioner;
 // PractitionerRole.code (date)
practitionerRole.code;
 // PractitionerRole.healthcareService (date)
practitionerRole.healthcareService;
 // PractitionerRole.specialty (date)
practitionerRole.specialty;
  final procedure = Procedure.empty();
 // Procedure.code (token)
procedure.code;
 // Procedure.performed (token)
procedure.performedX;
 // Procedure.identifier (token)
procedure.identifier;
 // Procedure.subject.where(resolve() is Patient) (token)
procedure.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Procedure.encounter (token)
procedure.encounter;
 // Procedure.basedOn (token)
procedure.basedOn;
 // Procedure.category (string)
procedure.category;
 // Procedure.instantiatesCanonical (string)
procedure.instantiatesCanonical;
 // Procedure.instantiatesUri (token)
procedure.instantiatesUri;
 // Procedure.location (token)
procedure.location;
 // Procedure.partOf (token)
procedure.partOf;
 // Procedure.performer.actor (token)
procedure.performer?.map((e) => e.actor);
 // Procedure.reasonCode (reference)
procedure.reasonCode;
 // Procedure.reasonReference (string)
procedure.reasonReference;
 // Procedure.status (string)
procedure.status;
 // Procedure.subject (token)
procedure.subject;
  final provenance = Provenance.empty();
 // Provenance.agent.who (token)
provenance.agent.map((e) => e.who);
 // Provenance.agent.role (reference)
provenance.agent.expand((e) => e.role ?? <CodeableConcept>[]);
 // Provenance.agent.type (string)
provenance.agent.map((e) => e.type);
 // Provenance.entity.what (reference)
provenance.entity?.map((e) => e.what);
 // Provenance.location (token)
provenance.location;
 // Provenance.target.where(resolve() is Patient) (token)
provenance.target.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Provenance.recorded (token)
provenance.recorded;
 // Provenance.signature.type (token)
provenance.signature?.expand((e) => e.type ?? <Coding>[]);
 // Provenance.target (token)
provenance.target;
  final questionnaire = Questionnaire.empty();
 // Questionnaire.item.code (string)
questionnaire.item?.expand((e) => e.code ?? <Coding>[]);
 // Questionnaire.useContext.code (string)
questionnaire.useContext?.map((e) => e.code);
 // Questionnaire.date (string)
questionnaire.date;
 // Questionnaire.item.definition (string)
questionnaire.item?.map((e) => e.definition);
 // Questionnaire.description (token)
questionnaire.description;
 // Questionnaire.effectivePeriod (token)
questionnaire.effectivePeriod;
 // Questionnaire.identifier (token)
questionnaire.identifier;
 // Questionnaire.jurisdiction (token)
questionnaire.jurisdiction;
 // Questionnaire.name (token)
questionnaire.name;
 // Questionnaire.publisher (date)
questionnaire.publisher;
 // Questionnaire.status (token)
questionnaire.status;
 // Questionnaire.subjectType (token)
questionnaire.subjectType;
 // Questionnaire.title (reference)
questionnaire.title;
 // Questionnaire.url (reference)
questionnaire.url;
 // Questionnaire.version (reference)
questionnaire.version;
 // Questionnaire.useContext (token)
questionnaire.useContext;
 // Questionnaire.useContext (date)
questionnaire.useContext;
  final questionnaireResponse = QuestionnaireResponse.empty();
 // QuestionnaireResponse.author (string)
questionnaireResponse.author;
 // QuestionnaireResponse.authored (token)
questionnaireResponse.authored;
 // QuestionnaireResponse.basedOn (token)
questionnaireResponse.basedOn;
 // QuestionnaireResponse.encounter (reference)
questionnaireResponse.encounter;
 // QuestionnaireResponse.identifier (reference)
questionnaireResponse.identifier;
 // QuestionnaireResponse.partOf (reference)
questionnaireResponse.partOf;
 // QuestionnaireResponse.subject.where(resolve() is Patient) (token)
questionnaireResponse.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // QuestionnaireResponse.questionnaire (token)
questionnaireResponse.questionnaire;
 // QuestionnaireResponse.source (reference)
questionnaireResponse.source;
 // QuestionnaireResponse.status (string)
questionnaireResponse.status;
 // QuestionnaireResponse.subject (reference)
questionnaireResponse.subject;
  final regulatedAuthorization = RegulatedAuthorization.empty();
 // RegulatedAuthorization.case.identifier (reference)
regulatedAuthorization.case_?.identifier;
 // RegulatedAuthorization.case.type (reference)
regulatedAuthorization.case_?.type;
 // RegulatedAuthorization.holder (reference)
regulatedAuthorization.holder;
 // RegulatedAuthorization.identifier (reference)
regulatedAuthorization.identifier;
 // RegulatedAuthorization.region (token)
regulatedAuthorization.region;
 // RegulatedAuthorization.status (date)
regulatedAuthorization.status;
 // RegulatedAuthorization.subject (reference)
regulatedAuthorization.subject;
  final relatedPerson = RelatedPerson.empty();
 // RelatedPerson.address (reference)
relatedPerson.address;
 // RelatedPerson.address.city (reference)
relatedPerson.address?.map((e) => e.city);
 // RelatedPerson.address.country (reference)
relatedPerson.address?.map((e) => e.country);
 // RelatedPerson.address.postalCode (string)
relatedPerson.address?.map((e) => e.postalCode);
 // RelatedPerson.address.state (date)
relatedPerson.address?.map((e) => e.state);
 // RelatedPerson.address.use (token)
relatedPerson.address?.map((e) => e.use);
 // RelatedPerson.birthDate (token)
relatedPerson.birthDate;
 // RelatedPerson.telecom.where(system='email') (string)
relatedPerson.telecom?.where((e) => e.system?.value.toString() == 'email');
 // RelatedPerson.gender (reference)
relatedPerson.gender;
 // RelatedPerson.telecom.where(system='phone') (string)
relatedPerson.telecom?.where((e) => e.system?.value.toString() == 'phone');
 // RelatedPerson.name (token)
relatedPerson.name;
 // RelatedPerson.telecom (reference)
relatedPerson.telecom;
 // RelatedPerson.active (string)
relatedPerson.active;
 // RelatedPerson.identifier (token)
relatedPerson.identifier;
 // RelatedPerson.name (token)
relatedPerson.name;
 // RelatedPerson.patient (uri)
relatedPerson.patient;
 // RelatedPerson.relationship (token)
relatedPerson.relationship;
  final requestGroup = RequestGroup.empty();
 // RequestGroup.author (composite)
requestGroup.author;
 // RequestGroup.authoredOn (composite)
requestGroup.authoredOn;
 // RequestGroup.code (token)
requestGroup.code;
 // RequestGroup.encounter (token)
requestGroup.encounter;
 // RequestGroup.groupIdentifier (token)
requestGroup.groupIdentifier;
 // RequestGroup.identifier (string)
requestGroup.identifier;
 // RequestGroup.instantiatesCanonical (token)
requestGroup.instantiatesCanonical;
 // RequestGroup.instantiatesUri (date)
requestGroup.instantiatesUri;
 // RequestGroup.intent (reference)
requestGroup.intent;
 // RequestGroup.action.participant (token)
requestGroup.action?.expand((e) => e.participant ?? <Reference>[]);
 // RequestGroup.subject.where(resolve() is Patient) (reference)
requestGroup.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // RequestGroup.priority (reference)
requestGroup.priority;
 // RequestGroup.status (reference)
requestGroup.status;
 // RequestGroup.subject (token)
requestGroup.subject;
  final researchDefinition = ResearchDefinition.empty();
 // ResearchDefinition.relatedArtifact.where(type='composed-of').resource (reference)
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // ResearchDefinition.useContext.code (token)
researchDefinition.useContext?.map((e) => e.code);
 // ResearchDefinition.date (reference)
researchDefinition.date;
 // ResearchDefinition.relatedArtifact.where(type='depends-on').resource (token)
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // ResearchDefinition.library (reference)
researchDefinition.library_;
 // ResearchDefinition.relatedArtifact.where(type='derived-from').resource (uri)
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // ResearchDefinition.description (reference)
researchDefinition.description;
 // ResearchDefinition.effectivePeriod (reference)
researchDefinition.effectivePeriod;
 // ResearchDefinition.identifier (reference)
researchDefinition.identifier;
 // ResearchDefinition.jurisdiction (token)
researchDefinition.jurisdiction;
 // ResearchDefinition.name (reference)
researchDefinition.name;
 // ResearchDefinition.relatedArtifact.where(type='predecessor').resource (token)
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // ResearchDefinition.publisher (reference)
researchDefinition.publisher;
 // ResearchDefinition.status (reference)
researchDefinition.status;
 // ResearchDefinition.relatedArtifact.where(type='successor').resource (token)
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // ResearchDefinition.title (token)
researchDefinition.title;
 // ResearchDefinition.topic (reference)
researchDefinition.topic;
 // ResearchDefinition.url (reference)
researchDefinition.url;
 // ResearchDefinition.version (reference)
researchDefinition.version;
 // ResearchDefinition.useContext (date)
researchDefinition.useContext;
 // ResearchDefinition.useContext (token)
researchDefinition.useContext;
  final researchElementDefinition = ResearchElementDefinition.empty();
 // ResearchElementDefinition.relatedArtifact.where(type='composed-of').resource (reference)
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // ResearchElementDefinition.useContext.code (token)
researchElementDefinition.useContext?.map((e) => e.code);
 // ResearchElementDefinition.date (token)
researchElementDefinition.date;
 // ResearchElementDefinition.relatedArtifact.where(type='depends-on').resource (date)
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // ResearchElementDefinition.library (uri)
researchElementDefinition.library_;
 // ResearchElementDefinition.relatedArtifact.where(type='derived-from').resource (string)
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // ResearchElementDefinition.description (date)
researchElementDefinition.description;
 // ResearchElementDefinition.effectivePeriod (token)
researchElementDefinition.effectivePeriod;
 // ResearchElementDefinition.identifier (token)
researchElementDefinition.identifier;
 // ResearchElementDefinition.jurisdiction (string)
researchElementDefinition.jurisdiction;
 // ResearchElementDefinition.name (string)
researchElementDefinition.name;
 // ResearchElementDefinition.relatedArtifact.where(type='predecessor').resource (token)
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // ResearchElementDefinition.publisher (token)
researchElementDefinition.publisher;
 // ResearchElementDefinition.status (string)
researchElementDefinition.status;
 // ResearchElementDefinition.relatedArtifact.where(type='successor').resource (uri)
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // ResearchElementDefinition.title (token)
researchElementDefinition.title;
 // ResearchElementDefinition.topic (composite)
researchElementDefinition.topic;
 // ResearchElementDefinition.url (composite)
researchElementDefinition.url;
 // ResearchElementDefinition.version (reference)
researchElementDefinition.version;
 // ResearchElementDefinition.useContext (date)
researchElementDefinition.useContext;
 // ResearchElementDefinition.useContext (reference)
researchElementDefinition.useContext;
  final researchStudy = ResearchStudy.empty();
 // ResearchStudy.category (reference)
researchStudy.category;
 // ResearchStudy.period (token)
researchStudy.period;
 // ResearchStudy.focus (reference)
researchStudy.focus;
 // ResearchStudy.identifier (reference)
researchStudy.identifier;
 // ResearchStudy.keyword (reference)
researchStudy.keyword;
 // ResearchStudy.location (reference)
researchStudy.location;
 // ResearchStudy.partOf (token)
researchStudy.partOf;
 // ResearchStudy.principalInvestigator (reference)
researchStudy.principalInvestigator;
 // ResearchStudy.protocol (token)
researchStudy.protocol;
 // ResearchStudy.site (token)
researchStudy.site;
 // ResearchStudy.sponsor (reference)
researchStudy.sponsor;
 // ResearchStudy.status (token)
researchStudy.status;
 // ResearchStudy.title (token)
researchStudy.title;
  final researchSubject = ResearchSubject.empty();
 // ResearchSubject.period (token)
researchSubject.period;
 // ResearchSubject.identifier (reference)
researchSubject.identifier;
 // ResearchSubject.individual (token)
researchSubject.individual;
 // ResearchSubject.individual (token)
researchSubject.individual;
 // ResearchSubject.status (string)
researchSubject.status;
 // ResearchSubject.study (reference)
researchSubject.study;
  final riskAssessment = RiskAssessment.empty();
 // RiskAssessment.identifier (token)
riskAssessment.identifier;
 // RiskAssessment.subject.where(resolve() is Patient) (reference)
riskAssessment.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // RiskAssessment.encounter (date)
riskAssessment.encounter;
 // RiskAssessment.condition (token)
riskAssessment.condition;
 // RiskAssessment.method (reference)
riskAssessment.method;
 // RiskAssessment.performer (token)
riskAssessment.performer;
 // RiskAssessment.prediction.probability (token)
riskAssessment.prediction?.map((e) => e.probabilityX);
 // RiskAssessment.prediction.qualitativeRisk (reference)
riskAssessment.prediction?.map((e) => e.qualitativeRisk);
 // RiskAssessment.subject (uri)
riskAssessment.subject;
  final schedule = Schedule.empty();
 // Schedule.active (token)
schedule.active;
 // Schedule.actor (reference)
schedule.actor;
 // Schedule.planningHorizon (reference)
schedule.planningHorizon;
 // Schedule.identifier (token)
schedule.identifier;
 // Schedule.serviceCategory (token)
schedule.serviceCategory;
 // Schedule.serviceType (reference)
schedule.serviceType;
 // Schedule.specialty (reference)
schedule.specialty;
  final searchParameter = SearchParameter.empty();
 // SearchParameter.useContext.code (token)
searchParameter.useContext?.map((e) => e.code);
 // SearchParameter.date (date)
searchParameter.date;
 // SearchParameter.description (reference)
searchParameter.description;
 // SearchParameter.jurisdiction (reference)
searchParameter.jurisdiction;
 // SearchParameter.name (reference)
searchParameter.name;
 // SearchParameter.publisher (string)
searchParameter.publisher;
 // SearchParameter.status (date)
searchParameter.status;
 // SearchParameter.url (token)
searchParameter.url;
 // SearchParameter.version (token)
searchParameter.version;
 // SearchParameter.useContext (string)
searchParameter.useContext;
 // SearchParameter.useContext (reference)
searchParameter.useContext;
 // SearchParameter.base (string)
searchParameter.base;
 // SearchParameter.code (token)
searchParameter.code;
 // SearchParameter.component.definition (reference)
searchParameter.component?.map((e) => e.definition);
 // SearchParameter.derivedFrom (string)
searchParameter.derivedFrom;
 // SearchParameter.target (token)
searchParameter.target;
 // SearchParameter.type (uri)
searchParameter.type;
  final serviceRequest = ServiceRequest.empty();
 // ServiceRequest.code (token)
serviceRequest.code;
 // ServiceRequest.identifier (composite)
serviceRequest.identifier;
 // ServiceRequest.subject.where(resolve() is Patient) (composite)
serviceRequest.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ServiceRequest.encounter (reference)
serviceRequest.encounter;
 // ServiceRequest.authoredOn (token)
serviceRequest.authoredOn;
 // ServiceRequest.basedOn (date)
serviceRequest.basedOn;
 // ServiceRequest.bodySite (reference)
serviceRequest.bodySite;
 // ServiceRequest.category (reference)
serviceRequest.category;
 // ServiceRequest.instantiatesCanonical (reference)
serviceRequest.instantiatesCanonical;
 // ServiceRequest.instantiatesUri (string)
serviceRequest.instantiatesUri;
 // ServiceRequest.intent (date)
serviceRequest.intent;
 // ServiceRequest.occurrence (token)
serviceRequest.occurrenceX;
 // ServiceRequest.performer (token)
serviceRequest.performer;
 // ServiceRequest.performerType (string)
serviceRequest.performerType;
 // ServiceRequest.priority (reference)
serviceRequest.priority;
 // ServiceRequest.replaces (string)
serviceRequest.replaces;
 // ServiceRequest.requester (token)
serviceRequest.requester;
 // ServiceRequest.requisition (reference)
serviceRequest.requisition;
 // ServiceRequest.specimen (string)
serviceRequest.specimen;
 // ServiceRequest.status (token)
serviceRequest.status;
 // ServiceRequest.subject (uri)
serviceRequest.subject;
  final slot = Slot.empty();
 // Slot.appointmentType (token)
slot.appointmentType;
 // Slot.identifier (composite)
slot.identifier;
 // Slot.schedule (composite)
slot.schedule;
 // Slot.serviceCategory (token)
slot.serviceCategory;
 // Slot.serviceType (date)
slot.serviceType;
 // Slot.specialty (token)
slot.specialty;
 // Slot.start (token)
slot.start;
 // Slot.status (token)
slot.status;
  final specimen = Specimen.empty();
 // Specimen.accessionIdentifier (token)
specimen.accessionIdentifier;
 // Specimen.collection.bodySite (reference)
specimen.collection?.bodySite;
 // Specimen.collection.collected (reference)
specimen.collection?.collectedX;
 // Specimen.collection.collector (reference)
specimen.collection?.collector;
 // Specimen.container.type (reference)
specimen.container?.map((e) => e.type);
 // Specimen.container.identifier (reference)
specimen.container?.expand((e) => e.identifier ?? <Identifier>[]);
 // Specimen.identifier (token)
specimen.identifier;
 // Specimen.parent (string)
specimen.parent;
 // Specimen.subject.where(resolve() is Patient) (date)
specimen.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Specimen.status (token)
specimen.status;
 // Specimen.subject (reference)
specimen.subject;
 // Specimen.type (reference)
specimen.type;
  final specimenDefinition = SpecimenDefinition.empty();
 // SpecimenDefinition.typeTested.container.type (token)
specimenDefinition.typeTested?.map((e) => e.container).map((e) => e?.type);
 // SpecimenDefinition.identifier (reference)
specimenDefinition.identifier;
 // SpecimenDefinition.typeCollected (reference)
specimenDefinition.typeCollected;
  final structureDefinition = StructureDefinition.empty();
 // StructureDefinition.useContext.code (token)
structureDefinition.useContext?.map((e) => e.code);
 // StructureDefinition.date (reference)
structureDefinition.date;
 // StructureDefinition.description (number)
structureDefinition.description;
 // StructureDefinition.jurisdiction (token)
structureDefinition.jurisdiction;
 // StructureDefinition.name (reference)
structureDefinition.name;
 // StructureDefinition.publisher (token)
structureDefinition.publisher;
 // StructureDefinition.status (reference)
structureDefinition.status;
 // StructureDefinition.title (date)
structureDefinition.title;
 // StructureDefinition.url (token)
structureDefinition.url;
 // StructureDefinition.version (token)
structureDefinition.version;
 // StructureDefinition.useContext (token)
structureDefinition.useContext;
 // StructureDefinition.useContext (token)
structureDefinition.useContext;
 // StructureDefinition.identifier (token)
structureDefinition.identifier;
 // StructureDefinition.abstract (token)
structureDefinition.abstract_;
 // StructureDefinition.baseDefinition (reference)
structureDefinition.baseDefinition;
 // StructureDefinition.snapshot.element.base.path (reference)
structureDefinition.snapshot?.element.map((e) => e.base).map((e) => e?.path);
 // StructureDefinition.differential.element.base.path (token)
structureDefinition.differential?.element.map((e) => e.base).map((e) => e?.path);
 // StructureDefinition.derivation (token)
structureDefinition.derivation;
 // StructureDefinition.experimental (date)
structureDefinition.experimental;
 // StructureDefinition.context.type (reference)
structureDefinition.context?.map((e) => e.type);
 // StructureDefinition.keyword (token)
structureDefinition.keyword;
 // StructureDefinition.kind (token)
structureDefinition.kind;
 // StructureDefinition.snapshot.element.path (reference)
structureDefinition.snapshot?.element.map((e) => e.path);
 // StructureDefinition.differential.element.path (uri)
structureDefinition.differential?.element.map((e) => e.path);
 // StructureDefinition.type (token)
structureDefinition.type;
 // StructureDefinition.snapshot.element.binding.valueSet (date)
structureDefinition.snapshot?.element.map((e) => e.binding).map((e) => e?.valueSet);
  final structureMap = StructureMap.empty();
 // StructureMap.useContext.code (reference)
structureMap.useContext?.map((e) => e.code);
 // StructureMap.date (token)
structureMap.date;
 // StructureMap.description (token)
structureMap.description;
 // StructureMap.jurisdiction (reference)
structureMap.jurisdiction;
 // StructureMap.name (reference)
structureMap.name;
 // StructureMap.publisher (token)
structureMap.publisher;
 // StructureMap.status (reference)
structureMap.status;
 // StructureMap.title (token)
structureMap.title;
 // StructureMap.url (reference)
structureMap.url;
 // StructureMap.version (token)
structureMap.version;
 // StructureMap.useContext (token)
structureMap.useContext;
 // StructureMap.useContext (reference)
structureMap.useContext;
 // StructureMap.identifier (token)
structureMap.identifier;
  final subscription = Subscription.empty();
 // Subscription.contact (token)
subscription.contact;
 // Subscription.criteria (token)
subscription.criteria;
 // Subscription.channel.payload (date)
subscription.channel.payload;
 // Subscription.status (token)
subscription.status;
 // Subscription.channel.type (token)
subscription.channel.type;
 // Subscription.channel.endpoint (token)
subscription.channel.endpoint;
  final subscriptionStatus = SubscriptionStatus.empty();
  final subscriptionTopic = SubscriptionTopic.empty();
 // SubscriptionTopic.date (date)
subscriptionTopic.date;
 // SubscriptionTopic.url (reference)
subscriptionTopic.url;
 // SubscriptionTopic.derivedFrom (token)
subscriptionTopic.derivedFrom;
 // SubscriptionTopic.identifier (token)
subscriptionTopic.identifier;
 // SubscriptionTopic.resourceTrigger.resource (token)
subscriptionTopic.resourceTrigger?.map((e) => e.resource);
 // SubscriptionTopic.status (reference)
subscriptionTopic.status;
 // SubscriptionTopic.title (reference)
subscriptionTopic.title;
 // SubscriptionTopic.resourceTrigger.description (token)
subscriptionTopic.resourceTrigger?.map((e) => e.description);
 // SubscriptionTopic.url (reference)
subscriptionTopic.url;
 // SubscriptionTopic.version (token)
subscriptionTopic.version;
  final substance = Substance.empty();
 // Substance.category (token)
substance.category;
 // Substance.code (token)
substance.code;
 // Substance.instance.identifier (token)
substance.instance?.map((e) => e.identifier);
 // Substance.instance.expiry (token)
substance.instance?.map((e) => e.expiry);
 // Substance.identifier (reference)
substance.identifier;
 // Substance.instance.quantity (token)
substance.instance?.map((e) => e.quantity);
 // Substance.status (token)
substance.status;
  final substanceDefinition = SubstanceDefinition.empty();
 // SubstanceDefinition.classification (token)
substanceDefinition.classification;
 // SubstanceDefinition.code.code (token)
substanceDefinition.code?.map((e) => e.code);
 // SubstanceDefinition.domain (token)
substanceDefinition.domain;
 // SubstanceDefinition.identifier (token)
substanceDefinition.identifier;
 // SubstanceDefinition.name.name (token)
substanceDefinition.name?.map((e) => e.name);
  final supplyDelivery = SupplyDelivery.empty();
 // SupplyDelivery.identifier (token)
supplyDelivery.identifier;
 // SupplyDelivery.patient (token)
supplyDelivery.patient;
 // SupplyDelivery.receiver (uri)
supplyDelivery.receiver;
 // SupplyDelivery.status (reference)
supplyDelivery.status;
 // SupplyDelivery.supplier (token)
supplyDelivery.supplier;
  final supplyRequest = SupplyRequest.empty();
 // SupplyRequest.authoredOn (string)
supplyRequest.authoredOn;
 // SupplyRequest.identifier (token)
supplyRequest.identifier;
 // SupplyRequest.category (token)
supplyRequest.category;
 // SupplyRequest.requester (token)
supplyRequest.requester;
 // SupplyRequest.status (uri)
supplyRequest.status;
 // SupplyRequest.deliverTo (date)
supplyRequest.deliverTo;
 // SupplyRequest.supplier (uri)
supplyRequest.supplier;
  final task = Task.empty();
 // Task.authoredOn (uri)
task.authoredOn;
 // Task.basedOn (token)
task.basedOn;
 // Task.businessStatus (uri)
task.businessStatus;
 // Task.code (token)
task.code;
 // Task.encounter (string)
task.encounter;
 // Task.focus (string)
task.focus;
 // Task.groupIdentifier (uri)
task.groupIdentifier;
 // Task.identifier (token)
task.identifier;
 // Task.intent (token)
task.intent;
 // Task.lastModified (token)
task.lastModified;
 // Task.owner (token)
task.owner;
 // Task.partOf (date)
task.partOf;
 // Task.for.where(resolve() is Patient) (token)
task.for_?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Task.performerType (quantity)
task.performerType;
 // Task.executionPeriod (token)
task.executionPeriod;
 // Task.priority (token)
task.priority;
 // Task.requester (token)
task.requester;
 // Task.status (token)
task.status;
 // Task.for (token)
task.for_;
  final terminologyCapabilities = TerminologyCapabilities.empty();
 // TerminologyCapabilities.useContext.code (string)
terminologyCapabilities.useContext?.map((e) => e.code);
 // TerminologyCapabilities.date (reference)
terminologyCapabilities.date;
 // TerminologyCapabilities.description (token)
terminologyCapabilities.description;
 // TerminologyCapabilities.jurisdiction (reference)
terminologyCapabilities.jurisdiction;
 // TerminologyCapabilities.name (token)
terminologyCapabilities.name;
 // TerminologyCapabilities.publisher (reference)
terminologyCapabilities.publisher;
 // TerminologyCapabilities.status (token)
terminologyCapabilities.status;
 // TerminologyCapabilities.title (reference)
terminologyCapabilities.title;
 // TerminologyCapabilities.url (reference)
terminologyCapabilities.url;
 // TerminologyCapabilities.version (date)
terminologyCapabilities.version;
 // TerminologyCapabilities.useContext (reference)
terminologyCapabilities.useContext;
 // TerminologyCapabilities.useContext (token)
terminologyCapabilities.useContext;
  final testReport = TestReport.empty();
 // TestReport.identifier (token)
testReport.identifier;
 // TestReport.issued (reference)
testReport.issued;
 // TestReport.participant.uri (reference)
testReport.participant?.map((e) => e.uri);
 // TestReport.result (token)
testReport.result;
 // TestReport.tester (token)
testReport.tester;
 // TestReport.testScript (token)
testReport.testScript;
  final testScript = TestScript.empty();
 // TestScript.useContext.code (date)
testScript.useContext?.map((e) => e.code);
 // TestScript.date (reference)
testScript.date;
 // TestScript.description (reference)
testScript.description;
 // TestScript.identifier (reference)
testScript.identifier;
 // TestScript.jurisdiction (token)
testScript.jurisdiction;
 // TestScript.name (date)
testScript.name;
 // TestScript.publisher (token)
testScript.publisher;
 // TestScript.status (reference)
testScript.status;
 // TestScript.metadata.capability.description (token)
testScript.metadata?.capability.map((e) => e.description);
 // TestScript.title (reference)
testScript.title;
 // TestScript.url (token)
testScript.url;
 // TestScript.version (date)
testScript.version;
 // TestScript.useContext (uri)
testScript.useContext;
 // TestScript.useContext (token)
testScript.useContext;
  final valueSet = ValueSet.empty();
 // ValueSet.useContext.code (string)
valueSet.useContext?.map((e) => e.code);
 // ValueSet.date (reference)
valueSet.date;
 // ValueSet.description (token)
valueSet.description;
 // ValueSet.jurisdiction (date)
valueSet.jurisdiction;
 // ValueSet.name (string)
valueSet.name;
 // ValueSet.publisher (token)
valueSet.publisher;
 // ValueSet.status (token)
valueSet.status;
 // ValueSet.title (string)
valueSet.title;
 // ValueSet.url (string)
valueSet.url;
 // ValueSet.version (token)
valueSet.version;
 // ValueSet.useContext (string)
valueSet.useContext;
 // ValueSet.useContext (string)
valueSet.useContext;
 // ValueSet.identifier (uri)
valueSet.identifier;
 // ValueSet.expansion.contains.code (token)
valueSet.expansion?.contains?.map((e) => e.code);
 // ValueSet.compose.include.concept.code (composite)
valueSet.compose?.include.expand((e) => e.concept ?? <ValueSetConcept>[]).map((e) => e.code);
 // ValueSet.expansion.identifier (composite)
valueSet.expansion?.identifier;
 // ValueSet.compose.include.system (token)
valueSet.compose?.include.map((e) => e.system);
  final verificationResult = VerificationResult.empty();
 // VerificationResult.target (token)
verificationResult.target;
  final visionPrescription = VisionPrescription.empty();
 // VisionPrescription.identifier (uri)
visionPrescription.identifier;
 // VisionPrescription.patient (uri)
visionPrescription.patient;
 // VisionPrescription.encounter (reference)
visionPrescription.encounter;
 // VisionPrescription.dateWritten (date)
visionPrescription.dateWritten;
 // VisionPrescription.prescriber (reference)
visionPrescription.prescriber;
 // VisionPrescription.status (token)
visionPrescription.status;
  }
