// Generated from FHIR R4 SearchParameter definitions
// ignore_for_file: unnecessary_statements, cascade_invocations
import 'package:fhir_r4/fhir_r4.dart';

extension MakeIterable on FhirBase {
  /// Returns an iterable of the given type.
  Iterable<T> makeIterable<T extends FhirBase>() {
    return <T>[this as T];
  }
}

void main() {
  final account = Account.empty();
 // Account.identifier
account.identifier;
 // Account.name
account.name;
 // Account.owner
account.owner;
 // Account.subject.where(resolve() is Patient)
account.subject?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Account.servicePeriod
account.servicePeriod;
 // Account.status
account.status;
 // Account.subject
account.subject;
 // Account.type
account.type;
  final activityDefinition = ActivityDefinition.empty();
 // ActivityDefinition.relatedArtifact.where(type='composed-of').resource
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // ActivityDefinition.useContext.code
activityDefinition.useContext?.map((e) => e.code);
 // ActivityDefinition.date
activityDefinition.date;
 // ActivityDefinition.relatedArtifact.where(type='depends-on').resource
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // ActivityDefinition.library
activityDefinition.library_;
 // ActivityDefinition.relatedArtifact.where(type='derived-from').resource
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // ActivityDefinition.description
activityDefinition.description;
 // ActivityDefinition.effectivePeriod
activityDefinition.effectivePeriod;
 // ActivityDefinition.identifier
activityDefinition.identifier;
 // ActivityDefinition.jurisdiction
activityDefinition.jurisdiction;
 // ActivityDefinition.name
activityDefinition.name;
 // ActivityDefinition.relatedArtifact.where(type='predecessor').resource
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // ActivityDefinition.publisher
activityDefinition.publisher;
 // ActivityDefinition.status
activityDefinition.status;
 // ActivityDefinition.relatedArtifact.where(type='successor').resource
activityDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // ActivityDefinition.title
activityDefinition.title;
 // ActivityDefinition.topic
activityDefinition.topic;
 // ActivityDefinition.url
activityDefinition.url;
 // ActivityDefinition.version
activityDefinition.version;
 // ActivityDefinition.useContext
activityDefinition.useContext;
 // ActivityDefinition.useContext
activityDefinition.useContext;
  final administrableProductDefinition = AdministrableProductDefinition.empty();
 // AdministrableProductDefinition.device
administrableProductDefinition.device;
 // AdministrableProductDefinition.administrableDoseForm
administrableProductDefinition.administrableDoseForm;
 // AdministrableProductDefinition.formOf
administrableProductDefinition.formOf;
 // AdministrableProductDefinition.identifier
administrableProductDefinition.identifier;
 // AdministrableProductDefinition.ingredient
administrableProductDefinition.ingredient;
 // AdministrableProductDefinition.producedFrom
administrableProductDefinition.producedFrom;
 // AdministrableProductDefinition.routeOfAdministration.code
administrableProductDefinition.routeOfAdministration.map((e) => e.code);
 // AdministrableProductDefinition.routeOfAdministration.targetSpecies.code
administrableProductDefinition.routeOfAdministration.expand((e) => e.targetSpecies ?? []).map((e) => e?.code);
  final adverseEvent = AdverseEvent.empty();
 // AdverseEvent.actuality
adverseEvent.actuality;
 // AdverseEvent.category
adverseEvent.category;
 // AdverseEvent.date
adverseEvent.date;
 // AdverseEvent.event
adverseEvent.event;
 // AdverseEvent.location
adverseEvent.location;
 // AdverseEvent.recorder
adverseEvent.recorder;
 // AdverseEvent.resultingCondition
adverseEvent.resultingCondition;
 // AdverseEvent.seriousness
adverseEvent.seriousness;
 // AdverseEvent.severity
adverseEvent.severity;
 // AdverseEvent.study
adverseEvent.study;
 // AdverseEvent.subject
adverseEvent.subject;
 // AdverseEvent.suspectEntity.instance
adverseEvent.suspectEntity?.map((e) => e.instance);
  final allergyIntolerance = AllergyIntolerance.empty();
 // AllergyIntolerance.asserter
allergyIntolerance.asserter;
 // AllergyIntolerance.category
allergyIntolerance.category;
 // AllergyIntolerance.clinicalStatus
allergyIntolerance.clinicalStatus;
 // AllergyIntolerance.code
allergyIntolerance.code;
 // AllergyIntolerance.reaction.substance
allergyIntolerance.reaction?.map((e) => e.substance);
 // AllergyIntolerance.criticality
allergyIntolerance.criticality;
 // AllergyIntolerance.recordedDate
allergyIntolerance.recordedDate;
 // AllergyIntolerance.identifier
allergyIntolerance.identifier;
 // AllergyIntolerance.lastOccurrence
allergyIntolerance.lastOccurrence;
 // AllergyIntolerance.reaction.manifestation
allergyIntolerance.reaction?.map((e) => e.manifestation);
 // AllergyIntolerance.reaction.onset
allergyIntolerance.reaction?.map((e) => e.onset);
 // AllergyIntolerance.patient
allergyIntolerance.patient;
 // AllergyIntolerance.recorder
allergyIntolerance.recorder;
 // AllergyIntolerance.reaction.exposureRoute
allergyIntolerance.reaction?.map((e) => e.exposureRoute);
 // AllergyIntolerance.reaction.severity
allergyIntolerance.reaction?.map((e) => e.severity);
 // AllergyIntolerance.type
allergyIntolerance.type;
 // AllergyIntolerance.verificationStatus
allergyIntolerance.verificationStatus;
  final appointment = Appointment.empty();
 // Appointment.participant.actor
appointment.participant.map((e) => e.actor);
 // Appointment.appointmentType
appointment.appointmentType;
 // Appointment.basedOn
appointment.basedOn;
 // Appointment.start
appointment.start;
 // Appointment.identifier
appointment.identifier;
 // Appointment.participant.actor.where(resolve() is Location)
appointment.participant.map((e) => e.actor).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Location';
  });
 // Appointment.participant.status
appointment.participant.map((e) => e.status);
 // Appointment.participant.actor.where(resolve() is Patient)
appointment.participant.map((e) => e.actor).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Appointment.participant.actor.where(resolve() is Practitioner)
appointment.participant.map((e) => e.actor).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // Appointment.reasonCode
appointment.reasonCode;
 // Appointment.reasonReference
appointment.reasonReference;
 // Appointment.serviceCategory
appointment.serviceCategory;
 // Appointment.serviceType
appointment.serviceType;
 // Appointment.slot
appointment.slot;
 // Appointment.specialty
appointment.specialty;
 // Appointment.status
appointment.status;
 // Appointment.supportingInformation
appointment.supportingInformation;
  final appointmentResponse = AppointmentResponse.empty();
 // AppointmentResponse.actor
appointmentResponse.actor;
 // AppointmentResponse.appointment
appointmentResponse.appointment;
 // AppointmentResponse.identifier
appointmentResponse.identifier;
 // AppointmentResponse.actor.where(resolve() is Location)
appointmentResponse.actor?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Location';
  });
 // AppointmentResponse.participantStatus
appointmentResponse.participantStatus;
 // AppointmentResponse.actor.where(resolve() is Patient)
appointmentResponse.actor?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // AppointmentResponse.actor.where(resolve() is Practitioner)
appointmentResponse.actor?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
  final auditEvent = AuditEvent.empty();
 // AuditEvent.action
auditEvent.action;
 // AuditEvent.agent.network.address
auditEvent.agent.map((e) => e.network).map((e) => e?.address);
 // AuditEvent.agent.who
auditEvent.agent.map((e) => e.who);
 // AuditEvent.agent.name
auditEvent.agent.map((e) => e.name);
 // AuditEvent.agent.role
auditEvent.agent.map((e) => e.role);
 // AuditEvent.agent.altId
auditEvent.agent.map((e) => e.altId);
 // AuditEvent.recorded
auditEvent.recorded;
 // AuditEvent.entity.what
auditEvent.entity?.map((e) => e.what);
 // AuditEvent.entity.name
auditEvent.entity?.map((e) => e.name);
 // AuditEvent.entity.role
auditEvent.entity?.map((e) => e.role);
 // AuditEvent.entity.type
auditEvent.entity?.map((e) => e.type);
 // AuditEvent.outcome
auditEvent.outcome;
 // AuditEvent.agent.who.where(resolve() is Patient)
auditEvent.agent.map((e) => e.who).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // AuditEvent.entity.what.where(resolve() is Patient)
auditEvent.entity?.map((e) => e.what).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // AuditEvent.agent.policy
auditEvent.agent.map((e) => e.policy);
 // AuditEvent.source.site
auditEvent.source.site;
 // AuditEvent.source.observer
auditEvent.source.observer;
 // AuditEvent.subtype
auditEvent.subtype;
 // AuditEvent.type
auditEvent.type;
  final basic = Basic.empty();
 // Basic.author
basic.author;
 // Basic.code
basic.code;
 // Basic.created
basic.created;
 // Basic.identifier
basic.identifier;
 // Basic.subject.where(resolve() is Patient)
basic.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Basic.subject
basic.subject;
  final binary = Binary.empty();
  final biologicallyDerivedProduct = BiologicallyDerivedProduct.empty();
  final bodyStructure = BodyStructure.empty();
 // BodyStructure.identifier
bodyStructure.identifier;
 // BodyStructure.location
bodyStructure.location;
 // BodyStructure.morphology
bodyStructure.morphology;
 // BodyStructure.patient
bodyStructure.patient;
  final bundle = Bundle.empty();
 // Bundle.entry[0].resource
bundle.entry?.firstOrNull??.resource;
 // Bundle.identifier
bundle.identifier;
 // Bundle.entry[0].resource
bundle.entry?.firstOrNull??.resource;
 // Bundle.timestamp
bundle.timestamp;
 // Bundle.type
bundle.type;
  final capabilityStatement = CapabilityStatement.empty();
 // CapabilityStatement.useContext.code
capabilityStatement.useContext?.map((e) => e.code);
 // CapabilityStatement.date
capabilityStatement.date;
 // CapabilityStatement.description
capabilityStatement.description;
 // CapabilityStatement.version
capabilityStatement.version;
 // CapabilityStatement.format
capabilityStatement.format;
 // CapabilityStatement.implementationGuide
capabilityStatement.implementationGuide;
 // CapabilityStatement.jurisdiction
capabilityStatement.jurisdiction;
 // CapabilityStatement.rest.mode
capabilityStatement.rest?.map((e) => e.mode);
 // CapabilityStatement.name
capabilityStatement.name;
 // CapabilityStatement.publisher
capabilityStatement.publisher;
 // CapabilityStatement.rest.resource.type
capabilityStatement.rest?.map((e) => e.resource).map((e) => e?.type);
 // CapabilityStatement.rest.resource.profile
capabilityStatement.rest?.map((e) => e.resource).map((e) => e?.profile);
 // CapabilityStatement.rest.security.service
capabilityStatement.rest?.map((e) => e.security).map((e) => e?.service);
 // CapabilityStatement.software.name
capabilityStatement.software?.name;
 // CapabilityStatement.status
capabilityStatement.status;
 // CapabilityStatement.rest.resource.supportedProfile
capabilityStatement.rest?.map((e) => e.resource).map((e) => e?.supportedProfile);
 // CapabilityStatement.title
capabilityStatement.title;
 // CapabilityStatement.url
capabilityStatement.url;
 // CapabilityStatement.version
capabilityStatement.version;
 // CapabilityStatement.useContext
capabilityStatement.useContext;
 // CapabilityStatement.useContext
capabilityStatement.useContext;
  final carePlan = CarePlan.empty();
 // CarePlan.period
carePlan.period;
 // CarePlan.identifier
carePlan.identifier;
 // CarePlan.subject.where(resolve() is Patient)
carePlan.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // CarePlan.activity.detail.code
carePlan.activity?.map((e) => e.detail).map((e) => e?.code);
 // CarePlan.activity.detail.scheduled
carePlan.activity?.map((e) => e.detail).map((e) => e?.scheduled);
 // CarePlan.activity.reference
carePlan.activity?.map((e) => e.reference);
 // CarePlan.basedOn
carePlan.basedOn;
 // CarePlan.careTeam
carePlan.careTeam;
 // CarePlan.category
carePlan.category;
 // CarePlan.addresses
carePlan.addresses;
 // CarePlan.encounter
carePlan.encounter;
 // CarePlan.goal
carePlan.goal;
 // CarePlan.instantiatesCanonical
carePlan.instantiatesCanonical;
 // CarePlan.instantiatesUri
carePlan.instantiatesUri;
 // CarePlan.intent
carePlan.intent;
 // CarePlan.partOf
carePlan.partOf;
 // CarePlan.activity.detail.performer
carePlan.activity?.map((e) => e.detail).map((e) => e?.performer);
 // CarePlan.replaces
carePlan.replaces;
 // CarePlan.status
carePlan.status;
 // CarePlan.subject
carePlan.subject;
  final careTeam = CareTeam.empty();
 // CareTeam.period
careTeam.period;
 // CareTeam.identifier
careTeam.identifier;
 // CareTeam.subject.where(resolve() is Patient)
careTeam.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // CareTeam.category
careTeam.category;
 // CareTeam.encounter
careTeam.encounter;
 // CareTeam.participant.member
careTeam.participant?.map((e) => e.member);
 // CareTeam.status
careTeam.status;
 // CareTeam.subject
careTeam.subject;
  final catalogEntry = CatalogEntry.empty();
  final chargeItem = ChargeItem.empty();
 // ChargeItem.account
chargeItem.account;
 // ChargeItem.code
chargeItem.code;
 // ChargeItem.context
chargeItem.context;
 // ChargeItem.enteredDate
chargeItem.enteredDate;
 // ChargeItem.enterer
chargeItem.enterer;
 // ChargeItem.factorOverride
chargeItem.factorOverride;
 // ChargeItem.identifier
chargeItem.identifier;
 // ChargeItem.occurrence
chargeItem.occurrence;
 // ChargeItem.subject.where(resolve() is Patient)
chargeItem.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ChargeItem.performer.actor
chargeItem.performer?.map((e) => e.actor);
 // ChargeItem.performer.function
chargeItem.performer?.map((e) => e.function_);
 // ChargeItem.performingOrganization
chargeItem.performingOrganization;
 // ChargeItem.priceOverride
