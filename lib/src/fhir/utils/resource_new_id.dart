import '../../../fhir_r4.dart';

/// Creates a new [id] for the Resources that's passed
Resource newId(Resource resource) {
  final FhirString newId = generateNewUuidFhirString();
  switch (resource.resourceType) {
    case R4ResourceType.Account:
      return (resource as Account).copy(id: newId);
    case R4ResourceType.ActivityDefinition:
      return (resource as ActivityDefinition).copy(id: newId);
    case R4ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinition).copy(id: newId);
    case R4ResourceType.AdverseEvent:
      return (resource as AdverseEvent).copy(id: newId);
    case R4ResourceType.AllergyIntolerance:
      return (resource as AllergyIntolerance).copy(id: newId);
    case R4ResourceType.Appointment:
      return (resource as Appointment).copy(id: newId);
    case R4ResourceType.AppointmentResponse:
      return (resource as AppointmentResponse).copy(id: newId);
    case R4ResourceType.AuditEvent:
      return (resource as AuditEvent).copy(id: newId);
    case R4ResourceType.Basic:
      return (resource as Basic).copy(id: newId);
    case R4ResourceType.Binary:
      return (resource as Binary).copy(id: newId);
    case R4ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProduct).copy(id: newId);
    case R4ResourceType.BodyStructure:
      return (resource as BodyStructure).copy(id: newId);
    case R4ResourceType.Bundle:
      return (resource as Bundle).copy(id: newId);
    case R4ResourceType.CapabilityStatement:
      return (resource as CapabilityStatement).copy(id: newId);
    case R4ResourceType.CarePlan:
      return (resource as CarePlan).copy(id: newId);
    case R4ResourceType.CareTeam:
      return (resource as CareTeam).copy(id: newId);
    case R4ResourceType.CatalogEntry:
      return (resource as CatalogEntry).copy(id: newId);
    case R4ResourceType.ChargeItem:
      return (resource as ChargeItem).copy(id: newId);
    case R4ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinition).copy(id: newId);
    case R4ResourceType.Citation:
      return (resource as Citation).copy(id: newId);
    case R4ResourceType.Claim:
      return (resource as Claim).copy(id: newId);
    case R4ResourceType.ClaimResponse:
      return (resource as ClaimResponse).copy(id: newId);
    case R4ResourceType.ClinicalImpression:
      return (resource as ClinicalImpression).copy(id: newId);
    case R4ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinition).copy(id: newId);
    case R4ResourceType.CodeSystem:
      return (resource as CodeSystem).copy(id: newId);
    case R4ResourceType.Communication:
      return (resource as Communication).copy(id: newId);
    case R4ResourceType.CommunicationRequest:
      return (resource as CommunicationRequest).copy(id: newId);
    case R4ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinition).copy(id: newId);
    case R4ResourceType.Composition:
      return (resource as Composition).copy(id: newId);
    case R4ResourceType.ConceptMap:
      return (resource as ConceptMap).copy(id: newId);
    case R4ResourceType.Condition:
      return (resource as Condition).copy(id: newId);
    case R4ResourceType.Consent:
      return (resource as Consent).copy(id: newId);
    case R4ResourceType.Contract:
      return (resource as Contract).copy(id: newId);
    case R4ResourceType.Coverage:
      return (resource as Coverage).copy(id: newId);
    case R4ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequest).copy(id: newId);
    case R4ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponse).copy(id: newId);
    case R4ResourceType.DetectedIssue:
      return (resource as DetectedIssue).copy(id: newId);
    case R4ResourceType.Device:
      return (resource as Device).copy(id: newId);
    case R4ResourceType.DeviceDefinition:
      return (resource as DeviceDefinition).copy(id: newId);
    case R4ResourceType.DeviceMetric:
      return (resource as DeviceMetric).copy(id: newId);
    case R4ResourceType.DeviceRequest:
      return (resource as DeviceRequest).copy(id: newId);
    case R4ResourceType.DeviceUseStatement:
      return (resource as DeviceUseStatement).copy(id: newId);
    case R4ResourceType.DiagnosticReport:
      return (resource as DiagnosticReport).copy(id: newId);
    case R4ResourceType.DocumentManifest:
      return (resource as DocumentManifest).copy(id: newId);
    case R4ResourceType.DocumentReference:
      return (resource as DocumentReference).copy(id: newId);
    case R4ResourceType.Encounter:
      return (resource as Encounter).copy(id: newId);
    case R4ResourceType.FhirEndpoint:
      return (resource as FhirEndpoint).copy(id: newId);
    case R4ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequest).copy(id: newId);
    case R4ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponse).copy(id: newId);
    case R4ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCare).copy(id: newId);
    case R4ResourceType.EventDefinition:
      return (resource as EventDefinition).copy(id: newId);
    case R4ResourceType.Evidence:
      return (resource as Evidence).copy(id: newId);
    case R4ResourceType.EvidenceReport:
      return (resource as EvidenceReport).copy(id: newId);
    case R4ResourceType.EvidenceVariable:
      return (resource as EvidenceVariable).copy(id: newId);
    case R4ResourceType.ExampleScenario:
      return (resource as ExampleScenario).copy(id: newId);
    case R4ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefit).copy(id: newId);
    case R4ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistory).copy(id: newId);
    case R4ResourceType.Flag:
      return (resource as Flag).copy(id: newId);
    case R4ResourceType.Goal:
      return (resource as Goal).copy(id: newId);
    case R4ResourceType.GraphDefinition:
      return (resource as GraphDefinition).copy(id: newId);
    case R4ResourceType.FhirGroup:
      return (resource as FhirGroup).copy(id: newId);
    case R4ResourceType.GuidanceResponse:
      return (resource as GuidanceResponse).copy(id: newId);
    case R4ResourceType.HealthcareService:
      return (resource as HealthcareService).copy(id: newId);
    case R4ResourceType.ImagingStudy:
      return (resource as ImagingStudy).copy(id: newId);
    case R4ResourceType.Immunization:
      return (resource as Immunization).copy(id: newId);
    case R4ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluation).copy(id: newId);
    case R4ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendation).copy(id: newId);
    case R4ResourceType.ImplementationGuide:
      return (resource as ImplementationGuide).copy(id: newId);
    case R4ResourceType.Ingredient:
      return (resource as Ingredient).copy(id: newId);
    case R4ResourceType.InsurancePlan:
      return (resource as InsurancePlan).copy(id: newId);
    case R4ResourceType.Invoice:
      return (resource as Invoice).copy(id: newId);
    case R4ResourceType.Library:
      return (resource as Library).copy(id: newId);
    case R4ResourceType.Linkage:
      return (resource as Linkage).copy(id: newId);
    case R4ResourceType.FhirList:
      return (resource as FhirList).copy(id: newId);
    case R4ResourceType.Location:
      return (resource as Location).copy(id: newId);
    case R4ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinition).copy(id: newId);
    case R4ResourceType.Measure:
      return (resource as Measure).copy(id: newId);
    case R4ResourceType.MeasureReport:
      return (resource as MeasureReport).copy(id: newId);
    case R4ResourceType.Media:
      return (resource as Media).copy(id: newId);
    case R4ResourceType.Medication:
      return (resource as Medication).copy(id: newId);
    case R4ResourceType.MedicationAdministration:
      return (resource as MedicationAdministration).copy(id: newId);
    case R4ResourceType.MedicationDispense:
      return (resource as MedicationDispense).copy(id: newId);
    case R4ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledge).copy(id: newId);
    case R4ResourceType.MedicationRequest:
      return (resource as MedicationRequest).copy(id: newId);
    case R4ResourceType.MedicationStatement:
      return (resource as MedicationStatement).copy(id: newId);
    case R4ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinition).copy(id: newId);
    case R4ResourceType.MessageDefinition:
      return (resource as MessageDefinition).copy(id: newId);
    case R4ResourceType.MessageHeader:
      return (resource as MessageHeader).copy(id: newId);
    case R4ResourceType.MolecularSequence:
      return (resource as MolecularSequence).copy(id: newId);
    case R4ResourceType.NamingSystem:
      return (resource as NamingSystem).copy(id: newId);
    case R4ResourceType.NutritionOrder:
      return (resource as NutritionOrder).copy(id: newId);
    case R4ResourceType.NutritionProduct:
      return (resource as NutritionProduct).copy(id: newId);
    case R4ResourceType.Observation:
      return (resource as Observation).copy(id: newId);
    case R4ResourceType.ObservationDefinition:
      return (resource as ObservationDefinition).copy(id: newId);
    case R4ResourceType.OperationDefinition:
      return (resource as OperationDefinition).copy(id: newId);
    case R4ResourceType.OperationOutcome:
      return (resource as OperationOutcome).copy(id: newId);
    case R4ResourceType.Organization:
      return (resource as Organization).copy(id: newId);
    case R4ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliation).copy(id: newId);
    case R4ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinition).copy(id: newId);
    case R4ResourceType.Parameters:
      return (resource as Parameters).copy(id: newId);
    case R4ResourceType.Patient:
      return (resource as Patient).copy(id: newId);
    case R4ResourceType.PaymentNotice:
      return (resource as PaymentNotice).copy(id: newId);
    case R4ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliation).copy(id: newId);
    case R4ResourceType.Person:
      return (resource as Person).copy(id: newId);
    case R4ResourceType.PlanDefinition:
      return (resource as PlanDefinition).copy(id: newId);
    case R4ResourceType.Practitioner:
      return (resource as Practitioner).copy(id: newId);
    case R4ResourceType.PractitionerRole:
      return (resource as PractitionerRole).copy(id: newId);
    case R4ResourceType.Procedure:
      return (resource as Procedure).copy(id: newId);
    case R4ResourceType.Provenance:
      return (resource as Provenance).copy(id: newId);
    case R4ResourceType.Questionnaire:
      return (resource as Questionnaire).copy(id: newId);
    case R4ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponse).copy(id: newId);
    case R4ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorization).copy(id: newId);
    case R4ResourceType.RelatedPerson:
      return (resource as RelatedPerson).copy(id: newId);
    case R4ResourceType.RequestGroup:
      return (resource as RequestGroup).copy(id: newId);
    case R4ResourceType.ResearchDefinition:
      return (resource as ResearchDefinition).copy(id: newId);
    case R4ResourceType.ResearchElementDefinition:
      return (resource as ResearchElementDefinition).copy(id: newId);
    case R4ResourceType.ResearchStudy:
      return (resource as ResearchStudy).copy(id: newId);
    case R4ResourceType.ResearchSubject:
      return (resource as ResearchSubject).copy(id: newId);
    case R4ResourceType.RiskAssessment:
      return (resource as RiskAssessment).copy(id: newId);
    case R4ResourceType.Schedule:
      return (resource as Schedule).copy(id: newId);
    case R4ResourceType.SearchParameter:
      return (resource as SearchParameter).copy(id: newId);
    case R4ResourceType.ServiceRequest:
      return (resource as ServiceRequest).copy(id: newId);
    case R4ResourceType.Slot:
      return (resource as Slot).copy(id: newId);
    case R4ResourceType.Specimen:
      return (resource as Specimen).copy(id: newId);
    case R4ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinition).copy(id: newId);
    case R4ResourceType.StructureDefinition:
      return (resource as StructureDefinition).copy(id: newId);
    case R4ResourceType.StructureMap:
      return (resource as StructureMap).copy(id: newId);
    case R4ResourceType.Subscription:
      return (resource as Subscription).copy(id: newId);
    case R4ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatus).copy(id: newId);
    case R4ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopic).copy(id: newId);
    case R4ResourceType.Substance:
      return (resource as Substance).copy(id: newId);
    case R4ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinition).copy(id: newId);
    case R4ResourceType.SupplyDelivery:
      return (resource as SupplyDelivery).copy(id: newId);
    case R4ResourceType.SupplyRequest:
      return (resource as SupplyRequest).copy(id: newId);
    case R4ResourceType.Task:
      return (resource as Task).copy(id: newId);
    case R4ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilities).copy(id: newId);
    case R4ResourceType.TestReport:
      return (resource as TestReport).copy(id: newId);
    case R4ResourceType.TestScript:
      return (resource as TestScript).copy(id: newId);
    case R4ResourceType.ValueSet:
      return (resource as ValueSet).copy(id: newId);
    case R4ResourceType.VerificationResult:
      return (resource as VerificationResult).copy(id: newId);
    case R4ResourceType.VisionPrescription:
      return (resource as VisionPrescription).copy(id: newId);
  }
}
