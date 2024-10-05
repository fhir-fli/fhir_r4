import '../../../fhir_r4.dart';

/// Creates a new [id] for the Resources that's passed
Resource newId(Resource resource) {
  switch (resource.resourceType) {
    case R4ResourceType.Account:
      return (resource as Account).copyWith(id: generateNewUuidString());
    case R4ResourceType.ActivityDefinition:
      return (resource as ActivityDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.AdverseEvent:
      return (resource as AdverseEvent).copyWith(id: generateNewUuidString());
    case R4ResourceType.AllergyIntolerance:
      return (resource as AllergyIntolerance)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Appointment:
      return (resource as Appointment).copyWith(id: generateNewUuidString());
    case R4ResourceType.AppointmentResponse:
      return (resource as AppointmentResponse)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.AuditEvent:
      return (resource as AuditEvent).copyWith(id: generateNewUuidString());
    case R4ResourceType.Basic:
      return (resource as Basic).copyWith(id: generateNewUuidString());
    case R4ResourceType.Binary:
      return (resource as Binary).copyWith(id: generateNewUuidString());
    case R4ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProduct)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.BodyStructure:
      return (resource as BodyStructure).copyWith(id: generateNewUuidString());
    case R4ResourceType.Bundle:
      return (resource as Bundle).copyWith(id: generateNewUuidString());
    case R4ResourceType.CapabilityStatement:
      return (resource as CapabilityStatement)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.CarePlan:
      return (resource as CarePlan).copyWith(id: generateNewUuidString());
    case R4ResourceType.CareTeam:
      return (resource as CareTeam).copyWith(id: generateNewUuidString());
    case R4ResourceType.CatalogEntry:
      return (resource as CatalogEntry).copyWith(id: generateNewUuidString());
    case R4ResourceType.ChargeItem:
      return (resource as ChargeItem).copyWith(id: generateNewUuidString());
    case R4ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Citation:
      return (resource as Citation).copyWith(id: generateNewUuidString());
    case R4ResourceType.Claim:
      return (resource as Claim).copyWith(id: generateNewUuidString());
    case R4ResourceType.ClaimResponse:
      return (resource as ClaimResponse).copyWith(id: generateNewUuidString());
    case R4ResourceType.ClinicalImpression:
      return (resource as ClinicalImpression)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.CodeSystem:
      return (resource as CodeSystem).copyWith(id: generateNewUuidString());
    case R4ResourceType.Communication:
      return (resource as Communication).copyWith(id: generateNewUuidString());
    case R4ResourceType.CommunicationRequest:
      return (resource as CommunicationRequest)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Composition:
      return (resource as Composition).copyWith(id: generateNewUuidString());
    case R4ResourceType.ConceptMap:
      return (resource as ConceptMap).copyWith(id: generateNewUuidString());
    case R4ResourceType.Condition:
      return (resource as Condition).copyWith(id: generateNewUuidString());
    case R4ResourceType.Consent:
      return (resource as Consent).copyWith(id: generateNewUuidString());
    case R4ResourceType.Contract:
      return (resource as Contract).copyWith(id: generateNewUuidString());
    case R4ResourceType.Coverage:
      return (resource as Coverage).copyWith(id: generateNewUuidString());
    case R4ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequest)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponse)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.DetectedIssue:
      return (resource as DetectedIssue).copyWith(id: generateNewUuidString());
    case R4ResourceType.Device:
      return (resource as Device).copyWith(id: generateNewUuidString());
    case R4ResourceType.DeviceDefinition:
      return (resource as DeviceDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.DeviceMetric:
      return (resource as DeviceMetric).copyWith(id: generateNewUuidString());
    case R4ResourceType.DeviceRequest:
      return (resource as DeviceRequest).copyWith(id: generateNewUuidString());
    case R4ResourceType.DeviceUseStatement:
      return (resource as DeviceUseStatement)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.DiagnosticReport:
      return (resource as DiagnosticReport)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.DocumentManifest:
      return (resource as DocumentManifest)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.DocumentReference:
      return (resource as DocumentReference)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Encounter:
      return (resource as Encounter).copyWith(id: generateNewUuidString());
    case R4ResourceType.Endpoint:
      return (resource as FhirEndpoint).copyWith(id: generateNewUuidString());
    case R4ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequest)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponse)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCare).copyWith(id: generateNewUuidString());
    case R4ResourceType.EventDefinition:
      return (resource as EventDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Evidence:
      return (resource as Evidence).copyWith(id: generateNewUuidString());
    case R4ResourceType.EvidenceReport:
      return (resource as EvidenceReport).copyWith(id: generateNewUuidString());
    case R4ResourceType.EvidenceVariable:
      return (resource as EvidenceVariable)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ExampleScenario:
      return (resource as ExampleScenario)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefit)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistory)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Flag:
      return (resource as Flag).copyWith(id: generateNewUuidString());
    case R4ResourceType.Goal:
      return (resource as Goal).copyWith(id: generateNewUuidString());
    case R4ResourceType.GraphDefinition:
      return (resource as GraphDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Group:
      return (resource as FhirGroup).copyWith(id: generateNewUuidString());
    case R4ResourceType.GuidanceResponse:
      return (resource as GuidanceResponse)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.HealthcareService:
      return (resource as HealthcareService)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ImagingStudy:
      return (resource as ImagingStudy).copyWith(id: generateNewUuidString());
    case R4ResourceType.Immunization:
      return (resource as Immunization).copyWith(id: generateNewUuidString());
    case R4ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluation)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendation)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ImplementationGuide:
      return (resource as ImplementationGuide)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Ingredient:
      return (resource as Ingredient).copyWith(id: generateNewUuidString());
    case R4ResourceType.InsurancePlan:
      return (resource as InsurancePlan).copyWith(id: generateNewUuidString());
    case R4ResourceType.Invoice:
      return (resource as Invoice).copyWith(id: generateNewUuidString());
    case R4ResourceType.Library:
      return (resource as Library).copyWith(id: generateNewUuidString());
    case R4ResourceType.Linkage:
      return (resource as Linkage).copyWith(id: generateNewUuidString());
    case R4ResourceType.FhirList:
      return (resource as FhirList).copyWith(id: generateNewUuidString());
    case R4ResourceType.Location:
      return (resource as Location).copyWith(id: generateNewUuidString());
    case R4ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Measure:
      return (resource as Measure).copyWith(id: generateNewUuidString());
    case R4ResourceType.MeasureReport:
      return (resource as MeasureReport).copyWith(id: generateNewUuidString());
    case R4ResourceType.Media:
      return (resource as Media).copyWith(id: generateNewUuidString());
    case R4ResourceType.Medication:
      return (resource as Medication).copyWith(id: generateNewUuidString());
    case R4ResourceType.MedicationAdministration:
      return (resource as MedicationAdministration)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MedicationDispense:
      return (resource as MedicationDispense)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledge)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MedicationRequest:
      return (resource as MedicationRequest)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MedicationStatement:
      return (resource as MedicationStatement)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MessageDefinition:
      return (resource as MessageDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.MessageHeader:
      return (resource as MessageHeader).copyWith(id: generateNewUuidString());
    case R4ResourceType.MolecularSequence:
      return (resource as MolecularSequence)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.NamingSystem:
      return (resource as NamingSystem).copyWith(id: generateNewUuidString());
    case R4ResourceType.NutritionOrder:
      return (resource as NutritionOrder).copyWith(id: generateNewUuidString());
    case R4ResourceType.NutritionProduct:
      return (resource as NutritionProduct)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Observation:
      return (resource as Observation).copyWith(id: generateNewUuidString());
    case R4ResourceType.ObservationDefinition:
      return (resource as ObservationDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.OperationDefinition:
      return (resource as OperationDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.OperationOutcome:
      return (resource as OperationOutcome)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Organization:
      return (resource as Organization).copyWith(id: generateNewUuidString());
    case R4ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliation)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Parameters:
      return (resource as Parameters).copyWith(id: generateNewUuidString());
    case R4ResourceType.Patient:
      return (resource as Patient).copyWith(id: generateNewUuidString());
    case R4ResourceType.PaymentNotice:
      return (resource as PaymentNotice).copyWith(id: generateNewUuidString());
    case R4ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliation)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Person:
      return (resource as Person).copyWith(id: generateNewUuidString());
    case R4ResourceType.PlanDefinition:
      return (resource as PlanDefinition).copyWith(id: generateNewUuidString());
    case R4ResourceType.Practitioner:
      return (resource as Practitioner).copyWith(id: generateNewUuidString());
    case R4ResourceType.PractitionerRole:
      return (resource as PractitionerRole)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Procedure:
      return (resource as Procedure).copyWith(id: generateNewUuidString());
    case R4ResourceType.Provenance:
      return (resource as Provenance).copyWith(id: generateNewUuidString());
    case R4ResourceType.Questionnaire:
      return (resource as Questionnaire).copyWith(id: generateNewUuidString());
    case R4ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponse)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorization)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.RelatedPerson:
      return (resource as RelatedPerson).copyWith(id: generateNewUuidString());
    case R4ResourceType.RequestGroup:
      return (resource as RequestGroup).copyWith(id: generateNewUuidString());
    case R4ResourceType.ResearchDefinition:
      return (resource as ResearchDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ResearchElementDefinition:
      return (resource as ResearchElementDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ResearchStudy:
      return (resource as ResearchStudy).copyWith(id: generateNewUuidString());
    case R4ResourceType.ResearchSubject:
      return (resource as ResearchSubject)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.RiskAssessment:
      return (resource as RiskAssessment).copyWith(id: generateNewUuidString());
    case R4ResourceType.Schedule:
      return (resource as Schedule).copyWith(id: generateNewUuidString());
    case R4ResourceType.SearchParameter:
      return (resource as SearchParameter)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.ServiceRequest:
      return (resource as ServiceRequest).copyWith(id: generateNewUuidString());
    case R4ResourceType.Slot:
      return (resource as Slot).copyWith(id: generateNewUuidString());
    case R4ResourceType.Specimen:
      return (resource as Specimen).copyWith(id: generateNewUuidString());
    case R4ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.StructureDefinition:
      return (resource as StructureDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.StructureMap:
      return (resource as StructureMap).copyWith(id: generateNewUuidString());
    case R4ResourceType.Subscription:
      return (resource as Subscription).copyWith(id: generateNewUuidString());
    case R4ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatus)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopic)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.Substance:
      return (resource as Substance).copyWith(id: generateNewUuidString());
    case R4ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinition)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.SupplyDelivery:
      return (resource as SupplyDelivery).copyWith(id: generateNewUuidString());
    case R4ResourceType.SupplyRequest:
      return (resource as SupplyRequest).copyWith(id: generateNewUuidString());
    case R4ResourceType.Task:
      return (resource as Task).copyWith(id: generateNewUuidString());
    case R4ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilities)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.TestReport:
      return (resource as TestReport).copyWith(id: generateNewUuidString());
    case R4ResourceType.TestScript:
      return (resource as TestScript).copyWith(id: generateNewUuidString());
    case R4ResourceType.ValueSet:
      return (resource as ValueSet).copyWith(id: generateNewUuidString());
    case R4ResourceType.VerificationResult:
      return (resource as VerificationResult)
          .copyWith(id: generateNewUuidString());
    case R4ResourceType.VisionPrescription:
      return (resource as VisionPrescription)
          .copyWith(id: generateNewUuidString());
    case null:
      throw FormatException(
          '${resource.resourceType} is not a defined resourceType');
  }
}