chargeItem.priceOverride;
 // ChargeItem.quantity
chargeItem.quantity;
 // ChargeItem.requestingOrganization
chargeItem.requestingOrganization;
 // ChargeItem.service
chargeItem.service;
 // ChargeItem.subject
chargeItem.subject;
  final chargeItemDefinition = ChargeItemDefinition.empty();
 // ChargeItemDefinition.useContext.code
chargeItemDefinition.useContext?.map((e) => e.code);
 // ChargeItemDefinition.date
chargeItemDefinition.date;
 // ChargeItemDefinition.description
chargeItemDefinition.description;
 // ChargeItemDefinition.effectivePeriod
chargeItemDefinition.effectivePeriod;
 // ChargeItemDefinition.identifier
chargeItemDefinition.identifier;
 // ChargeItemDefinition.jurisdiction
chargeItemDefinition.jurisdiction;
 // ChargeItemDefinition.publisher
chargeItemDefinition.publisher;
 // ChargeItemDefinition.status
chargeItemDefinition.status;
 // ChargeItemDefinition.title
chargeItemDefinition.title;
 // ChargeItemDefinition.url
chargeItemDefinition.url;
 // ChargeItemDefinition.version
chargeItemDefinition.version;
 // ChargeItemDefinition.useContext
chargeItemDefinition.useContext;
 // ChargeItemDefinition.useContext
chargeItemDefinition.useContext;
  final citation = Citation.empty();
 // Citation.useContext.code
citation.useContext?.map((e) => e.code);
 // Citation.date
citation.date;
 // Citation.description
citation.description;
 // Citation.effectivePeriod
citation.effectivePeriod;
 // Citation.identifier
citation.identifier;
 // Citation.jurisdiction
citation.jurisdiction;
 // Citation.name
citation.name;
 // Citation.publisher
citation.publisher;
 // Citation.status
citation.status;
 // Citation.title
citation.title;
 // Citation.url
citation.url;
 // Citation.version
citation.version;
 // Citation.useContext
citation.useContext;
 // Citation.useContext
citation.useContext;
  final claim = Claim.empty();
 // Claim.careTeam.provider
claim.careTeam?.map((e) => e.provider);
 // Claim.created
claim.created;
 // Claim.item.detail.udi
claim.item?.map((e) => e.detail).map((e) => e?.udi);
 // Claim.item.encounter
claim.item?.map((e) => e.encounter);
 // Claim.enterer
claim.enterer;
 // Claim.facility
claim.facility;
 // Claim.identifier
claim.identifier;
 // Claim.insurer
claim.insurer;
 // Claim.item.udi
claim.item?.map((e) => e.udi);
 // Claim.patient
claim.patient;
 // Claim.payee.party
claim.payee?.party;
 // Claim.priority
claim.priority;
 // Claim.procedure.udi
claim.procedure?.map((e) => e.udi);
 // Claim.provider
claim.provider;
 // Claim.status
claim.status;
 // Claim.item.detail.subDetail.udi
claim.item?.map((e) => e.detail).map((e) => e?.subDetail).map((e) => e?.udi);
 // Claim.use
claim.use;
  final claimResponse = ClaimResponse.empty();
 // ClaimResponse.created
claimResponse.created;
 // ClaimResponse.disposition
claimResponse.disposition;
 // ClaimResponse.identifier
claimResponse.identifier;
 // ClaimResponse.insurer
claimResponse.insurer;
 // ClaimResponse.outcome
claimResponse.outcome;
 // ClaimResponse.patient
claimResponse.patient;
 // ClaimResponse.payment.date
claimResponse.payment?.date;
 // ClaimResponse.request
claimResponse.request;
 // ClaimResponse.requestor
claimResponse.requestor;
 // ClaimResponse.status
claimResponse.status;
 // ClaimResponse.use
claimResponse.use;
  final clinicalImpression = ClinicalImpression.empty();
 // ClinicalImpression.date
clinicalImpression.date;
 // ClinicalImpression.subject.where(resolve() is Patient)
clinicalImpression.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ClinicalImpression.assessor
clinicalImpression.assessor;
 // ClinicalImpression.encounter
clinicalImpression.encounter;
 // ClinicalImpression.finding.itemCodeableConcept
clinicalImpression.finding?.map((e) => e.itemCodeableConcept);
 // ClinicalImpression.finding.itemReference
clinicalImpression.finding?.map((e) => e.itemReference);
 // ClinicalImpression.identifier
clinicalImpression.identifier;
 // ClinicalImpression.investigation.item
clinicalImpression.investigation?.map((e) => e.item);
 // ClinicalImpression.previous
clinicalImpression.previous;
 // ClinicalImpression.problem
clinicalImpression.problem;
 // ClinicalImpression.status
clinicalImpression.status;
 // ClinicalImpression.subject
clinicalImpression.subject;
 // ClinicalImpression.supportingInfo
clinicalImpression.supportingInfo;
  final clinicalUseDefinition = ClinicalUseDefinition.empty();
 // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure
clinicalUseDefinition.contraindication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure
clinicalUseDefinition.contraindication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect
clinicalUseDefinition.undesirableEffect?.symptomConditionEffect;
 // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect
clinicalUseDefinition.undesirableEffect?.symptomConditionEffect;
 // ClinicalUseDefinition.identifier
clinicalUseDefinition.identifier;
 // ClinicalUseDefinition.indication.diseaseSymptomProcedure
clinicalUseDefinition.indication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.indication.diseaseSymptomProcedure
clinicalUseDefinition.indication?.diseaseSymptomProcedure;
 // ClinicalUseDefinition.interaction.type
clinicalUseDefinition.interaction?.type;
 // ClinicalUseDefinition.subject.where(resolve() is MedicinalProductDefinition)
clinicalUseDefinition.subject?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'MedicinalProductDefinition';
  });
 // ClinicalUseDefinition.subject
clinicalUseDefinition.subject;
 // ClinicalUseDefinition.type
clinicalUseDefinition.type;
  final codeSystem = CodeSystem.empty();
 // CodeSystem.useContext.code
codeSystem.useContext?.map((e) => e.code);
 // CodeSystem.date
codeSystem.date;
 // CodeSystem.description
codeSystem.description;
 // CodeSystem.jurisdiction
codeSystem.jurisdiction;
 // CodeSystem.name
codeSystem.name;
 // CodeSystem.publisher
codeSystem.publisher;
 // CodeSystem.status
codeSystem.status;
 // CodeSystem.title
codeSystem.title;
 // CodeSystem.url
codeSystem.url;
 // CodeSystem.version
codeSystem.version;
 // CodeSystem.useContext
codeSystem.useContext;
 // CodeSystem.useContext
codeSystem.useContext;
 // CodeSystem.concept.code
codeSystem.concept?.map((e) => e.code);
 // CodeSystem.content
codeSystem.content;
 // CodeSystem.identifier
codeSystem.identifier;
 // CodeSystem.concept.designation.language
codeSystem.concept?.map((e) => e.designation).map((e) => e?.language);
 // CodeSystem.supplements
codeSystem.supplements;
 // CodeSystem.url
codeSystem.url;
  final communication = Communication.empty();
 // Communication.basedOn
communication.basedOn;
 // Communication.category
communication.category;
 // Communication.encounter
communication.encounter;
 // Communication.identifier
communication.identifier;
 // Communication.instantiatesCanonical
communication.instantiatesCanonical;
 // Communication.instantiatesUri
communication.instantiatesUri;
 // Communication.medium
communication.medium;
 // Communication.partOf
communication.partOf;
 // Communication.subject.where(resolve() is Patient)
communication.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Communication.received
communication.received;
 // Communication.recipient
communication.recipient;
 // Communication.sender
communication.sender;
 // Communication.sent
communication.sent;
 // Communication.status
communication.status;
 // Communication.subject
communication.subject;
  final communicationRequest = CommunicationRequest.empty();
 // CommunicationRequest.authoredOn
communicationRequest.authoredOn;
 // CommunicationRequest.basedOn
communicationRequest.basedOn;
 // CommunicationRequest.category
communicationRequest.category;
 // CommunicationRequest.encounter
communicationRequest.encounter;
 // CommunicationRequest.groupIdentifier
communicationRequest.groupIdentifier;
 // CommunicationRequest.identifier
communicationRequest.identifier;
 // CommunicationRequest.medium
communicationRequest.medium;
 // CommunicationRequest.subject.where(resolve() is Patient)
communicationRequest.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // CommunicationRequest.priority
communicationRequest.priority;
 // CommunicationRequest.recipient
communicationRequest.recipient;
 // CommunicationRequest.replaces
communicationRequest.replaces;
 // CommunicationRequest.requester
communicationRequest.requester;
 // CommunicationRequest.sender
communicationRequest.sender;
 // CommunicationRequest.status
communicationRequest.status;
 // CommunicationRequest.subject
communicationRequest.subject;
  final compartmentDefinition = CompartmentDefinition.empty();
 // CompartmentDefinition.useContext.code
compartmentDefinition.useContext?.map((e) => e.code);
 // CompartmentDefinition.date
compartmentDefinition.date;
 // CompartmentDefinition.description
compartmentDefinition.description;
 // CompartmentDefinition.name
compartmentDefinition.name;
 // CompartmentDefinition.publisher
compartmentDefinition.publisher;
 // CompartmentDefinition.status
compartmentDefinition.status;
 // CompartmentDefinition.url
compartmentDefinition.url;
 // CompartmentDefinition.version
compartmentDefinition.version;
 // CompartmentDefinition.useContext
compartmentDefinition.useContext;
 // CompartmentDefinition.useContext
compartmentDefinition.useContext;
 // CompartmentDefinition.code
compartmentDefinition.code;
 // CompartmentDefinition.resource.code
compartmentDefinition.resource?.map((e) => e.code);
  final composition = Composition.empty();
 // Composition.date
composition.date;
 // Composition.identifier
composition.identifier;
 // Composition.subject.where(resolve() is Patient)
composition.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Composition.type
composition.type;
 // Composition.attester.party
composition.attester?.map((e) => e.party);
 // Composition.author
composition.author;
 // Composition.category
composition.category;
 // Composition.confidentiality
composition.confidentiality;
 // Composition.event.code
composition.event?.map((e) => e.code);
 // Composition.encounter
composition.encounter;
 // Composition.section.entry
composition.section?.map((e) => e.entry);
 // Composition.event.period
composition.event?.map((e) => e.period);
 // Composition.section.code
composition.section?.map((e) => e.code);
 // Composition.status
composition.status;
 // Composition.subject
composition.subject;
 // Composition.title
composition.title;
  final conceptMap = ConceptMap.empty();
 // ConceptMap.useContext.code
conceptMap.useContext?.map((e) => e.code);
 // ConceptMap.date
conceptMap.date;
 // ConceptMap.description
conceptMap.description;
 // ConceptMap.jurisdiction
conceptMap.jurisdiction;
 // ConceptMap.name
conceptMap.name;
 // ConceptMap.publisher
conceptMap.publisher;
 // ConceptMap.status
conceptMap.status;
 // ConceptMap.title
conceptMap.title;
 // ConceptMap.url
conceptMap.url;
 // ConceptMap.version
conceptMap.version;
 // ConceptMap.useContext
conceptMap.useContext;
 // ConceptMap.useContext
conceptMap.useContext;
 // ConceptMap.identifier
conceptMap.identifier;
 // ConceptMap.group.element.target.dependsOn.property
conceptMap.group?.map((e) => e.element).map((e) => e.target).map((e) => e?.dependsOn).map((e) => e?.property);
 // ConceptMap.group.unmapped.url
conceptMap.group?.map((e) => e.unmapped).map((e) => e?.url);
 // ConceptMap.group.element.target.product.property
conceptMap.group?.map((e) => e.element).map((e) => e.target).map((e) => e?.product).map((e) => e?.property);
 // ConceptMap.group.element.code
conceptMap.group?.map((e) => e.element).map((e) => e.code);
 // ConceptMap.group.source
conceptMap.group?.map((e) => e.source);
 // ConceptMap.group.element.target.code
conceptMap.group?.map((e) => e.element).map((e) => e.target).map((e) => e?.code);
 // ConceptMap.group.target
conceptMap.group?.map((e) => e.target);
  final condition = Condition.empty();
 // Condition.code
condition.code;
 // Condition.identifier
condition.identifier;
 // Condition.subject.where(resolve() is Patient)
condition.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Condition.abatement.as(Age)
condition.abatement?.as(Age);
 // Condition.abatement.as(Range)
condition.abatement?.as(Range);
 // Condition.abatement.as(dateTime)
condition.abatement?.as(dateTime);
 // Condition.abatement.as(Period)
condition.abatement?.as(Period);
 // Condition.abatement.as(string)
condition.abatement?.as(string);
 // Condition.asserter
condition.asserter;
 // Condition.bodySite
condition.bodySite;
 // Condition.category
condition.category;
 // Condition.clinicalStatus
condition.clinicalStatus;
 // Condition.encounter
condition.encounter;
 // Condition.evidence.code
condition.evidence?.map((e) => e.code);
 // Condition.evidence.detail
condition.evidence?.map((e) => e.detail);
 // Condition.onset.as(Age)
condition.onset?.as(Age);
 // Condition.onset.as(Range)
condition.onset?.as(Range);
 // Condition.onset.as(dateTime)
condition.onset?.as(dateTime);
 // Condition.onset.as(Period)
condition.onset?.as(Period);
 // Condition.onset.as(string)
condition.onset?.as(string);
 // Condition.recordedDate
condition.recordedDate;
 // Condition.severity
condition.severity;
 // Condition.stage.summary
condition.stage?.map((e) => e.summary);
 // Condition.subject
condition.subject;
 // Condition.verificationStatus
condition.verificationStatus;
  final consent = Consent.empty();
 // Consent.dateTime
consent.dateTime;
 // Consent.identifier
consent.identifier;
 // Consent.patient
consent.patient;
 // Consent.provision.action
consent.provision?.action;
 // Consent.provision.actor.reference
consent.provision?.actor?.map((e) => e.reference);
 // Consent.category
consent.category;
 // Consent.performer
consent.performer;
 // Consent.provision.data.reference
consent.provision?.data?.map((e) => e.reference);
 // Consent.organization
consent.organization;
 // Consent.provision.period
consent.provision?.period;
 // Consent.provision.purpose
consent.provision?.purpose;
 // Consent.scope
consent.scope;
 // Consent.provision.securityLabel
