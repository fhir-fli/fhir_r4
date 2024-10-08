import '../../../fhir_r4.dart';

/// Creates a new [id] for the Resources that's passed
Resource newId(Resource resource) {
  final FhirString newId = generateNewUuidFhirString();
  switch (resource.resourceType) {
    case R4ResourceType.Account:
      return (resource as Account).copyWith(id: newId);
    case R4ResourceType.ActivityDefinition:
      return (resource as ActivityDefinition).copyWith(id: newId);
    case R4ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinition).copyWith(id: newId);
    case R4ResourceType.AdverseEvent:
      return (resource as AdverseEvent).copyWith(id: newId);
    case R4ResourceType.AllergyIntolerance:
      return (resource as AllergyIntolerance).copyWith(id: newId);
    case R4ResourceType.Appointment:
      return (resource as Appointment).copyWith(id: newId);
    case R4ResourceType.AppointmentResponse:
      return (resource as AppointmentResponse).copyWith(id: newId);
    case R4ResourceType.AuditEvent:
      return (resource as AuditEvent).copyWith(id: newId);
    case R4ResourceType.Basic:
      return (resource as Basic).copyWith(id: newId);
    case R4ResourceType.Binary:
      return (resource as Binary).copyWith(id: newId);
    case R4ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProduct).copyWith(id: newId);
    case R4ResourceType.BodyStructure:
      return (resource as BodyStructure).copyWith(id: newId);
    case R4ResourceType.Bundle:
      return (resource as Bundle).copyWith(id: newId);
    case R4ResourceType.CapabilityStatement:
      return (resource as CapabilityStatement).copyWith(id: newId);
    case R4ResourceType.CarePlan:
      return (resource as CarePlan).copyWith(id: newId);
    case R4ResourceType.CareTeam:
      return (resource as CareTeam).copyWith(id: newId);
    case R4ResourceType.CatalogEntry:
      return (resource as CatalogEntry).copyWith(id: newId);
    case R4ResourceType.ChargeItem:
      return (resource as ChargeItem).copyWith(id: newId);
    case R4ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinition).copyWith(id: newId);
    case R4ResourceType.Citation:
      return (resource as Citation).copyWith(id: newId);
    case R4ResourceType.Claim:
      return (resource as Claim).copyWith(id: newId);
    case R4ResourceType.ClaimResponse:
      return (resource as ClaimResponse).copyWith(id: newId);
    case R4ResourceType.ClinicalImpression:
      return (resource as ClinicalImpression).copyWith(id: newId);
    case R4ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinition).copyWith(id: newId);
    case R4ResourceType.CodeSystem:
      return (resource as CodeSystem).copyWith(id: newId);
    case R4ResourceType.Communication:
      return (resource as Communication).copyWith(id: newId);
    case R4ResourceType.CommunicationRequest:
      return (resource as CommunicationRequest).copyWith(id: newId);
    case R4ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinition).copyWith(id: newId);
    case R4ResourceType.Composition:
      return (resource as Composition).copyWith(id: newId);
    case R4ResourceType.ConceptMap:
      return (resource as ConceptMap).copyWith(id: newId);
    case R4ResourceType.Condition:
      return (resource as Condition).copyWith(id: newId);
    case R4ResourceType.Consent:
      return (resource as Consent).copyWith(id: newId);
    case R4ResourceType.Contract:
      return (resource as Contract).copyWith(id: newId);
    case R4ResourceType.Coverage:
      return (resource as Coverage).copyWith(id: newId);
    case R4ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequest).copyWith(id: newId);
    case R4ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponse).copyWith(id: newId);
    case R4ResourceType.DetectedIssue:
      return (resource as DetectedIssue).copyWith(id: newId);
    case R4ResourceType.Device:
      return (resource as Device).copyWith(id: newId);
    case R4ResourceType.DeviceDefinition:
      return (resource as DeviceDefinition).copyWith(id: newId);
    case R4ResourceType.DeviceMetric:
      return (resource as DeviceMetric).copyWith(id: newId);
    case R4ResourceType.DeviceRequest:
      return (resource as DeviceRequest).copyWith(id: newId);
    case R4ResourceType.DeviceUseStatement:
      return (resource as DeviceUseStatement).copyWith(id: newId);
    case R4ResourceType.DiagnosticReport:
      return (resource as DiagnosticReport).copyWith(id: newId);
    case R4ResourceType.DocumentManifest:
      return (resource as DocumentManifest).copyWith(id: newId);
    case R4ResourceType.DocumentReference:
      return (resource as DocumentReference).copyWith(id: newId);
    case R4ResourceType.Encounter:
      return (resource as Encounter).copyWith(id: newId);
    case R4ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequest).copyWith(id: newId);
    case R4ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponse).copyWith(id: newId);
    case R4ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCare).copyWith(id: newId);
    case R4ResourceType.EventDefinition:
      return (resource as EventDefinition).copyWith(id: newId);
    case R4ResourceType.Evidence:
      return (resource as Evidence).copyWith(id: newId);
    case R4ResourceType.EvidenceReport:
      return (resource as EvidenceReport).copyWith(id: newId);
    case R4ResourceType.EvidenceVariable:
      return (resource as EvidenceVariable).copyWith(id: newId);
    case R4ResourceType.ExampleScenario:
      return (resource as ExampleScenario).copyWith(id: newId);
    case R4ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefit).copyWith(id: newId);
    case R4ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistory).copyWith(id: newId);
    case R4ResourceType.FhirEndpoint:
      return (resource as FhirEndpoint).copyWith(id: newId);
    case R4ResourceType.FhirGroup:
      return (resource as FhirGroup).copyWith(id: newId);
    case R4ResourceType.FhirList:
      return (resource as FhirList).copyWith(id: newId);
    case R4ResourceType.Flag:
      return (resource as Flag).copyWith(id: newId);
    case R4ResourceType.Goal:
      return (resource as Goal).copyWith(id: newId);
    case R4ResourceType.GraphDefinition:
      return (resource as GraphDefinition).copyWith(id: newId);
    case R4ResourceType.GuidanceResponse:
      return (resource as GuidanceResponse).copyWith(id: newId);
    case R4ResourceType.HealthcareService:
      return (resource as HealthcareService).copyWith(id: newId);
    case R4ResourceType.ImagingStudy:
      return (resource as ImagingStudy).copyWith(id: newId);
    case R4ResourceType.Immunization:
      return (resource as Immunization).copyWith(id: newId);
    case R4ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluation).copyWith(id: newId);
    case R4ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendation).copyWith(id: newId);
    case R4ResourceType.ImplementationGuide:
      return (resource as ImplementationGuide).copyWith(id: newId);
    case R4ResourceType.Ingredient:
      return (resource as Ingredient).copyWith(id: newId);
    case R4ResourceType.InsurancePlan:
      return (resource as InsurancePlan).copyWith(id: newId);
    case R4ResourceType.Invoice:
      return (resource as Invoice).copyWith(id: newId);
    case R4ResourceType.Library:
      return (resource as Library).copyWith(id: newId);
    case R4ResourceType.Linkage:
      return (resource as Linkage).copyWith(id: newId);
    case R4ResourceType.Location:
      return (resource as Location).copyWith(id: newId);
    case R4ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinition).copyWith(id: newId);
    case R4ResourceType.Measure:
      return (resource as Measure).copyWith(id: newId);
    case R4ResourceType.MeasureReport:
      return (resource as MeasureReport).copyWith(id: newId);
    case R4ResourceType.Media:
      return (resource as Media).copyWith(id: newId);
    case R4ResourceType.Medication:
      return (resource as Medication).copyWith(id: newId);
    case R4ResourceType.MedicationAdministration:
      return (resource as MedicationAdministration).copyWith(id: newId);
    case R4ResourceType.MedicationDispense:
      return (resource as MedicationDispense).copyWith(id: newId);
    case R4ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledge).copyWith(id: newId);
    case R4ResourceType.MedicationRequest:
      return (resource as MedicationRequest).copyWith(id: newId);
    case R4ResourceType.MedicationStatement:
      return (resource as MedicationStatement).copyWith(id: newId);
    case R4ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinition).copyWith(id: newId);
    case R4ResourceType.MessageDefinition:
      return (resource as MessageDefinition).copyWith(id: newId);
    case R4ResourceType.MessageHeader:
      return (resource as MessageHeader).copyWith(id: newId);
    case R4ResourceType.MolecularSequence:
      return (resource as MolecularSequence).copyWith(id: newId);
    case R4ResourceType.NamingSystem:
      return (resource as NamingSystem).copyWith(id: newId);
    case R4ResourceType.NutritionOrder:
      return (resource as NutritionOrder).copyWith(id: newId);
    case R4ResourceType.NutritionProduct:
      return (resource as NutritionProduct).copyWith(id: newId);
    case R4ResourceType.Observation:
      return (resource as Observation).copyWith(id: newId);
    case R4ResourceType.ObservationDefinition:
      return (resource as ObservationDefinition).copyWith(id: newId);
    case R4ResourceType.OperationDefinition:
      return (resource as OperationDefinition).copyWith(id: newId);
    case R4ResourceType.OperationOutcome:
      return (resource as OperationOutcome).copyWith(id: newId);
    case R4ResourceType.Organization:
      return (resource as Organization).copyWith(id: newId);
    case R4ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliation).copyWith(id: newId);
    case R4ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinition).copyWith(id: newId);
    case R4ResourceType.Parameters:
      return (resource as Parameters).copyWith(id: newId);
    case R4ResourceType.Patient:
      return (resource as Patient).copyWith(id: newId);
    case R4ResourceType.PaymentNotice:
      return (resource as PaymentNotice).copyWith(id: newId);
    case R4ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliation).copyWith(id: newId);
    case R4ResourceType.Person:
      return (resource as Person).copyWith(id: newId);
    case R4ResourceType.PlanDefinition:
      return (resource as PlanDefinition).copyWith(id: newId);
    case R4ResourceType.Practitioner:
      return (resource as Practitioner).copyWith(id: newId);
    case R4ResourceType.PractitionerRole:
      return (resource as PractitionerRole).copyWith(id: newId);
    case R4ResourceType.Procedure:
      return (resource as Procedure).copyWith(id: newId);
    case R4ResourceType.Provenance:
      return (resource as Provenance).copyWith(id: newId);
    case R4ResourceType.Questionnaire:
      return (resource as Questionnaire).copyWith(id: newId);
    case R4ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponse).copyWith(id: newId);
    case R4ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorization).copyWith(id: newId);
    case R4ResourceType.RelatedPerson:
      return (resource as RelatedPerson).copyWith(id: newId);
    case R4ResourceType.RequestGroup:
      return (resource as RequestGroup).copyWith(id: newId);
    case R4ResourceType.ResearchDefinition:
      return (resource as ResearchDefinition).copyWith(id: newId);
    case R4ResourceType.ResearchElementDefinition:
      return (resource as ResearchElementDefinition).copyWith(id: newId);
    case R4ResourceType.ResearchStudy:
      return (resource as ResearchStudy).copyWith(id: newId);
    case R4ResourceType.ResearchSubject:
      return (resource as ResearchSubject).copyWith(id: newId);
    case R4ResourceType.RiskAssessment:
      return (resource as RiskAssessment).copyWith(id: newId);
    case R4ResourceType.Schedule:
      return (resource as Schedule).copyWith(id: newId);
    case R4ResourceType.SearchParameter:
      return (resource as SearchParameter).copyWith(id: newId);
    case R4ResourceType.ServiceRequest:
      return (resource as ServiceRequest).copyWith(id: newId);
    case R4ResourceType.Slot:
      return (resource as Slot).copyWith(id: newId);
    case R4ResourceType.Specimen:
      return (resource as Specimen).copyWith(id: newId);
    case R4ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinition).copyWith(id: newId);
    case R4ResourceType.StructureDefinition:
      return (resource as StructureDefinition).copyWith(id: newId);
    case R4ResourceType.StructureMap:
      return (resource as StructureMap).copyWith(id: newId);
    case R4ResourceType.Subscription:
      return (resource as Subscription).copyWith(id: newId);
    case R4ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatus).copyWith(id: newId);
    case R4ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopic).copyWith(id: newId);
    case R4ResourceType.Substance:
      return (resource as Substance).copyWith(id: newId);
    case R4ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinition).copyWith(id: newId);
    case R4ResourceType.SupplyDelivery:
      return (resource as SupplyDelivery).copyWith(id: newId);
    case R4ResourceType.SupplyRequest:
      return (resource as SupplyRequest).copyWith(id: newId);
    case R4ResourceType.Task:
      return (resource as Task).copyWith(id: newId);
    case R4ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilities).copyWith(id: newId);
    case R4ResourceType.TestReport:
      return (resource as TestReport).copyWith(id: newId);
    case R4ResourceType.TestScript:
      return (resource as TestScript).copyWith(id: newId);
    case R4ResourceType.ValueSet:
      return (resource as ValueSet).copyWith(id: newId);
    case R4ResourceType.VerificationResult:
      return (resource as VerificationResult).copyWith(id: newId);
    case R4ResourceType.VisionPrescription:
      return (resource as VisionPrescription).copyWith(id: newId);
  }
}