consent.provision?.securityLabel;
 // Consent.source
consent.source;
 // Consent.status
consent.status;
  final contract = Contract.empty();
 // Contract.authority
contract.authority;
 // Contract.domain
contract.domain;
 // Contract.identifier
contract.identifier;
 // Contract.instantiatesUri
contract.instantiatesUri;
 // Contract.issued
contract.issued;
 // Contract.subject.where(resolve() is Patient)
contract.subject?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Contract.signer.party
contract.signer?.map((e) => e.party);
 // Contract.status
contract.status;
 // Contract.subject
contract.subject;
 // Contract.url
contract.url;
  final coverage = Coverage.empty();
 // Coverage.beneficiary
coverage.beneficiary;
 // Coverage.class.type
coverage.class_?.map((e) => e.type);
 // Coverage.class.value
coverage.class_?.map((e) => e.value);
 // Coverage.dependent
coverage.dependent;
 // Coverage.identifier
coverage.identifier;
 // Coverage.beneficiary
coverage.beneficiary;
 // Coverage.payor
coverage.payor;
 // Coverage.policyHolder
coverage.policyHolder;
 // Coverage.status
coverage.status;
 // Coverage.subscriber
coverage.subscriber;
 // Coverage.type
coverage.type;
  final coverageEligibilityRequest = CoverageEligibilityRequest.empty();
 // CoverageEligibilityRequest.created
coverageEligibilityRequest.created;
 // CoverageEligibilityRequest.enterer
coverageEligibilityRequest.enterer;
 // CoverageEligibilityRequest.facility
coverageEligibilityRequest.facility;
 // CoverageEligibilityRequest.identifier
coverageEligibilityRequest.identifier;
 // CoverageEligibilityRequest.patient
coverageEligibilityRequest.patient;
 // CoverageEligibilityRequest.provider
coverageEligibilityRequest.provider;
 // CoverageEligibilityRequest.status
coverageEligibilityRequest.status;
  final coverageEligibilityResponse = CoverageEligibilityResponse.empty();
 // CoverageEligibilityResponse.created
coverageEligibilityResponse.created;
 // CoverageEligibilityResponse.disposition
coverageEligibilityResponse.disposition;
 // CoverageEligibilityResponse.identifier
coverageEligibilityResponse.identifier;
 // CoverageEligibilityResponse.insurer
coverageEligibilityResponse.insurer;
 // CoverageEligibilityResponse.outcome
coverageEligibilityResponse.outcome;
 // CoverageEligibilityResponse.patient
coverageEligibilityResponse.patient;
 // CoverageEligibilityResponse.request
coverageEligibilityResponse.request;
 // CoverageEligibilityResponse.requestor
coverageEligibilityResponse.requestor;
 // CoverageEligibilityResponse.status
coverageEligibilityResponse.status;
  final detectedIssue = DetectedIssue.empty();
 // DetectedIssue.identifier
detectedIssue.identifier;
 // DetectedIssue.patient
detectedIssue.patient;
 // DetectedIssue.author
detectedIssue.author;
 // DetectedIssue.code
detectedIssue.code;
 // DetectedIssue.identified
detectedIssue.identified;
 // DetectedIssue.implicated
detectedIssue.implicated;
  final device = Device.empty();
 // Device.deviceName.name
device.deviceName?.map((e) => e.name);
 // Device.type.coding.display
device.type?.coding?.map((e) => e.display);
 // Device.type.text
device.type?.text;
 // Device.identifier
device.identifier;
 // Device.location
device.location;
 // Device.manufacturer
device.manufacturer;
 // Device.modelNumber
device.modelNumber;
 // Device.owner
device.owner;
 // Device.patient
device.patient;
 // Device.status
device.status;
 // Device.type
device.type;
 // Device.udiCarrier.carrierHRF
device.udiCarrier?.map((e) => e.carrierHRF);
 // Device.udiCarrier.deviceIdentifier
device.udiCarrier?.map((e) => e.deviceIdentifier);
 // Device.url
device.url;
  final deviceDefinition = DeviceDefinition.empty();
 // DeviceDefinition.identifier
deviceDefinition.identifier;
 // DeviceDefinition.parentDevice
deviceDefinition.parentDevice;
 // DeviceDefinition.type
deviceDefinition.type;
  final deviceMetric = DeviceMetric.empty();
 // DeviceMetric.category
deviceMetric.category;
 // DeviceMetric.identifier
deviceMetric.identifier;
 // DeviceMetric.parent
deviceMetric.parent;
 // DeviceMetric.source
deviceMetric.source;
 // DeviceMetric.type
deviceMetric.type;
  final deviceRequest = DeviceRequest.empty();
 // DeviceRequest.identifier
deviceRequest.identifier;
 // DeviceRequest.subject.where(resolve() is Patient)
deviceRequest.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DeviceRequest.encounter
deviceRequest.encounter;
 // DeviceRequest.authoredOn
deviceRequest.authoredOn;
 // DeviceRequest.basedOn
deviceRequest.basedOn;
 // DeviceRequest.groupIdentifier
deviceRequest.groupIdentifier;
 // DeviceRequest.instantiatesCanonical
deviceRequest.instantiatesCanonical;
 // DeviceRequest.instantiatesUri
deviceRequest.instantiatesUri;
 // DeviceRequest.insurance
deviceRequest.insurance;
 // DeviceRequest.intent
deviceRequest.intent;
 // DeviceRequest.performer
deviceRequest.performer;
 // DeviceRequest.priorRequest
deviceRequest.priorRequest;
 // DeviceRequest.requester
deviceRequest.requester;
 // DeviceRequest.status
deviceRequest.status;
 // DeviceRequest.subject
deviceRequest.subject;
  final deviceUseStatement = DeviceUseStatement.empty();
 // DeviceUseStatement.subject.where(resolve() is Patient)
deviceUseStatement.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DeviceUseStatement.device
deviceUseStatement.device;
 // DeviceUseStatement.identifier
deviceUseStatement.identifier;
 // DeviceUseStatement.subject
deviceUseStatement.subject;
  final diagnosticReport = DiagnosticReport.empty();
 // DiagnosticReport.code
diagnosticReport.code;
 // DiagnosticReport.effective
diagnosticReport.effective;
 // DiagnosticReport.identifier
diagnosticReport.identifier;
 // DiagnosticReport.subject.where(resolve() is Patient)
diagnosticReport.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DiagnosticReport.encounter
diagnosticReport.encounter;
 // DiagnosticReport.basedOn
diagnosticReport.basedOn;
 // DiagnosticReport.category
diagnosticReport.category;
 // DiagnosticReport.conclusionCode
diagnosticReport.conclusionCode;
 // DiagnosticReport.issued
diagnosticReport.issued;
 // DiagnosticReport.media.link
diagnosticReport.media?.map((e) => e.link);
 // DiagnosticReport.performer
diagnosticReport.performer;
 // DiagnosticReport.result
diagnosticReport.result;
 // DiagnosticReport.resultsInterpreter
diagnosticReport.resultsInterpreter;
 // DiagnosticReport.specimen
diagnosticReport.specimen;
 // DiagnosticReport.status
diagnosticReport.status;
 // DiagnosticReport.subject
diagnosticReport.subject;
  final documentManifest = DocumentManifest.empty();
 // DocumentManifest.masterIdentifier
documentManifest.masterIdentifier;
 // DocumentManifest.identifier
documentManifest.identifier;
 // DocumentManifest.subject.where(resolve() is Patient)
documentManifest.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DocumentManifest.type
documentManifest.type;
 // DocumentManifest.author
documentManifest.author;
 // DocumentManifest.created
documentManifest.created;
 // DocumentManifest.description
documentManifest.description;
 // DocumentManifest.content
documentManifest.content;
 // DocumentManifest.recipient
documentManifest.recipient;
 // DocumentManifest.related.identifier
documentManifest.related?.map((e) => e.identifier);
 // DocumentManifest.related.ref
documentManifest.related?.map((e) => e.ref);
 // DocumentManifest.source
documentManifest.source;
 // DocumentManifest.status
documentManifest.status;
 // DocumentManifest.subject
documentManifest.subject;
  final documentReference = DocumentReference.empty();
 // DocumentReference.masterIdentifier
documentReference.masterIdentifier;
 // DocumentReference.identifier
documentReference.identifier;
 // DocumentReference.subject.where(resolve() is Patient)
documentReference.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // DocumentReference.type
documentReference.type;
 // DocumentReference.context.encounter.where(resolve() is Encounter)
documentReference.context?.encounter?.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Encounter';
  });
 // DocumentReference.authenticator
documentReference.authenticator;
 // DocumentReference.author
documentReference.author;
 // DocumentReference.category
documentReference.category;
 // DocumentReference.content.attachment.contentType
documentReference.content.map((e) => e.attachment).map((e) => e.contentType);
 // DocumentReference.custodian
documentReference.custodian;
 // DocumentReference.date
documentReference.date;
 // DocumentReference.description
documentReference.description;
 // DocumentReference.context.event
documentReference.context?.event;
 // DocumentReference.context.facilityType
documentReference.context?.facilityType;
 // DocumentReference.content.format
documentReference.content.map((e) => e.format);
 // DocumentReference.content.attachment.language
documentReference.content.map((e) => e.attachment).map((e) => e.language);
 // DocumentReference.content.attachment.url
documentReference.content.map((e) => e.attachment).map((e) => e.url);
 // DocumentReference.context.period
documentReference.context?.period;
 // DocumentReference.context.related
documentReference.context?.related;
 // DocumentReference.relatesTo.target
documentReference.relatesTo?.map((e) => e.target);
 // DocumentReference.relatesTo.code
documentReference.relatesTo?.map((e) => e.code);
 // DocumentReference.securityLabel
documentReference.securityLabel;
 // DocumentReference.context.practiceSetting
documentReference.context?.practiceSetting;
 // DocumentReference.status
documentReference.status;
 // DocumentReference.subject
documentReference.subject;
 // DocumentReference.relatesTo
documentReference.relatesTo;
  final encounter = Encounter.empty();
 // Encounter.period
encounter.period;
 // Encounter.identifier
encounter.identifier;
 // Encounter.subject.where(resolve() is Patient)
encounter.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Encounter.type
encounter.type;
 // Encounter.account
encounter.account;
 // Encounter.appointment
encounter.appointment;
 // Encounter.basedOn
encounter.basedOn;
 // Encounter.class
encounter.class_;
 // Encounter.diagnosis.condition
encounter.diagnosis?.map((e) => e.condition);
 // Encounter.episodeOfCare
encounter.episodeOfCare;
 // Encounter.length
encounter.length;
 // Encounter.location.location
encounter.location?.map((e) => e.location);
 // Encounter.location.period
encounter.location?.map((e) => e.period);
 // Encounter.partOf
encounter.partOf;
 // Encounter.participant.individual
encounter.participant?.map((e) => e.individual);
 // Encounter.participant.type
encounter.participant?.map((e) => e.type);
 // Encounter.participant.individual.where(resolve() is Practitioner)
encounter.participant?.map((e) => e.individual).where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // Encounter.reasonCode
encounter.reasonCode;
 // Encounter.reasonReference
encounter.reasonReference;
 // Encounter.serviceProvider
encounter.serviceProvider;
 // Encounter.hospitalization.specialArrangement
encounter.hospitalization?.specialArrangement;
 // Encounter.status
encounter.status;
 // Encounter.subject
encounter.subject;
  final enrollmentRequest = EnrollmentRequest.empty();
 // EnrollmentRequest.identifier
enrollmentRequest.identifier;
 // EnrollmentRequest.candidate
enrollmentRequest.candidate;
 // EnrollmentRequest.status
enrollmentRequest.status;
 // EnrollmentRequest.candidate
enrollmentRequest.candidate;
  final enrollmentResponse = EnrollmentResponse.empty();
 // EnrollmentResponse.identifier
enrollmentResponse.identifier;
 // EnrollmentResponse.request
enrollmentResponse.request;
 // EnrollmentResponse.status
enrollmentResponse.status;
  final episodeOfCare = EpisodeOfCare.empty();
 // EpisodeOfCare.period
episodeOfCare.period;
 // EpisodeOfCare.identifier
episodeOfCare.identifier;
 // EpisodeOfCare.patient
episodeOfCare.patient;
 // EpisodeOfCare.type
episodeOfCare.type;
 // EpisodeOfCare.careManager.where(resolve() is Practitioner)
episodeOfCare.careManager?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // EpisodeOfCare.diagnosis.condition
episodeOfCare.diagnosis?.map((e) => e.condition);
 // EpisodeOfCare.referralRequest
episodeOfCare.referralRequest;
 // EpisodeOfCare.managingOrganization
episodeOfCare.managingOrganization;
 // EpisodeOfCare.status
episodeOfCare.status;
  final eventDefinition = EventDefinition.empty();
 // EventDefinition.relatedArtifact.where(type='composed-of').resource
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // EventDefinition.useContext.code
eventDefinition.useContext?.map((e) => e.code);
 // EventDefinition.date
eventDefinition.date;
 // EventDefinition.relatedArtifact.where(type='depends-on').resource
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // EventDefinition.relatedArtifact.where(type='derived-from').resource
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // EventDefinition.description
eventDefinition.description;
 // EventDefinition.effectivePeriod
eventDefinition.effectivePeriod;
 // EventDefinition.identifier
eventDefinition.identifier;
 // EventDefinition.jurisdiction
eventDefinition.jurisdiction;
 // EventDefinition.name
eventDefinition.name;
 // EventDefinition.relatedArtifact.where(type='predecessor').resource
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // EventDefinition.publisher
eventDefinition.publisher;
 // EventDefinition.status
eventDefinition.status;
 // EventDefinition.relatedArtifact.where(type='successor').resource
eventDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // EventDefinition.title
eventDefinition.title;
 // EventDefinition.topic
eventDefinition.topic;
 // EventDefinition.url
eventDefinition.url;
 // EventDefinition.version
eventDefinition.version;
 // EventDefinition.useContext
eventDefinition.useContext;
 // EventDefinition.useContext
eventDefinition.useContext;
  final evidence = Evidence.empty();
 // Evidence.useContext.code
evidence.useContext?.map((e) => e.code);
 // Evidence.date
evidence.date;
 // Evidence.description
evidence.description;
 // Evidence.identifier
evidence.identifier;
 // Evidence.publisher
evidence.publisher;
 // Evidence.status
evidence.status;
 // Evidence.title
evidence.title;
 // Evidence.url
evidence.url;
 // Evidence.version
evidence.version;
 // Evidence.useContext
evidence.useContext;
 // Evidence.useContext
evidence.useContext;
  final evidenceReport = EvidenceReport.empty();
 // EvidenceReport.useContext.code
evidenceReport.useContext?.map((e) => e.code);
 // EvidenceReport.identifier
evidenceReport.identifier;
 // EvidenceReport.publisher
evidenceReport.publisher;
 // EvidenceReport.status
evidenceReport.status;
 // EvidenceReport.url
evidenceReport.url;
 // EvidenceReport.useContext
evidenceReport.useContext;
 // EvidenceReport.useContext
evidenceReport.useContext;
  final evidenceVariable = EvidenceVariable.empty();
 // EvidenceVariable.useContext.code
evidenceVariable.useContext?.map((e) => e.code);
 // EvidenceVariable.date
evidenceVariable.date;
 // EvidenceVariable.description
evidenceVariable.description;
 // EvidenceVariable.identifier
evidenceVariable.identifier;
 // EvidenceVariable.name
evidenceVariable.name;
 // EvidenceVariable.publisher
evidenceVariable.publisher;
 // EvidenceVariable.status
evidenceVariable.status;
 // EvidenceVariable.title
evidenceVariable.title;
 // EvidenceVariable.url
evidenceVariable.url;
 // EvidenceVariable.version
evidenceVariable.version;
 // EvidenceVariable.useContext
evidenceVariable.useContext;
 // EvidenceVariable.useContext
evidenceVariable.useContext;
  final exampleScenario = ExampleScenario.empty();
 // ExampleScenario.useContext.code
exampleScenario.useContext?.map((e) => e.code);
 // ExampleScenario.date
exampleScenario.date;
 // ExampleScenario.identifier
exampleScenario.identifier;
 // ExampleScenario.jurisdiction
exampleScenario.jurisdiction;
 // ExampleScenario.name
exampleScenario.name;
 // ExampleScenario.publisher
exampleScenario.publisher;
 // ExampleScenario.status
exampleScenario.status;
 // ExampleScenario.url
exampleScenario.url;
 // ExampleScenario.version
exampleScenario.version;
 // ExampleScenario.useContext
exampleScenario.useContext;
 // ExampleScenario.useContext
exampleScenario.useContext;
  final explanationOfBenefit = ExplanationOfBenefit.empty();
 // ExplanationOfBenefit.careTeam.provider
explanationOfBenefit.careTeam?.map((e) => e.provider);
 // ExplanationOfBenefit.claim
explanationOfBenefit.claim;
 // ExplanationOfBenefit.insurance.coverage
explanationOfBenefit.insurance.map((e) => e.coverage);
 // ExplanationOfBenefit.created
explanationOfBenefit.created;
 // ExplanationOfBenefit.item.detail.udi
explanationOfBenefit.item?.map((e) => e.detail).map((e) => e?.udi);
 // ExplanationOfBenefit.disposition
explanationOfBenefit.disposition;
 // ExplanationOfBenefit.item.encounter
explanationOfBenefit.item?.map((e) => e.encounter);
 // ExplanationOfBenefit.enterer
explanationOfBenefit.enterer;
 // ExplanationOfBenefit.facility
explanationOfBenefit.facility;
 // ExplanationOfBenefit.identifier
explanationOfBenefit.identifier;
 // ExplanationOfBenefit.item.udi
explanationOfBenefit.item?.map((e) => e.udi);
 // ExplanationOfBenefit.patient
explanationOfBenefit.patient;
 // ExplanationOfBenefit.payee.party
explanationOfBenefit.payee?.party;
 // ExplanationOfBenefit.procedure.udi
explanationOfBenefit.procedure?.map((e) => e.udi);
 // ExplanationOfBenefit.provider
explanationOfBenefit.provider;
 // ExplanationOfBenefit.status
explanationOfBenefit.status;
 // ExplanationOfBenefit.item.detail.subDetail.udi
explanationOfBenefit.item?.map((e) => e.detail).map((e) => e?.subDetail).map((e) => e?.udi);
  final familyMemberHistory = FamilyMemberHistory.empty();
 // FamilyMemberHistory.condition.code
familyMemberHistory.condition?.map((e) => e.code);
 // FamilyMemberHistory.date
familyMemberHistory.date;
 // FamilyMemberHistory.identifier
familyMemberHistory.identifier;
 // FamilyMemberHistory.patient
familyMemberHistory.patient;
 // FamilyMemberHistory.instantiatesCanonical
familyMemberHistory.instantiatesCanonical;
 // FamilyMemberHistory.instantiatesUri
familyMemberHistory.instantiatesUri;
 // FamilyMemberHistory.relationship
familyMemberHistory.relationship;
 // FamilyMemberHistory.sex
familyMemberHistory.sex;
 // FamilyMemberHistory.status
familyMemberHistory.status;
  final endpoint = Endpoint.empty();
 // Endpoint.connectionType
endpoint?.connectionType;
 // Endpoint.identifier
endpoint?.identifier;
 // Endpoint.name
endpoint?.name;
 // Endpoint.managingOrganization
endpoint?.managingOrganization;
 // Endpoint.payloadType
endpoint?.payloadType;
 // Endpoint.status
endpoint?.status;
  final group = Group.empty();
 // Group.actual
group?.actual;
 // Group.characteristic.code
group?.characteristic?.code;
 // Group.code
group?.code;
 // Group.characteristic.exclude
group?.characteristic?.exclude;
 // Group.identifier
group?.identifier;
 // Group.managingEntity
group?.managingEntity;
 // Group.member.entity
group?.member?.entity;
 // Group.type
group?.type;
 // Group.characteristic
group?.characteristic;
  final list = List.empty();
 // List.code
list.code;
 // List.date
list.date;
 // List.identifier
list.identifier;
 // List.subject.where(resolve() is Patient)
list.subject?.where(resolve() is Patient);
 // List.encounter
list.encounter;
 // List.emptyReason
list.emptyReason;
 // List.entry.item
list.entry?.item;
 // List.note.text
list.note?.text;
 // List.source
list.source;
 // List.status
list.status;
 // List.subject
list.subject;
 // List.title
list.title;
  final flag = Flag.empty();
 // Flag.period
flag.period;
 // Flag.subject.where(resolve() is Patient)
flag.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Flag.encounter
flag.encounter;
 // Flag.author
flag.author;
 // Flag.identifier
flag.identifier;
 // Flag.subject
flag.subject;
  final goal = Goal.empty();
 // Goal.identifier
goal.identifier;
 // Goal.subject.where(resolve() is Patient)
goal.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Goal.achievementStatus
goal.achievementStatus;
 // Goal.category
goal.category;
 // Goal.lifecycleStatus
goal.lifecycleStatus;
 // Goal.subject
goal.subject;
  final graphDefinition = GraphDefinition.empty();
 // GraphDefinition.useContext.code
graphDefinition.useContext?.map((e) => e.code);
 // GraphDefinition.date
graphDefinition.date;
 // GraphDefinition.description
graphDefinition.description;
 // GraphDefinition.jurisdiction
graphDefinition.jurisdiction;
 // GraphDefinition.name
graphDefinition.name;
 // GraphDefinition.publisher
graphDefinition.publisher;
 // GraphDefinition.status
graphDefinition.status;
 // GraphDefinition.url
graphDefinition.url;
 // GraphDefinition.version
graphDefinition.version;
 // GraphDefinition.useContext
graphDefinition.useContext;
 // GraphDefinition.useContext
graphDefinition.useContext;
 // GraphDefinition.start
graphDefinition.start;
  final guidanceResponse = GuidanceResponse.empty();
 // GuidanceResponse.identifier
guidanceResponse.identifier;
 // GuidanceResponse.subject.where(resolve() is Patient)
guidanceResponse.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // GuidanceResponse.requestIdentifier
guidanceResponse.requestIdentifier;
 // GuidanceResponse.subject
guidanceResponse.subject;
  final healthcareService = HealthcareService.empty();
 // HealthcareService.active
healthcareService.active;
 // HealthcareService.characteristic
healthcareService.characteristic;
 // HealthcareService.coverageArea
healthcareService.coverageArea;
 // HealthcareService.endpoint
healthcareService.endpoint;
 // HealthcareService.identifier
healthcareService.identifier;
 // HealthcareService.location
healthcareService.location;
 // HealthcareService.name
healthcareService.name;
 // HealthcareService.providedBy
healthcareService.providedBy;
 // HealthcareService.program
healthcareService.program;
 // HealthcareService.category
healthcareService.category;
 // HealthcareService.type
healthcareService.type;
 // HealthcareService.specialty
healthcareService.specialty;
  final imagingStudy = ImagingStudy.empty();
 // ImagingStudy.identifier
imagingStudy.identifier;
 // ImagingStudy.subject.where(resolve() is Patient)
imagingStudy.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ImagingStudy.basedOn
imagingStudy.basedOn;
 // ImagingStudy.series.bodySite
imagingStudy.series?.map((e) => e.bodySite);
 // ImagingStudy.series.instance.sopClass
imagingStudy.series?.map((e) => e.instance).map((e) => e?.sopClass);
 // ImagingStudy.encounter
imagingStudy.encounter;
 // ImagingStudy.endpoint
imagingStudy.endpoint;
 // ImagingStudy.series.endpoint
imagingStudy.series?.map((e) => e.endpoint);
 // ImagingStudy.series.instance.uid
imagingStudy.series?.map((e) => e.instance).map((e) => e?.uid);
 // ImagingStudy.interpreter
imagingStudy.interpreter;
 // ImagingStudy.series.modality
imagingStudy.series?.map((e) => e.modality);
 // ImagingStudy.series.performer.actor
imagingStudy.series?.map((e) => e.performer).map((e) => e?.actor);
 // ImagingStudy.reasonCode
imagingStudy.reasonCode;
 // ImagingStudy.referrer
imagingStudy.referrer;
 // ImagingStudy.series.uid
imagingStudy.series?.map((e) => e.uid);
 // ImagingStudy.started
imagingStudy.started;
 // ImagingStudy.status
imagingStudy.status;
 // ImagingStudy.subject
imagingStudy.subject;
  final immunization = Immunization.empty();
 // Immunization.identifier
immunization.identifier;
 // Immunization.patient
immunization.patient;
 // Immunization.location
immunization.location;
 // Immunization.lotNumber
immunization.lotNumber;
 // Immunization.manufacturer
immunization.manufacturer;
 // Immunization.performer.actor
immunization.performer?.map((e) => e.actor);
 // Immunization.reaction.detail
immunization.reaction?.map((e) => e.detail);
 // Immunization.reaction.date
immunization.reaction?.map((e) => e.date);
 // Immunization.reasonCode
immunization.reasonCode;
 // Immunization.reasonReference
immunization.reasonReference;
 // Immunization.protocolApplied.series
immunization.protocolApplied?.map((e) => e.series);
 // Immunization.status
immunization.status;
 // Immunization.statusReason
immunization.statusReason;
 // Immunization.protocolApplied.targetDisease
immunization.protocolApplied?.map((e) => e.targetDisease);
 // Immunization.vaccineCode
immunization.vaccineCode;
  final immunizationEvaluation = ImmunizationEvaluation.empty();
 // ImmunizationEvaluation.date
immunizationEvaluation.date;
 // ImmunizationEvaluation.doseStatus
immunizationEvaluation.doseStatus;
 // ImmunizationEvaluation.identifier
immunizationEvaluation.identifier;
 // ImmunizationEvaluation.immunizationEvent
immunizationEvaluation.immunizationEvent;
 // ImmunizationEvaluation.patient
immunizationEvaluation.patient;
 // ImmunizationEvaluation.status
immunizationEvaluation.status;
 // ImmunizationEvaluation.targetDisease
immunizationEvaluation.targetDisease;
  final immunizationRecommendation = ImmunizationRecommendation.empty();
 // ImmunizationRecommendation.date
immunizationRecommendation.date;
 // ImmunizationRecommendation.identifier
immunizationRecommendation.identifier;
 // ImmunizationRecommendation.recommendation.supportingPatientInformation
immunizationRecommendation.recommendation.map((e) => e.supportingPatientInformation);
 // ImmunizationRecommendation.patient
immunizationRecommendation.patient;
 // ImmunizationRecommendation.recommendation.forecastStatus
immunizationRecommendation.recommendation.map((e) => e.forecastStatus);
 // ImmunizationRecommendation.recommendation.supportingImmunization
immunizationRecommendation.recommendation.map((e) => e.supportingImmunization);
 // ImmunizationRecommendation.recommendation.targetDisease
immunizationRecommendation.recommendation.map((e) => e.targetDisease);
 // ImmunizationRecommendation.recommendation.vaccineCode
immunizationRecommendation.recommendation.map((e) => e.vaccineCode);
  final implementationGuide = ImplementationGuide.empty();
 // ImplementationGuide.useContext.code
implementationGuide.useContext?.map((e) => e.code);
 // ImplementationGuide.date
implementationGuide.date;
 // ImplementationGuide.description
implementationGuide.description;
 // ImplementationGuide.jurisdiction
implementationGuide.jurisdiction;
 // ImplementationGuide.name
implementationGuide.name;
 // ImplementationGuide.publisher
implementationGuide.publisher;
 // ImplementationGuide.status
implementationGuide.status;
 // ImplementationGuide.title
implementationGuide.title;
 // ImplementationGuide.url
implementationGuide.url;
 // ImplementationGuide.version
implementationGuide.version;
 // ImplementationGuide.useContext
implementationGuide.useContext;
 // ImplementationGuide.useContext
implementationGuide.useContext;
 // ImplementationGuide.dependsOn.uri
implementationGuide.dependsOn?.map((e) => e.uri);
 // ImplementationGuide.experimental
implementationGuide.experimental;
 // ImplementationGuide.global.profile
implementationGuide.global?.map((e) => e.profile);
 // ImplementationGuide.definition.resource.reference
implementationGuide.definition?.resource.map((e) => e.reference);
  final ingredient = Ingredient.empty();
 // Ingredient.for
ingredient.for_;
 // Ingredient.function
ingredient.function_;
 // Ingredient.identifier
ingredient.identifier;
 // Ingredient.manufacturer
ingredient.manufacturer;
 // Ingredient.role
ingredient.role;
 // Ingredient.substance.code.reference
ingredient.substance.code.reference;
 // Ingredient.substance.code.concept
ingredient.substance.code.concept;
 // Ingredient.substance.code.reference
ingredient.substance.code.reference;
  final insurancePlan = InsurancePlan.empty();
 // InsurancePlan.contact.address
insurancePlan.contact?.map((e) => e.address);
 // InsurancePlan.contact.address.city
insurancePlan.contact?.map((e) => e.address).map((e) => e?.city);
 // InsurancePlan.contact.address.country
insurancePlan.contact?.map((e) => e.address).map((e) => e?.country);
 // InsurancePlan.contact.address.postalCode
insurancePlan.contact?.map((e) => e.address).map((e) => e?.postalCode);
 // InsurancePlan.contact.address.state
insurancePlan.contact?.map((e) => e.address).map((e) => e?.state);
 // InsurancePlan.contact.address.use
insurancePlan.contact?.map((e) => e.address).map((e) => e?.use);
 // InsurancePlan.administeredBy
insurancePlan.administeredBy;
 // InsurancePlan.endpoint
insurancePlan.endpoint;
 // InsurancePlan.identifier
insurancePlan.identifier;
 // InsurancePlan.ownedBy
insurancePlan.ownedBy;
 // InsurancePlan.name
insurancePlan.name;
 // InsurancePlan.status
insurancePlan.status;
 // InsurancePlan.type
insurancePlan.type;
  final invoice = Invoice.empty();
 // Invoice.account
invoice.account;
 // Invoice.date
invoice.date;
 // Invoice.identifier
invoice.identifier;
 // Invoice.issuer
invoice.issuer;
 // Invoice.participant.actor
invoice.participant?.map((e) => e.actor);
 // Invoice.participant.role
invoice.participant?.map((e) => e.role);
 // Invoice.subject.where(resolve() is Patient)
invoice.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Invoice.recipient
invoice.recipient;
 // Invoice.status
invoice.status;
 // Invoice.subject
invoice.subject;
 // Invoice.totalGross
invoice.totalGross;
 // Invoice.totalNet
invoice.totalNet;
 // Invoice.type
invoice.type;
  final library = Library.empty();
 // Library.relatedArtifact.where(type='composed-of').resource
library.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // Library.content.contentType
library.content?.map((e) => e.contentType);
 // Library.useContext.code
library.useContext?.map((e) => e.code);
 // Library.date
library.date;
 // Library.relatedArtifact.where(type='depends-on').resource
library.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // Library.relatedArtifact.where(type='derived-from').resource
library.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // Library.description
library.description;
 // Library.effectivePeriod
library.effectivePeriod;
 // Library.identifier
library.identifier;
 // Library.jurisdiction
library.jurisdiction;
 // Library.name
library.name;
 // Library.relatedArtifact.where(type='predecessor').resource
library.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // Library.publisher
library.publisher;
 // Library.status
library.status;
 // Library.relatedArtifact.where(type='successor').resource
library.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // Library.title
library.title;
 // Library.topic
library.topic;
 // Library.type
library.type;
 // Library.url
library.url;
 // Library.version
library.version;
 // Library.useContext
library.useContext;
 // Library.useContext
library.useContext;
  final linkage = Linkage.empty();
 // Linkage.author
linkage.author;
 // Linkage.item.resource
linkage.item.map((e) => e.resource);
 // Linkage.item.resource
linkage.item.map((e) => e.resource);
  final location = Location.empty();
 // Location.address
location.address;
 // Location.address.city
location.address?.city;
 // Location.address.country
location.address?.country;
 // Location.address.postalCode
location.address?.postalCode;
 // Location.address.state
location.address?.state;
 // Location.address.use
location.address?.use;
 // Location.endpoint
location.endpoint;
 // Location.identifier
location.identifier;
 // Location.name
location.name;
 // Location.alias
location.alias;
 // Location.position
location.position;
 // Location.operationalStatus
location.operationalStatus;
 // Location.managingOrganization
location.managingOrganization;
 // Location.partOf
location.partOf;
 // Location.status
location.status;
 // Location.type
location.type;
  final manufacturedItemDefinition = ManufacturedItemDefinition.empty();
 // ManufacturedItemDefinition.manufacturedDoseForm
manufacturedItemDefinition.manufacturedDoseForm;
 // ManufacturedItemDefinition.identifier
manufacturedItemDefinition.identifier;
 // ManufacturedItemDefinition.ingredient
manufacturedItemDefinition.ingredient;
  final measure = Measure.empty();
 // Measure.relatedArtifact.where(type='composed-of').resource
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // Measure.useContext.code
measure.useContext?.map((e) => e.code);
 // Measure.date
measure.date;
 // Measure.relatedArtifact.where(type='depends-on').resource
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // Measure.library
measure.library_;
 // Measure.relatedArtifact.where(type='derived-from').resource
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // Measure.description
measure.description;
 // Measure.effectivePeriod
measure.effectivePeriod;
 // Measure.identifier
measure.identifier;
 // Measure.jurisdiction
measure.jurisdiction;
 // Measure.name
measure.name;
 // Measure.relatedArtifact.where(type='predecessor').resource
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // Measure.publisher
measure.publisher;
 // Measure.status
measure.status;
 // Measure.relatedArtifact.where(type='successor').resource
measure.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // Measure.title
measure.title;
 // Measure.topic
measure.topic;
 // Measure.url
measure.url;
 // Measure.version
measure.version;
 // Measure.useContext
measure.useContext;
 // Measure.useContext
measure.useContext;
  final measureReport = MeasureReport.empty();
 // MeasureReport.date
measureReport.date;
 // MeasureReport.evaluatedResource
measureReport.evaluatedResource;
 // MeasureReport.identifier
measureReport.identifier;
 // MeasureReport.measure
measureReport.measure;
 // MeasureReport.subject.where(resolve() is Patient)
measureReport.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MeasureReport.period
measureReport.period;
 // MeasureReport.reporter
measureReport.reporter;
 // MeasureReport.status
measureReport.status;
 // MeasureReport.subject
measureReport.subject;
  final media = Media.empty();
 // Media.basedOn
media.basedOn;
 // Media.created
media.created;
 // Media.device
media.device;
 // Media.encounter
media.encounter;
 // Media.identifier
media.identifier;
 // Media.modality
media.modality;
 // Media.operator
media.operator_;
 // Media.subject.where(resolve() is Patient)
media.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Media.bodySite
media.bodySite;
 // Media.status
media.status;
 // Media.subject
media.subject;
 // Media.type
media.type;
 // Media.view
media.view;
  final medication = Medication.empty();
 // Medication.code
medication.code;
 // Medication.batch.expirationDate
medication.batch?.expirationDate;
 // Medication.form
medication.form;
 // Medication.identifier
medication.identifier;
 // Medication.batch.lotNumber
medication.batch?.lotNumber;
 // Medication.manufacturer
medication.manufacturer;
 // Medication.status
medication.status;
  final medicationAdministration = MedicationAdministration.empty();
 // MedicationAdministration.identifier
medicationAdministration.identifier;
 // MedicationAdministration.subject.where(resolve() is Patient)
medicationAdministration.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationAdministration.context
medicationAdministration.context;
 // MedicationAdministration.device
medicationAdministration.device;
 // MedicationAdministration.effective
medicationAdministration.effective;
 // MedicationAdministration.performer.actor
medicationAdministration.performer?.map((e) => e.actor);
 // MedicationAdministration.reasonCode
medicationAdministration.reasonCode;
 // MedicationAdministration.statusReason
medicationAdministration.statusReason;
 // MedicationAdministration.request
medicationAdministration.request;
 // MedicationAdministration.status
medicationAdministration.status;
 // MedicationAdministration.subject
medicationAdministration.subject;
  final medicationDispense = MedicationDispense.empty();
 // MedicationDispense.identifier
medicationDispense.identifier;
 // MedicationDispense.subject.where(resolve() is Patient)
medicationDispense.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationDispense.status
medicationDispense.status;
 // MedicationDispense.context
medicationDispense.context;
 // MedicationDispense.destination
medicationDispense.destination;
 // MedicationDispense.performer.actor
medicationDispense.performer?.map((e) => e.actor);
 // MedicationDispense.authorizingPrescription
medicationDispense.authorizingPrescription;
 // MedicationDispense.receiver
medicationDispense.receiver;
 // MedicationDispense.substitution.responsibleParty
medicationDispense.substitution?.responsibleParty;
 // MedicationDispense.subject
medicationDispense.subject;
 // MedicationDispense.type
medicationDispense.type;
 // MedicationDispense.whenHandedOver
medicationDispense.whenHandedOver;
 // MedicationDispense.whenPrepared
medicationDispense.whenPrepared;
  final medicationKnowledge = MedicationKnowledge.empty();
 // MedicationKnowledge.medicineClassification.classification
medicationKnowledge.medicineClassification?.map((e) => e.classification);
 // MedicationKnowledge.medicineClassification.type
medicationKnowledge.medicineClassification?.map((e) => e.type);
 // MedicationKnowledge.code
medicationKnowledge.code;
 // MedicationKnowledge.doseForm
medicationKnowledge.doseForm;
 // MedicationKnowledge.manufacturer
medicationKnowledge.manufacturer;
 // MedicationKnowledge.monitoringProgram.name
medicationKnowledge.monitoringProgram?.map((e) => e.name);
 // MedicationKnowledge.monitoringProgram.type
medicationKnowledge.monitoringProgram?.map((e) => e.type);
 // MedicationKnowledge.monograph.source
medicationKnowledge.monograph?.map((e) => e.source);
 // MedicationKnowledge.monograph.type
medicationKnowledge.monograph?.map((e) => e.type);
 // MedicationKnowledge.cost.source
medicationKnowledge.cost?.map((e) => e.source);
 // MedicationKnowledge.status
medicationKnowledge.status;
  final medicationRequest = MedicationRequest.empty();
 // MedicationRequest.identifier
medicationRequest.identifier;
 // MedicationRequest.subject.where(resolve() is Patient)
medicationRequest.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationRequest.status
medicationRequest.status;
 // MedicationRequest.authoredOn
medicationRequest.authoredOn;
 // MedicationRequest.category
medicationRequest.category;
 // MedicationRequest.dosageInstruction.timing.event
medicationRequest.dosageInstruction?.map((e) => e.timing).map((e) => e?.event);
 // MedicationRequest.encounter
medicationRequest.encounter;
 // MedicationRequest.dispenseRequest.performer
medicationRequest.dispenseRequest?.performer;
 // MedicationRequest.performer
medicationRequest.performer;
 // MedicationRequest.performerType
medicationRequest.performerType;
 // MedicationRequest.intent
medicationRequest.intent;
 // MedicationRequest.priority
medicationRequest.priority;
 // MedicationRequest.requester
medicationRequest.requester;
 // MedicationRequest.subject
medicationRequest.subject;
  final medicationStatement = MedicationStatement.empty();
 // MedicationStatement.identifier
medicationStatement.identifier;
 // MedicationStatement.subject.where(resolve() is Patient)
medicationStatement.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // MedicationStatement.status
medicationStatement.status;
 // MedicationStatement.category
medicationStatement.category;
 // MedicationStatement.context
medicationStatement.context;
 // MedicationStatement.effective
medicationStatement.effective;
 // MedicationStatement.partOf
medicationStatement.partOf;
 // MedicationStatement.informationSource
medicationStatement.informationSource;
 // MedicationStatement.subject
medicationStatement.subject;
  final medicinalProductDefinition = MedicinalProductDefinition.empty();
 // MedicinalProductDefinition.characteristic.value
medicinalProductDefinition.characteristic?.map((e) => e.value);
 // MedicinalProductDefinition.characteristic.type
medicinalProductDefinition.characteristic?.map((e) => e.type);
 // MedicinalProductDefinition.contact.contact
medicinalProductDefinition.contact?.map((e) => e.contact);
 // MedicinalProductDefinition.domain
medicinalProductDefinition.domain;
 // MedicinalProductDefinition.identifier
medicinalProductDefinition.identifier;
 // MedicinalProductDefinition.ingredient
medicinalProductDefinition.ingredient;
 // MedicinalProductDefinition.masterFile
medicinalProductDefinition.masterFile;
 // MedicinalProductDefinition.name.productName
medicinalProductDefinition.name.map((e) => e.productName);
 // MedicinalProductDefinition.name.countryLanguage.language
medicinalProductDefinition.name.map((e) => e.countryLanguage).map((e) => e?.language);
 // MedicinalProductDefinition.classification
medicinalProductDefinition.classification;
 // MedicinalProductDefinition.status
medicinalProductDefinition.status;
 // MedicinalProductDefinition.type
medicinalProductDefinition.type;
  final messageDefinition = MessageDefinition.empty();
 // MessageDefinition.useContext.code
messageDefinition.useContext?.map((e) => e.code);
 // MessageDefinition.date
messageDefinition.date;
 // MessageDefinition.description
messageDefinition.description;
 // MessageDefinition.jurisdiction
messageDefinition.jurisdiction;
 // MessageDefinition.name
messageDefinition.name;
 // MessageDefinition.publisher
messageDefinition.publisher;
 // MessageDefinition.status
messageDefinition.status;
 // MessageDefinition.title
messageDefinition.title;
 // MessageDefinition.url
messageDefinition.url;
 // MessageDefinition.version
messageDefinition.version;
 // MessageDefinition.useContext
messageDefinition.useContext;
 // MessageDefinition.useContext
messageDefinition.useContext;
 // MessageDefinition.identifier
messageDefinition.identifier;
 // MessageDefinition.category
messageDefinition.category;
 // MessageDefinition.event
messageDefinition.event;
 // MessageDefinition.focus.code
messageDefinition.focus?.map((e) => e.code);
 // MessageDefinition.parent
messageDefinition.parent;
  final messageHeader = MessageHeader.empty();
 // MessageHeader.author
messageHeader.author;
 // MessageHeader.response.code
messageHeader.response?.code;
 // MessageHeader.destination.name
messageHeader.destination?.map((e) => e.name);
 // MessageHeader.destination.endpoint
messageHeader.destination?.map((e) => e.endpoint);
 // MessageHeader.enterer
messageHeader.enterer;
 // MessageHeader.event
messageHeader.event;
 // MessageHeader.focus
messageHeader.focus;
 // MessageHeader.destination.receiver
messageHeader.destination?.map((e) => e.receiver);
 // MessageHeader.response.identifier
messageHeader.response?.identifier;
 // MessageHeader.responsible
messageHeader.responsible;
 // MessageHeader.sender
messageHeader.sender;
 // MessageHeader.source.name
messageHeader.source.name;
 // MessageHeader.source.endpoint
messageHeader.source.endpoint;
 // MessageHeader.destination.target
messageHeader.destination?.map((e) => e.target);
  final molecularSequence = MolecularSequence.empty();
 // MolecularSequence.referenceSeq.chromosome
molecularSequence.referenceSeq?.chromosome;
 // MolecularSequence.identifier
molecularSequence.identifier;
 // MolecularSequence.patient
molecularSequence.patient;
 // MolecularSequence.referenceSeq.referenceSeqId
molecularSequence.referenceSeq?.referenceSeqId;
 // MolecularSequence.type
molecularSequence.type;
 // MolecularSequence.variant.end
molecularSequence.variant?.map((e) => e.end);
 // MolecularSequence.variant.start
molecularSequence.variant?.map((e) => e.start);
 // MolecularSequence.referenceSeq.windowEnd
molecularSequence.referenceSeq?.windowEnd;
 // MolecularSequence.referenceSeq.windowStart
molecularSequence.referenceSeq?.windowStart;
 // MolecularSequence.variant
molecularSequence.variant;
 // MolecularSequence.referenceSeq
molecularSequence.referenceSeq;
 // MolecularSequence.variant
molecularSequence.variant;
 // MolecularSequence.referenceSeq
molecularSequence.referenceSeq;
  final namingSystem = NamingSystem.empty();
 // NamingSystem.useContext.code
namingSystem.useContext?.map((e) => e.code);
 // NamingSystem.date
namingSystem.date;
 // NamingSystem.description
namingSystem.description;
 // NamingSystem.jurisdiction
namingSystem.jurisdiction;
 // NamingSystem.name
namingSystem.name;
 // NamingSystem.publisher
namingSystem.publisher;
 // NamingSystem.status
namingSystem.status;
 // NamingSystem.useContext
namingSystem.useContext;
 // NamingSystem.useContext
namingSystem.useContext;
 // NamingSystem.contact.name
namingSystem.contact?.map((e) => e.name);
 // NamingSystem.uniqueId.type
namingSystem.uniqueId.map((e) => e.type);
 // NamingSystem.kind
namingSystem.kind;
 // NamingSystem.uniqueId.period
namingSystem.uniqueId.map((e) => e.period);
 // NamingSystem.responsible
namingSystem.responsible;
 // NamingSystem.contact.telecom
namingSystem.contact?.map((e) => e.telecom);
 // NamingSystem.type
namingSystem.type;
 // NamingSystem.uniqueId.value
namingSystem.uniqueId.map((e) => e.value);
  final nutritionOrder = NutritionOrder.empty();
 // NutritionOrder.identifier
nutritionOrder.identifier;
 // NutritionOrder.patient
nutritionOrder.patient;
 // NutritionOrder.encounter
nutritionOrder.encounter;
 // NutritionOrder.enteralFormula.additiveType
nutritionOrder.enteralFormula?.additiveType;
 // NutritionOrder.dateTime
nutritionOrder.dateTime;
 // NutritionOrder.enteralFormula.baseFormulaType
nutritionOrder.enteralFormula?.baseFormulaType;
 // NutritionOrder.instantiatesCanonical
nutritionOrder.instantiatesCanonical;
 // NutritionOrder.instantiatesUri
nutritionOrder.instantiatesUri;
 // NutritionOrder.oralDiet.type
nutritionOrder.oralDiet?.type;
 // NutritionOrder.orderer
nutritionOrder.orderer;
 // NutritionOrder.status
nutritionOrder.status;
 // NutritionOrder.supplement.type
nutritionOrder.supplement?.map((e) => e.type);
  final nutritionProduct = NutritionProduct.empty();
 // NutritionProduct.instance.identifier
nutritionProduct.instance?.identifier;
 // NutritionProduct.status
nutritionProduct.status;
  final observation = Observation.empty();
 // Observation.code
observation.code;
 // Observation.effective
observation.effective;
 // Observation.identifier
observation.identifier;
 // Observation.subject.where(resolve() is Patient)
observation.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Observation.encounter
observation.encounter;
 // Observation.basedOn
observation.basedOn;
 // Observation.category
observation.category;
 // Observation.code
observation.code;
 // Observation.component.code
observation.component?.map((e) => e.code);
 // Observation.dataAbsentReason
observation.dataAbsentReason;
 // Observation.component.dataAbsentReason
observation.component?.map((e) => e.dataAbsentReason);
 // Observation.component.code
observation.component?.map((e) => e.code);
 // Observation.component.dataAbsentReason
observation.component?.map((e) => e.dataAbsentReason);
 // Observation.dataAbsentReason
observation.dataAbsentReason;
 // Observation.derivedFrom
observation.derivedFrom;
 // Observation.device
observation.device;
 // Observation.focus
observation.focus;
 // Observation.hasMember
observation.hasMember;
 // Observation.method
observation.method;
 // Observation.partOf
observation.partOf;
 // Observation.performer
observation.performer;
 // Observation.specimen
observation.specimen;
 // Observation.status
observation.status;
 // Observation.subject
observation.subject;
 // Observation
observation;
 // Observation
observation;
 // Observation
observation;
 // Observation
observation;
 // Observation
observation;
 // Observation.component
observation.component;
 // Observation
observation;
 // Observation.component
observation.component;
 // Observation.component
observation.component;
 // Observation.component
observation.component;
  final observationDefinition = ObservationDefinition.empty();
  final operationDefinition = OperationDefinition.empty();
 // OperationDefinition.useContext.code
operationDefinition.useContext?.map((e) => e.code);
 // OperationDefinition.date
operationDefinition.date;
 // OperationDefinition.description
operationDefinition.description;
 // OperationDefinition.jurisdiction
operationDefinition.jurisdiction;
 // OperationDefinition.name
operationDefinition.name;
 // OperationDefinition.publisher
operationDefinition.publisher;
 // OperationDefinition.status
operationDefinition.status;
 // OperationDefinition.title
operationDefinition.title;
 // OperationDefinition.url
operationDefinition.url;
 // OperationDefinition.version
operationDefinition.version;
 // OperationDefinition.useContext
operationDefinition.useContext;
 // OperationDefinition.useContext
operationDefinition.useContext;
 // OperationDefinition.base
operationDefinition.base;
 // OperationDefinition.code
operationDefinition.code;
 // OperationDefinition.inputProfile
operationDefinition.inputProfile;
 // OperationDefinition.instance
operationDefinition.instance;
 // OperationDefinition.kind
operationDefinition.kind;
 // OperationDefinition.outputProfile
operationDefinition.outputProfile;
 // OperationDefinition.system
operationDefinition.system;
 // OperationDefinition.type
operationDefinition.type;
  final operationOutcome = OperationOutcome.empty();
  final organization = Organization.empty();
 // Organization.active
organization.active;
 // Organization.address
organization.address;
 // Organization.address.city
organization.address?.map((e) => e.city);
 // Organization.address.country
organization.address?.map((e) => e.country);
 // Organization.address.postalCode
organization.address?.map((e) => e.postalCode);
 // Organization.address.state
organization.address?.map((e) => e.state);
 // Organization.address.use
organization.address?.map((e) => e.use);
 // Organization.endpoint
organization.endpoint;
 // Organization.identifier
organization.identifier;
 // Organization.name
organization.name;
 // Organization.alias
organization.alias;
 // Organization.partOf
organization.partOf;
 // Organization.name
organization.name;
 // Organization.type
organization.type;
  final organizationAffiliation = OrganizationAffiliation.empty();
 // OrganizationAffiliation.active
organizationAffiliation.active;
 // OrganizationAffiliation.period
organizationAffiliation.period;
 // OrganizationAffiliation.telecom.where(system='email')
organizationAffiliation.telecom?.map((e) => e.where(system='email'));
 // OrganizationAffiliation.endpoint
organizationAffiliation.endpoint;
 // OrganizationAffiliation.identifier
organizationAffiliation.identifier;
 // OrganizationAffiliation.location
organizationAffiliation.location;
 // OrganizationAffiliation.network
organizationAffiliation.network;
 // OrganizationAffiliation.participatingOrganization
organizationAffiliation.participatingOrganization;
 // OrganizationAffiliation.telecom.where(system='phone')
organizationAffiliation.telecom?.map((e) => e.where(system='phone'));
 // OrganizationAffiliation.organization
organizationAffiliation.organization;
 // OrganizationAffiliation.code
organizationAffiliation.code;
 // OrganizationAffiliation.healthcareService
organizationAffiliation.healthcareService;
 // OrganizationAffiliation.specialty
organizationAffiliation.specialty;
 // OrganizationAffiliation.telecom
organizationAffiliation.telecom;
  final packagedProductDefinition = PackagedProductDefinition.empty();
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.identifier
packagedProductDefinition.identifier;
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.name
packagedProductDefinition.name;
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.package.containedItem.item.reference
packagedProductDefinition.package?.containedItem?.map((e) => e.item).map((e) => e.reference);
 // PackagedProductDefinition.packageFor
packagedProductDefinition.packageFor;
 // PackagedProductDefinition.status
packagedProductDefinition.status;
  final parameters = Parameters.empty();
  final patient = Patient.empty();
 // Patient.active
patient.active;
 // Patient.address
patient.address;
 // Patient.address.city
patient.address?.map((e) => e.city);
 // Patient.address.country
patient.address?.map((e) => e.country);
 // Patient.address.postalCode
patient.address?.map((e) => e.postalCode);
 // Patient.address.state
patient.address?.map((e) => e.state);
 // Patient.address.use
patient.address?.map((e) => e.use);
 // Patient.birthDate
patient.birthDate;
 // Patient.deceased.exists() and Patient.deceased != false
patient.deceased?.exists() and Patient.deceased != false;
 // Patient.telecom.where(system='email')
patient.telecom?.map((e) => e.where(system='email'));
 // Patient.name.family
patient.name?.map((e) => e.family);
 // Patient.gender
patient.gender;
 // Patient.generalPractitioner
patient.generalPractitioner;
 // Patient.name.given
patient.name?.map((e) => e.given);
 // Patient.identifier
patient.identifier;
 // Patient.communication.language
patient.communication?.map((e) => e.language);
 // Patient.link.other
patient.link?.map((e) => e.other);
 // Patient.name
patient.name;
 // Patient.managingOrganization
patient.managingOrganization;
 // Patient.telecom.where(system='phone')
patient.telecom?.map((e) => e.where(system='phone'));
 // Patient.name
patient.name;
 // Patient.telecom
patient.telecom;
  final paymentNotice = PaymentNotice.empty();
 // PaymentNotice.created
paymentNotice.created;
 // PaymentNotice.identifier
paymentNotice.identifier;
 // PaymentNotice.paymentStatus
paymentNotice.paymentStatus;
 // PaymentNotice.provider
paymentNotice.provider;
 // PaymentNotice.request
paymentNotice.request;
 // PaymentNotice.response
paymentNotice.response;
 // PaymentNotice.status
paymentNotice.status;
  final paymentReconciliation = PaymentReconciliation.empty();
 // PaymentReconciliation.created
paymentReconciliation.created;
 // PaymentReconciliation.disposition
paymentReconciliation.disposition;
 // PaymentReconciliation.identifier
paymentReconciliation.identifier;
 // PaymentReconciliation.outcome
paymentReconciliation.outcome;
 // PaymentReconciliation.paymentIssuer
paymentReconciliation.paymentIssuer;
 // PaymentReconciliation.request
paymentReconciliation.request;
 // PaymentReconciliation.requestor
paymentReconciliation.requestor;
 // PaymentReconciliation.status
paymentReconciliation.status;
  final person = Person.empty();
 // Person.address
person.address;
 // Person.address.city
person.address?.map((e) => e.city);
 // Person.address.country
person.address?.map((e) => e.country);
 // Person.address.postalCode
person.address?.map((e) => e.postalCode);
 // Person.address.state
person.address?.map((e) => e.state);
 // Person.address.use
person.address?.map((e) => e.use);
 // Person.birthDate
person.birthDate;
 // Person.telecom.where(system='email')
person.telecom?.map((e) => e.where(system='email'));
 // Person.gender
person.gender;
 // Person.telecom.where(system='phone')
person.telecom?.map((e) => e.where(system='phone'));
 // Person.name
person.name;
 // Person.telecom
person.telecom;
 // Person.identifier
person.identifier;
 // Person.link.target
person.link?.map((e) => e.target);
 // Person.name
person.name;
 // Person.managingOrganization
person.managingOrganization;
 // Person.link.target.where(resolve() is Patient)
person.link?.map((e) => e.target).where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Person.link.target.where(resolve() is Practitioner)
person.link?.map((e) => e.target).where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
  });
 // Person.link.target.where(resolve() is RelatedPerson)
person.link?.map((e) => e.target).where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'RelatedPerson';
  });
  final planDefinition = PlanDefinition.empty();
 // PlanDefinition.relatedArtifact.where(type='composed-of').resource
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // PlanDefinition.useContext.code
planDefinition.useContext?.map((e) => e.code);
 // PlanDefinition.date
planDefinition.date;
 // PlanDefinition.action.definition
planDefinition.action?.map((e) => e.definition);
 // PlanDefinition.relatedArtifact.where(type='depends-on').resource
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // PlanDefinition.library
planDefinition.library_;
 // PlanDefinition.relatedArtifact.where(type='derived-from').resource
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // PlanDefinition.description
planDefinition.description;
 // PlanDefinition.effectivePeriod
planDefinition.effectivePeriod;
 // PlanDefinition.identifier
planDefinition.identifier;
 // PlanDefinition.jurisdiction
planDefinition.jurisdiction;
 // PlanDefinition.name
planDefinition.name;
 // PlanDefinition.relatedArtifact.where(type='predecessor').resource
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // PlanDefinition.publisher
planDefinition.publisher;
 // PlanDefinition.status
planDefinition.status;
 // PlanDefinition.relatedArtifact.where(type='successor').resource
planDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // PlanDefinition.title
planDefinition.title;
 // PlanDefinition.topic
planDefinition.topic;
 // PlanDefinition.type
planDefinition.type;
 // PlanDefinition.url
planDefinition.url;
 // PlanDefinition.version
planDefinition.version;
 // PlanDefinition.useContext
planDefinition.useContext;
 // PlanDefinition.useContext
planDefinition.useContext;
  final practitioner = Practitioner.empty();
 // Practitioner.address
practitioner.address;
 // Practitioner.address.city
practitioner.address?.map((e) => e.city);
 // Practitioner.address.country
practitioner.address?.map((e) => e.country);
 // Practitioner.address.postalCode
practitioner.address?.map((e) => e.postalCode);
 // Practitioner.address.state
practitioner.address?.map((e) => e.state);
 // Practitioner.address.use
practitioner.address?.map((e) => e.use);
 // Practitioner.telecom.where(system='email')
practitioner.telecom?.map((e) => e.where(system='email'));
 // Practitioner.name.family
practitioner.name?.map((e) => e.family);
 // Practitioner.gender
practitioner.gender;
 // Practitioner.name.given
practitioner.name?.map((e) => e.given);
 // Practitioner.telecom.where(system='phone')
practitioner.telecom?.map((e) => e.where(system='phone'));
 // Practitioner.name
practitioner.name;
 // Practitioner.telecom
practitioner.telecom;
 // Practitioner.active
practitioner.active;
 // Practitioner.communication
practitioner.communication;
 // Practitioner.identifier
practitioner.identifier;
 // Practitioner.name
practitioner.name;
  final practitionerRole = PractitionerRole.empty();
 // PractitionerRole.telecom.where(system='email')
practitionerRole.telecom?.map((e) => e.where(system='email'));
 // PractitionerRole.telecom.where(system='phone')
practitionerRole.telecom?.map((e) => e.where(system='phone'));
 // PractitionerRole.telecom
practitionerRole.telecom;
 // PractitionerRole.active
practitionerRole.active;
 // PractitionerRole.period
practitionerRole.period;
 // PractitionerRole.endpoint
practitionerRole.endpoint;
 // PractitionerRole.identifier
practitionerRole.identifier;
 // PractitionerRole.location
practitionerRole.location;
 // PractitionerRole.organization
practitionerRole.organization;
 // PractitionerRole.practitioner
practitionerRole.practitioner;
 // PractitionerRole.code
practitionerRole.code;
 // PractitionerRole.healthcareService
practitionerRole.healthcareService;
 // PractitionerRole.specialty
practitionerRole.specialty;
  final procedure = Procedure.empty();
 // Procedure.code
procedure.code;
 // Procedure.performed
procedure.performed;
 // Procedure.identifier
procedure.identifier;
 // Procedure.subject.where(resolve() is Patient)
procedure.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Procedure.encounter
procedure.encounter;
 // Procedure.basedOn
procedure.basedOn;
 // Procedure.category
procedure.category;
 // Procedure.instantiatesCanonical
procedure.instantiatesCanonical;
 // Procedure.instantiatesUri
procedure.instantiatesUri;
 // Procedure.location
procedure.location;
 // Procedure.partOf
procedure.partOf;
 // Procedure.performer.actor
procedure.performer?.map((e) => e.actor);
 // Procedure.reasonCode
procedure.reasonCode;
 // Procedure.reasonReference
procedure.reasonReference;
 // Procedure.status
procedure.status;
 // Procedure.subject
procedure.subject;
  final provenance = Provenance.empty();
 // Provenance.agent.who
provenance.agent.map((e) => e.who);
 // Provenance.agent.role
provenance.agent.map((e) => e.role);
 // Provenance.agent.type
provenance.agent.map((e) => e.type);
 // Provenance.entity.what
provenance.entity?.map((e) => e.what);
 // Provenance.location
provenance.location;
 // Provenance.target.where(resolve() is Patient)
provenance.target.where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Provenance.recorded
provenance.recorded;
 // Provenance.signature.type
provenance.signature?.map((e) => e.type);
 // Provenance.target
provenance.target;
  final questionnaire = Questionnaire.empty();
 // Questionnaire.item.code
questionnaire.item?.map((e) => e.code);
 // Questionnaire.useContext.code
questionnaire.useContext?.map((e) => e.code);
 // Questionnaire.date
questionnaire.date;
 // Questionnaire.item.definition
questionnaire.item?.map((e) => e.definition);
 // Questionnaire.description
questionnaire.description;
 // Questionnaire.effectivePeriod
questionnaire.effectivePeriod;
 // Questionnaire.identifier
questionnaire.identifier;
 // Questionnaire.jurisdiction
questionnaire.jurisdiction;
 // Questionnaire.name
questionnaire.name;
 // Questionnaire.publisher
questionnaire.publisher;
 // Questionnaire.status
questionnaire.status;
 // Questionnaire.subjectType
questionnaire.subjectType;
 // Questionnaire.title
questionnaire.title;
 // Questionnaire.url
questionnaire.url;
 // Questionnaire.version
questionnaire.version;
 // Questionnaire.useContext
questionnaire.useContext;
 // Questionnaire.useContext
questionnaire.useContext;
  final questionnaireResponse = QuestionnaireResponse.empty();
 // QuestionnaireResponse.author
questionnaireResponse.author;
 // QuestionnaireResponse.authored
questionnaireResponse.authored;
 // QuestionnaireResponse.basedOn
questionnaireResponse.basedOn;
 // QuestionnaireResponse.encounter
questionnaireResponse.encounter;
 // QuestionnaireResponse.identifier
questionnaireResponse.identifier;
 // QuestionnaireResponse.partOf
questionnaireResponse.partOf;
 // QuestionnaireResponse.subject.where(resolve() is Patient)
questionnaireResponse.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // QuestionnaireResponse.questionnaire
questionnaireResponse.questionnaire;
 // QuestionnaireResponse.source
questionnaireResponse.source;
 // QuestionnaireResponse.status
questionnaireResponse.status;
 // QuestionnaireResponse.subject
questionnaireResponse.subject;
  final regulatedAuthorization = RegulatedAuthorization.empty();
 // RegulatedAuthorization.case.identifier
regulatedAuthorization.case_?.identifier;
 // RegulatedAuthorization.case.type
regulatedAuthorization.case_?.type;
 // RegulatedAuthorization.holder
regulatedAuthorization.holder;
 // RegulatedAuthorization.identifier
regulatedAuthorization.identifier;
 // RegulatedAuthorization.region
regulatedAuthorization.region;
 // RegulatedAuthorization.status
regulatedAuthorization.status;
 // RegulatedAuthorization.subject
regulatedAuthorization.subject;
  final relatedPerson = RelatedPerson.empty();
 // RelatedPerson.address
relatedPerson.address;
 // RelatedPerson.address.city
relatedPerson.address?.map((e) => e.city);
 // RelatedPerson.address.country
relatedPerson.address?.map((e) => e.country);
 // RelatedPerson.address.postalCode
relatedPerson.address?.map((e) => e.postalCode);
 // RelatedPerson.address.state
relatedPerson.address?.map((e) => e.state);
 // RelatedPerson.address.use
relatedPerson.address?.map((e) => e.use);
 // RelatedPerson.birthDate
relatedPerson.birthDate;
 // RelatedPerson.telecom.where(system='email')
relatedPerson.telecom?.map((e) => e.where(system='email'));
 // RelatedPerson.gender
relatedPerson.gender;
 // RelatedPerson.telecom.where(system='phone')
relatedPerson.telecom?.map((e) => e.where(system='phone'));
 // RelatedPerson.name
relatedPerson.name;
 // RelatedPerson.telecom
relatedPerson.telecom;
 // RelatedPerson.active
relatedPerson.active;
 // RelatedPerson.identifier
relatedPerson.identifier;
 // RelatedPerson.name
relatedPerson.name;
 // RelatedPerson.patient
relatedPerson.patient;
 // RelatedPerson.relationship
relatedPerson.relationship;
  final requestGroup = RequestGroup.empty();
 // RequestGroup.author
requestGroup.author;
 // RequestGroup.authoredOn
requestGroup.authoredOn;
 // RequestGroup.code
requestGroup.code;
 // RequestGroup.encounter
requestGroup.encounter;
 // RequestGroup.groupIdentifier
requestGroup.groupIdentifier;
 // RequestGroup.identifier
requestGroup.identifier;
 // RequestGroup.instantiatesCanonical
requestGroup.instantiatesCanonical;
 // RequestGroup.instantiatesUri
requestGroup.instantiatesUri;
 // RequestGroup.intent
requestGroup.intent;
 // RequestGroup.action.participant
requestGroup.action?.map((e) => e.participant);
 // RequestGroup.subject.where(resolve() is Patient)
requestGroup.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // RequestGroup.priority
requestGroup.priority;
 // RequestGroup.status
requestGroup.status;
 // RequestGroup.subject
requestGroup.subject;
  final researchDefinition = ResearchDefinition.empty();
 // ResearchDefinition.relatedArtifact.where(type='composed-of').resource
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // ResearchDefinition.useContext.code
researchDefinition.useContext?.map((e) => e.code);
 // ResearchDefinition.date
researchDefinition.date;
 // ResearchDefinition.relatedArtifact.where(type='depends-on').resource
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // ResearchDefinition.library
researchDefinition.library_;
 // ResearchDefinition.relatedArtifact.where(type='derived-from').resource
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // ResearchDefinition.description
researchDefinition.description;
 // ResearchDefinition.effectivePeriod
researchDefinition.effectivePeriod;
 // ResearchDefinition.identifier
researchDefinition.identifier;
 // ResearchDefinition.jurisdiction
researchDefinition.jurisdiction;
 // ResearchDefinition.name
researchDefinition.name;
 // ResearchDefinition.relatedArtifact.where(type='predecessor').resource
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // ResearchDefinition.publisher
researchDefinition.publisher;
 // ResearchDefinition.status
researchDefinition.status;
 // ResearchDefinition.relatedArtifact.where(type='successor').resource
researchDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // ResearchDefinition.title
researchDefinition.title;
 // ResearchDefinition.topic
researchDefinition.topic;
 // ResearchDefinition.url
researchDefinition.url;
 // ResearchDefinition.version
researchDefinition.version;
 // ResearchDefinition.useContext
researchDefinition.useContext;
 // ResearchDefinition.useContext
researchDefinition.useContext;
  final researchElementDefinition = ResearchElementDefinition.empty();
 // ResearchElementDefinition.relatedArtifact.where(type='composed-of').resource
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'composed-of').map((e) => e.resource);
 // ResearchElementDefinition.useContext.code
researchElementDefinition.useContext?.map((e) => e.code);
 // ResearchElementDefinition.date
researchElementDefinition.date;
 // ResearchElementDefinition.relatedArtifact.where(type='depends-on').resource
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'depends-on').map((e) => e.resource);
 // ResearchElementDefinition.library
researchElementDefinition.library_;
 // ResearchElementDefinition.relatedArtifact.where(type='derived-from').resource
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'derived-from').map((e) => e.resource);
 // ResearchElementDefinition.description
researchElementDefinition.description;
 // ResearchElementDefinition.effectivePeriod
researchElementDefinition.effectivePeriod;
 // ResearchElementDefinition.identifier
researchElementDefinition.identifier;
 // ResearchElementDefinition.jurisdiction
researchElementDefinition.jurisdiction;
 // ResearchElementDefinition.name
researchElementDefinition.name;
 // ResearchElementDefinition.relatedArtifact.where(type='predecessor').resource
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'predecessor').map((e) => e.resource);
 // ResearchElementDefinition.publisher
researchElementDefinition.publisher;
 // ResearchElementDefinition.status
researchElementDefinition.status;
 // ResearchElementDefinition.relatedArtifact.where(type='successor').resource
researchElementDefinition.relatedArtifact?.where((e) => e.type.value.toString() == 'successor').map((e) => e.resource);
 // ResearchElementDefinition.title
researchElementDefinition.title;
 // ResearchElementDefinition.topic
researchElementDefinition.topic;
 // ResearchElementDefinition.url
researchElementDefinition.url;
 // ResearchElementDefinition.version
researchElementDefinition.version;
 // ResearchElementDefinition.useContext
researchElementDefinition.useContext;
 // ResearchElementDefinition.useContext
researchElementDefinition.useContext;
  final researchStudy = ResearchStudy.empty();
 // ResearchStudy.category
researchStudy.category;
 // ResearchStudy.period
researchStudy.period;
 // ResearchStudy.focus
researchStudy.focus;
 // ResearchStudy.identifier
researchStudy.identifier;
 // ResearchStudy.keyword
researchStudy.keyword;
 // ResearchStudy.location
researchStudy.location;
 // ResearchStudy.partOf
researchStudy.partOf;
 // ResearchStudy.principalInvestigator
researchStudy.principalInvestigator;
 // ResearchStudy.protocol
researchStudy.protocol;
 // ResearchStudy.site
researchStudy.site;
 // ResearchStudy.sponsor
researchStudy.sponsor;
 // ResearchStudy.status
researchStudy.status;
 // ResearchStudy.title
researchStudy.title;
  final researchSubject = ResearchSubject.empty();
 // ResearchSubject.period
researchSubject.period;
 // ResearchSubject.identifier
researchSubject.identifier;
 // ResearchSubject.individual
researchSubject.individual;
 // ResearchSubject.individual
researchSubject.individual;
 // ResearchSubject.status
researchSubject.status;
 // ResearchSubject.study
researchSubject.study;
  final riskAssessment = RiskAssessment.empty();
 // RiskAssessment.identifier
riskAssessment.identifier;
 // RiskAssessment.subject.where(resolve() is Patient)
riskAssessment.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // RiskAssessment.encounter
riskAssessment.encounter;
 // RiskAssessment.condition
riskAssessment.condition;
 // RiskAssessment.method
riskAssessment.method;
 // RiskAssessment.performer
riskAssessment.performer;
 // RiskAssessment.prediction.probability
riskAssessment.prediction?.map((e) => e.probability);
 // RiskAssessment.prediction.qualitativeRisk
riskAssessment.prediction?.map((e) => e.qualitativeRisk);
 // RiskAssessment.subject
riskAssessment.subject;
  final schedule = Schedule.empty();
 // Schedule.active
schedule.active;
 // Schedule.actor
schedule.actor;
 // Schedule.planningHorizon
schedule.planningHorizon;
 // Schedule.identifier
schedule.identifier;
 // Schedule.serviceCategory
schedule.serviceCategory;
 // Schedule.serviceType
schedule.serviceType;
 // Schedule.specialty
schedule.specialty;
  final searchParameter = SearchParameter.empty();
 // SearchParameter.useContext.code
searchParameter.useContext?.map((e) => e.code);
 // SearchParameter.date
searchParameter.date;
 // SearchParameter.description
searchParameter.description;
 // SearchParameter.jurisdiction
searchParameter.jurisdiction;
 // SearchParameter.name
searchParameter.name;
 // SearchParameter.publisher
searchParameter.publisher;
 // SearchParameter.status
searchParameter.status;
 // SearchParameter.url
searchParameter.url;
 // SearchParameter.version
searchParameter.version;
 // SearchParameter.useContext
searchParameter.useContext;
 // SearchParameter.useContext
searchParameter.useContext;
 // SearchParameter.base
searchParameter.base;
 // SearchParameter.code
searchParameter.code;
 // SearchParameter.component.definition
searchParameter.component?.map((e) => e.definition);
 // SearchParameter.derivedFrom
searchParameter.derivedFrom;
 // SearchParameter.target
searchParameter.target;
 // SearchParameter.type
searchParameter.type;
  final serviceRequest = ServiceRequest.empty();
 // ServiceRequest.code
serviceRequest.code;
 // ServiceRequest.identifier
serviceRequest.identifier;
 // ServiceRequest.subject.where(resolve() is Patient)
serviceRequest.subject.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // ServiceRequest.encounter
serviceRequest.encounter;
 // ServiceRequest.authoredOn
serviceRequest.authoredOn;
 // ServiceRequest.basedOn
serviceRequest.basedOn;
 // ServiceRequest.bodySite
serviceRequest.bodySite;
 // ServiceRequest.category
serviceRequest.category;
 // ServiceRequest.instantiatesCanonical
serviceRequest.instantiatesCanonical;
 // ServiceRequest.instantiatesUri
serviceRequest.instantiatesUri;
 // ServiceRequest.intent
serviceRequest.intent;
 // ServiceRequest.occurrence
serviceRequest.occurrence;
 // ServiceRequest.performer
serviceRequest.performer;
 // ServiceRequest.performerType
serviceRequest.performerType;
 // ServiceRequest.priority
serviceRequest.priority;
 // ServiceRequest.replaces
serviceRequest.replaces;
 // ServiceRequest.requester
serviceRequest.requester;
 // ServiceRequest.requisition
serviceRequest.requisition;
 // ServiceRequest.specimen
serviceRequest.specimen;
 // ServiceRequest.status
serviceRequest.status;
 // ServiceRequest.subject
serviceRequest.subject;
  final slot = Slot.empty();
 // Slot.appointmentType
slot.appointmentType;
 // Slot.identifier
slot.identifier;
 // Slot.schedule
slot.schedule;
 // Slot.serviceCategory
slot.serviceCategory;
 // Slot.serviceType
slot.serviceType;
 // Slot.specialty
slot.specialty;
 // Slot.start
slot.start;
 // Slot.status
slot.status;
  final specimen = Specimen.empty();
 // Specimen.accessionIdentifier
specimen.accessionIdentifier;
 // Specimen.collection.bodySite
specimen.collection?.bodySite;
 // Specimen.collection.collected
specimen.collection?.collected;
 // Specimen.collection.collector
specimen.collection?.collector;
 // Specimen.container.type
specimen.container?.map((e) => e.type);
 // Specimen.container.identifier
specimen.container?.map((e) => e.identifier);
 // Specimen.identifier
specimen.identifier;
 // Specimen.parent
specimen.parent;
 // Specimen.subject.where(resolve() is Patient)
specimen.subject?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Specimen.status
specimen.status;
 // Specimen.subject
specimen.subject;
 // Specimen.type
specimen.type;
  final specimenDefinition = SpecimenDefinition.empty();
 // SpecimenDefinition.typeTested.container.type
specimenDefinition.typeTested?.map((e) => e.container).map((e) => e?.type);
 // SpecimenDefinition.identifier
specimenDefinition.identifier;
 // SpecimenDefinition.typeCollected
specimenDefinition.typeCollected;
  final structureDefinition = StructureDefinition.empty();
 // StructureDefinition.useContext.code
structureDefinition.useContext?.map((e) => e.code);
 // StructureDefinition.date
structureDefinition.date;
 // StructureDefinition.description
structureDefinition.description;
 // StructureDefinition.jurisdiction
structureDefinition.jurisdiction;
 // StructureDefinition.name
structureDefinition.name;
 // StructureDefinition.publisher
structureDefinition.publisher;
 // StructureDefinition.status
structureDefinition.status;
 // StructureDefinition.title
structureDefinition.title;
 // StructureDefinition.url
structureDefinition.url;
 // StructureDefinition.version
structureDefinition.version;
 // StructureDefinition.useContext
structureDefinition.useContext;
 // StructureDefinition.useContext
structureDefinition.useContext;
 // StructureDefinition.identifier
structureDefinition.identifier;
 // StructureDefinition.abstract
structureDefinition.abstract_;
 // StructureDefinition.baseDefinition
structureDefinition.baseDefinition;
 // StructureDefinition.snapshot.element.base.path
structureDefinition.snapshot?.element.map((e) => e.base).map((e) => e?.path);
 // StructureDefinition.differential.element.base.path
structureDefinition.differential?.element.map((e) => e.base).map((e) => e?.path);
 // StructureDefinition.derivation
structureDefinition.derivation;
 // StructureDefinition.experimental
structureDefinition.experimental;
 // StructureDefinition.context.type
structureDefinition.context?.map((e) => e.type);
 // StructureDefinition.keyword
structureDefinition.keyword;
 // StructureDefinition.kind
structureDefinition.kind;
 // StructureDefinition.snapshot.element.path
structureDefinition.snapshot?.element.map((e) => e.path);
 // StructureDefinition.differential.element.path
structureDefinition.differential?.element.map((e) => e.path);
 // StructureDefinition.type
structureDefinition.type;
 // StructureDefinition.snapshot.element.binding.valueSet
structureDefinition.snapshot?.element.map((e) => e.binding).map((e) => e?.valueSet);
  final structureMap = StructureMap.empty();
 // StructureMap.useContext.code
structureMap.useContext?.map((e) => e.code);
 // StructureMap.date
structureMap.date;
 // StructureMap.description
structureMap.description;
 // StructureMap.jurisdiction
structureMap.jurisdiction;
 // StructureMap.name
structureMap.name;
 // StructureMap.publisher
structureMap.publisher;
 // StructureMap.status
structureMap.status;
 // StructureMap.title
structureMap.title;
 // StructureMap.url
structureMap.url;
 // StructureMap.version
structureMap.version;
 // StructureMap.useContext
structureMap.useContext;
 // StructureMap.useContext
structureMap.useContext;
 // StructureMap.identifier
structureMap.identifier;
  final subscription = Subscription.empty();
 // Subscription.contact
subscription.contact;
 // Subscription.criteria
subscription.criteria;
 // Subscription.channel.payload
subscription.channel.payload;
 // Subscription.status
subscription.status;
 // Subscription.channel.type
subscription.channel.type;
 // Subscription.channel.endpoint
subscription.channel.endpoint;
  final subscriptionStatus = SubscriptionStatus.empty();
  final subscriptionTopic = SubscriptionTopic.empty();
 // SubscriptionTopic.date
subscriptionTopic.date;
 // SubscriptionTopic.url
subscriptionTopic.url;
 // SubscriptionTopic.derivedFrom
subscriptionTopic.derivedFrom;
 // SubscriptionTopic.identifier
subscriptionTopic.identifier;
 // SubscriptionTopic.resourceTrigger.resource
subscriptionTopic.resourceTrigger?.map((e) => e.resource);
 // SubscriptionTopic.status
subscriptionTopic.status;
 // SubscriptionTopic.title
subscriptionTopic.title;
 // SubscriptionTopic.resourceTrigger.description
subscriptionTopic.resourceTrigger?.map((e) => e.description);
 // SubscriptionTopic.url
subscriptionTopic.url;
 // SubscriptionTopic.version
subscriptionTopic.version;
  final substance = Substance.empty();
 // Substance.category
substance.category;
 // Substance.code
substance.code;
 // Substance.instance.identifier
substance.instance?.map((e) => e.identifier);
 // Substance.instance.expiry
substance.instance?.map((e) => e.expiry);
 // Substance.identifier
substance.identifier;
 // Substance.instance.quantity
substance.instance?.map((e) => e.quantity);
 // Substance.status
substance.status;
  final substanceDefinition = SubstanceDefinition.empty();
 // SubstanceDefinition.classification
substanceDefinition.classification;
 // SubstanceDefinition.code.code
substanceDefinition.code?.map((e) => e.code);
 // SubstanceDefinition.domain
substanceDefinition.domain;
 // SubstanceDefinition.identifier
substanceDefinition.identifier;
 // SubstanceDefinition.name.name
substanceDefinition.name?.map((e) => e.name);
  final supplyDelivery = SupplyDelivery.empty();
 // SupplyDelivery.identifier
supplyDelivery.identifier;
 // SupplyDelivery.patient
supplyDelivery.patient;
 // SupplyDelivery.receiver
supplyDelivery.receiver;
 // SupplyDelivery.status
supplyDelivery.status;
 // SupplyDelivery.supplier
supplyDelivery.supplier;
  final supplyRequest = SupplyRequest.empty();
 // SupplyRequest.authoredOn
supplyRequest.authoredOn;
 // SupplyRequest.identifier
supplyRequest.identifier;
 // SupplyRequest.category
supplyRequest.category;
 // SupplyRequest.requester
supplyRequest.requester;
 // SupplyRequest.status
supplyRequest.status;
 // SupplyRequest.deliverTo
supplyRequest.deliverTo;
 // SupplyRequest.supplier
supplyRequest.supplier;
  final task = Task.empty();
 // Task.authoredOn
task.authoredOn;
 // Task.basedOn
task.basedOn;
 // Task.businessStatus
task.businessStatus;
 // Task.code
task.code;
 // Task.encounter
task.encounter;
 // Task.focus
task.focus;
 // Task.groupIdentifier
task.groupIdentifier;
 // Task.identifier
task.identifier;
 // Task.intent
task.intent;
 // Task.lastModified
task.lastModified;
 // Task.owner
task.owner;
 // Task.partOf
task.partOf;
 // Task.for.where(resolve() is Patient)
task.for_?.makeIterable<Reference>().where((e) {
    final ref = e.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == 'Patient';
  });
 // Task.performerType
task.performerType;
 // Task.executionPeriod
task.executionPeriod;
 // Task.priority
task.priority;
 // Task.requester
task.requester;
 // Task.status
task.status;
 // Task.for
task.for_;
  final terminologyCapabilities = TerminologyCapabilities.empty();
 // TerminologyCapabilities.useContext.code
terminologyCapabilities.useContext?.map((e) => e.code);
 // TerminologyCapabilities.date
terminologyCapabilities.date;
 // TerminologyCapabilities.description
terminologyCapabilities.description;
 // TerminologyCapabilities.jurisdiction
terminologyCapabilities.jurisdiction;
 // TerminologyCapabilities.name
terminologyCapabilities.name;
 // TerminologyCapabilities.publisher
terminologyCapabilities.publisher;
 // TerminologyCapabilities.status
terminologyCapabilities.status;
 // TerminologyCapabilities.title
terminologyCapabilities.title;
 // TerminologyCapabilities.url
terminologyCapabilities.url;
 // TerminologyCapabilities.version
terminologyCapabilities.version;
 // TerminologyCapabilities.useContext
terminologyCapabilities.useContext;
 // TerminologyCapabilities.useContext
terminologyCapabilities.useContext;
  final testReport = TestReport.empty();
 // TestReport.identifier
testReport.identifier;
 // TestReport.issued
testReport.issued;
 // TestReport.participant.uri
testReport.participant?.map((e) => e.uri);
 // TestReport.result
testReport.result;
 // TestReport.tester
testReport.tester;
 // TestReport.testScript
testReport.testScript;
  final testScript = TestScript.empty();
 // TestScript.useContext.code
testScript.useContext?.map((e) => e.code);
 // TestScript.date
testScript.date;
 // TestScript.description
testScript.description;
 // TestScript.identifier
testScript.identifier;
 // TestScript.jurisdiction
testScript.jurisdiction;
 // TestScript.name
testScript.name;
 // TestScript.publisher
testScript.publisher;
 // TestScript.status
testScript.status;
 // TestScript.metadata.capability.description
testScript.metadata?.capability.map((e) => e.description);
 // TestScript.title
testScript.title;
 // TestScript.url
testScript.url;
 // TestScript.version
testScript.version;
 // TestScript.useContext
testScript.useContext;
 // TestScript.useContext
testScript.useContext;
  final valueSet = ValueSet.empty();
 // ValueSet.useContext.code
valueSet.useContext?.map((e) => e.code);
 // ValueSet.date
valueSet.date;
 // ValueSet.description
valueSet.description;
 // ValueSet.jurisdiction
valueSet.jurisdiction;
 // ValueSet.name
valueSet.name;
 // ValueSet.publisher
valueSet.publisher;
 // ValueSet.status
valueSet.status;
 // ValueSet.title
valueSet.title;
 // ValueSet.url
valueSet.url;
 // ValueSet.version
valueSet.version;
 // ValueSet.useContext
valueSet.useContext;
 // ValueSet.useContext
valueSet.useContext;
 // ValueSet.identifier
valueSet.identifier;
 // ValueSet.expansion.contains.code
valueSet.expansion?.contains?.map((e) => e.code);
 // ValueSet.compose.include.concept.code
valueSet.compose?.include.map((e) => e.concept).map((e) => e?.code);
 // ValueSet.expansion.identifier
valueSet.expansion?.identifier;
 // ValueSet.compose.include.system
valueSet.compose?.include.map((e) => e.system);
  final verificationResult = VerificationResult.empty();
 // VerificationResult.target
verificationResult.target;
  final visionPrescription = VisionPrescription.empty();
 // VisionPrescription.identifier
visionPrescription.identifier;
 // VisionPrescription.patient
visionPrescription.patient;
 // VisionPrescription.encounter
visionPrescription.encounter;
 // VisionPrescription.dateWritten
visionPrescription.dateWritten;
 // VisionPrescription.prescriber
visionPrescription.prescriber;
 // VisionPrescription.status
visionPrescription.status;
  }
