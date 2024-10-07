import '../../../fhir_r4.dart';

/// Returns a [FhirMeta] object, creates a new one if none is passed, otherwise
/// updates the [lastUpdated] and increases the [version] by 1
FhirMeta updateFhirMetaVersion(FhirMeta? oldFhirMeta,
    [bool versionIdAsTime = false]) {
  final DateTime now = DateTime.now().toUtc();
  if (versionIdAsTime) {
    if (oldFhirMeta == null) {
      return FhirMeta(
        lastUpdated: FhirInstant(now),
        versionId: FhirId(now.toIso8601String().replaceAll(':', '.')),
      );
    } else {
      return oldFhirMeta.copy(
        lastUpdated: FhirInstant(now),
        versionId: FhirId(now.toIso8601String().replaceAll(':', '.')),
      );
    }
  }
  final int version = oldFhirMeta == null
      ? 1
      : oldFhirMeta.versionId == null
          ? 1
          : int.parse(oldFhirMeta.versionId.toString()) + 1;
  if (oldFhirMeta == null) {
    return FhirMeta(
      lastUpdated: FhirInstant(now),
      versionId: FhirId(version.toString()),
    );
  } else {
    return oldFhirMeta.copy(
      lastUpdated: FhirInstant(now),
      versionId: FhirId(version.toString()),
    );
  }
}

/// Updates the [meta] field of this Resource, updates the meta.lastUpdated
/// field, adds 1 to the version number and adds an [Id] if there is not already
/// one, accepts [meta] as an argument and will update that field, otherwise
/// will try and update the [meta] field already in the resource
Resource updateMeta(Resource resource,
    {FhirMeta? meta, bool versionIdAsTime = false}) {
  final FhirMeta newMeta =
      updateFhirMetaVersion(meta ?? resource.meta, versionIdAsTime);
  switch (resource.resourceType) {
    case R4ResourceType.Account:
      return (resource as Account).copy(meta: newMeta);
    case R4ResourceType.ActivityDefinition:
      return (resource as ActivityDefinition).copy(meta: newMeta);
    case R4ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinition).copy(meta: newMeta);
    case R4ResourceType.AdverseEvent:
      return (resource as AdverseEvent).copy(meta: newMeta);
    case R4ResourceType.AllergyIntolerance:
      return (resource as AllergyIntolerance).copy(meta: newMeta);
    case R4ResourceType.Appointment:
      return (resource as Appointment).copy(meta: newMeta);
    case R4ResourceType.AppointmentResponse:
      return (resource as AppointmentResponse).copy(meta: newMeta);
    case R4ResourceType.AuditEvent:
      return (resource as AuditEvent).copy(meta: newMeta);
    case R4ResourceType.Basic:
      return (resource as Basic).copy(meta: newMeta);
    case R4ResourceType.Binary:
      return (resource as Binary).copy(meta: newMeta);
    case R4ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProduct).copy(meta: newMeta);
    case R4ResourceType.BodyStructure:
      return (resource as BodyStructure).copy(meta: newMeta);
    case R4ResourceType.Bundle:
      return (resource as Bundle).copy(meta: newMeta);
    case R4ResourceType.CapabilityStatement:
      return (resource as CapabilityStatement).copy(meta: newMeta);
    case R4ResourceType.CarePlan:
      return (resource as CarePlan).copy(meta: newMeta);
    case R4ResourceType.CareTeam:
      return (resource as CareTeam).copy(meta: newMeta);
    case R4ResourceType.CatalogEntry:
      return (resource as CatalogEntry).copy(meta: newMeta);
    case R4ResourceType.ChargeItem:
      return (resource as ChargeItem).copy(meta: newMeta);
    case R4ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinition).copy(meta: newMeta);
    case R4ResourceType.Citation:
      return (resource as Citation).copy(meta: newMeta);
    case R4ResourceType.Claim:
      return (resource as Claim).copy(meta: newMeta);
    case R4ResourceType.ClaimResponse:
      return (resource as ClaimResponse).copy(meta: newMeta);
    case R4ResourceType.ClinicalImpression:
      return (resource as ClinicalImpression).copy(meta: newMeta);
    case R4ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinition).copy(meta: newMeta);
    case R4ResourceType.CodeSystem:
      return (resource as CodeSystem).copy(meta: newMeta);
    case R4ResourceType.Communication:
      return (resource as Communication).copy(meta: newMeta);
    case R4ResourceType.CommunicationRequest:
      return (resource as CommunicationRequest).copy(meta: newMeta);
    case R4ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinition).copy(meta: newMeta);
    case R4ResourceType.Composition:
      return (resource as Composition).copy(meta: newMeta);
    case R4ResourceType.ConceptMap:
      return (resource as ConceptMap).copy(meta: newMeta);
    case R4ResourceType.Condition:
      return (resource as Condition).copy(meta: newMeta);
    case R4ResourceType.Consent:
      return (resource as Consent).copy(meta: newMeta);
    case R4ResourceType.Contract:
      return (resource as Contract).copy(meta: newMeta);
    case R4ResourceType.Coverage:
      return (resource as Coverage).copy(meta: newMeta);
    case R4ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequest).copy(meta: newMeta);
    case R4ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponse).copy(meta: newMeta);
    case R4ResourceType.DetectedIssue:
      return (resource as DetectedIssue).copy(meta: newMeta);
    case R4ResourceType.Device:
      return (resource as Device).copy(meta: newMeta);
    case R4ResourceType.DeviceDefinition:
      return (resource as DeviceDefinition).copy(meta: newMeta);
    case R4ResourceType.DeviceMetric:
      return (resource as DeviceMetric).copy(meta: newMeta);
    case R4ResourceType.DeviceRequest:
      return (resource as DeviceRequest).copy(meta: newMeta);
    case R4ResourceType.DeviceUseStatement:
      return (resource as DeviceUseStatement).copy(meta: newMeta);
    case R4ResourceType.DiagnosticReport:
      return (resource as DiagnosticReport).copy(meta: newMeta);
    case R4ResourceType.DocumentManifest:
      return (resource as DocumentManifest).copy(meta: newMeta);
    case R4ResourceType.DocumentReference:
      return (resource as DocumentReference).copy(meta: newMeta);
    case R4ResourceType.Encounter:
      return (resource as Encounter).copy(meta: newMeta);
    case R4ResourceType.FhirEndpoint:
      return (resource as FhirEndpoint).copy(meta: newMeta);
    case R4ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequest).copy(meta: newMeta);
    case R4ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponse).copy(meta: newMeta);
    case R4ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCare).copy(meta: newMeta);
    case R4ResourceType.EventDefinition:
      return (resource as EventDefinition).copy(meta: newMeta);
    case R4ResourceType.Evidence:
      return (resource as Evidence).copy(meta: newMeta);
    case R4ResourceType.EvidenceReport:
      return (resource as EvidenceReport).copy(meta: newMeta);
    case R4ResourceType.EvidenceVariable:
      return (resource as EvidenceVariable).copy(meta: newMeta);
    case R4ResourceType.ExampleScenario:
      return (resource as ExampleScenario).copy(meta: newMeta);
    case R4ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefit).copy(meta: newMeta);
    case R4ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistory).copy(meta: newMeta);
    case R4ResourceType.Flag:
      return (resource as Flag).copy(meta: newMeta);
    case R4ResourceType.Goal:
      return (resource as Goal).copy(meta: newMeta);
    case R4ResourceType.GraphDefinition:
      return (resource as GraphDefinition).copy(meta: newMeta);
    case R4ResourceType.FhirGroup:
      return (resource as FhirGroup).copy(meta: newMeta);
    case R4ResourceType.GuidanceResponse:
      return (resource as GuidanceResponse).copy(meta: newMeta);
    case R4ResourceType.HealthcareService:
      return (resource as HealthcareService).copy(meta: newMeta);
    case R4ResourceType.ImagingStudy:
      return (resource as ImagingStudy).copy(meta: newMeta);
    case R4ResourceType.Immunization:
      return (resource as Immunization).copy(meta: newMeta);
    case R4ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluation).copy(meta: newMeta);
    case R4ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendation).copy(meta: newMeta);
    case R4ResourceType.ImplementationGuide:
      return (resource as ImplementationGuide).copy(meta: newMeta);
    case R4ResourceType.Ingredient:
      return (resource as Ingredient).copy(meta: newMeta);
    case R4ResourceType.InsurancePlan:
      return (resource as InsurancePlan).copy(meta: newMeta);
    case R4ResourceType.Invoice:
      return (resource as Invoice).copy(meta: newMeta);
    case R4ResourceType.Library:
      return (resource as Library).copy(meta: newMeta);
    case R4ResourceType.Linkage:
      return (resource as Linkage).copy(meta: newMeta);
    case R4ResourceType.FhirList:
      return (resource as FhirList).copy(meta: newMeta);
    case R4ResourceType.Location:
      return (resource as Location).copy(meta: newMeta);
    case R4ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinition).copy(meta: newMeta);
    case R4ResourceType.Measure:
      return (resource as Measure).copy(meta: newMeta);
    case R4ResourceType.MeasureReport:
      return (resource as MeasureReport).copy(meta: newMeta);
    case R4ResourceType.Media:
      return (resource as Media).copy(meta: newMeta);
    case R4ResourceType.Medication:
      return (resource as Medication).copy(meta: newMeta);
    case R4ResourceType.MedicationAdministration:
      return (resource as MedicationAdministration).copy(meta: newMeta);
    case R4ResourceType.MedicationDispense:
      return (resource as MedicationDispense).copy(meta: newMeta);
    case R4ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledge).copy(meta: newMeta);
    case R4ResourceType.MedicationRequest:
      return (resource as MedicationRequest).copy(meta: newMeta);
    case R4ResourceType.MedicationStatement:
      return (resource as MedicationStatement).copy(meta: newMeta);
    case R4ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinition).copy(meta: newMeta);
    case R4ResourceType.MessageDefinition:
      return (resource as MessageDefinition).copy(meta: newMeta);
    case R4ResourceType.MessageHeader:
      return (resource as MessageHeader).copy(meta: newMeta);
    case R4ResourceType.MolecularSequence:
      return (resource as MolecularSequence).copy(meta: newMeta);
    case R4ResourceType.NamingSystem:
      return (resource as NamingSystem).copy(meta: newMeta);
    case R4ResourceType.NutritionOrder:
      return (resource as NutritionOrder).copy(meta: newMeta);
    case R4ResourceType.NutritionProduct:
      return (resource as NutritionProduct).copy(meta: newMeta);
    case R4ResourceType.Observation:
      return (resource as Observation).copy(meta: newMeta);
    case R4ResourceType.ObservationDefinition:
      return (resource as ObservationDefinition).copy(meta: newMeta);
    case R4ResourceType.OperationDefinition:
      return (resource as OperationDefinition).copy(meta: newMeta);
    case R4ResourceType.OperationOutcome:
      return (resource as OperationOutcome).copy(meta: newMeta);
    case R4ResourceType.Organization:
      return (resource as Organization).copy(meta: newMeta);
    case R4ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliation).copy(meta: newMeta);
    case R4ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinition).copy(meta: newMeta);
    case R4ResourceType.Parameters:
      return (resource as Parameters).copy(meta: newMeta);
    case R4ResourceType.Patient:
      return (resource as Patient).copy(meta: newMeta);
    case R4ResourceType.PaymentNotice:
      return (resource as PaymentNotice).copy(meta: newMeta);
    case R4ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliation).copy(meta: newMeta);
    case R4ResourceType.Person:
      return (resource as Person).copy(meta: newMeta);
    case R4ResourceType.PlanDefinition:
      return (resource as PlanDefinition).copy(meta: newMeta);
    case R4ResourceType.Practitioner:
      return (resource as Practitioner).copy(meta: newMeta);
    case R4ResourceType.PractitionerRole:
      return (resource as PractitionerRole).copy(meta: newMeta);
    case R4ResourceType.Procedure:
      return (resource as Procedure).copy(meta: newMeta);
    case R4ResourceType.Provenance:
      return (resource as Provenance).copy(meta: newMeta);
    case R4ResourceType.Questionnaire:
      return (resource as Questionnaire).copy(meta: newMeta);
    case R4ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponse).copy(meta: newMeta);
    case R4ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorization).copy(meta: newMeta);
    case R4ResourceType.RelatedPerson:
      return (resource as RelatedPerson).copy(meta: newMeta);
    case R4ResourceType.RequestGroup:
      return (resource as RequestGroup).copy(meta: newMeta);
    case R4ResourceType.ResearchDefinition:
      return (resource as ResearchDefinition).copy(meta: newMeta);
    case R4ResourceType.ResearchElementDefinition:
      return (resource as ResearchElementDefinition).copy(meta: newMeta);
    case R4ResourceType.ResearchStudy:
      return (resource as ResearchStudy).copy(meta: newMeta);
    case R4ResourceType.ResearchSubject:
      return (resource as ResearchSubject).copy(meta: newMeta);
    case R4ResourceType.RiskAssessment:
      return (resource as RiskAssessment).copy(meta: newMeta);
    case R4ResourceType.Schedule:
      return (resource as Schedule).copy(meta: newMeta);
    case R4ResourceType.SearchParameter:
      return (resource as SearchParameter).copy(meta: newMeta);
    case R4ResourceType.ServiceRequest:
      return (resource as ServiceRequest).copy(meta: newMeta);
    case R4ResourceType.Slot:
      return (resource as Slot).copy(meta: newMeta);
    case R4ResourceType.Specimen:
      return (resource as Specimen).copy(meta: newMeta);
    case R4ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinition).copy(meta: newMeta);
    case R4ResourceType.StructureDefinition:
      return (resource as StructureDefinition).copy(meta: newMeta);
    case R4ResourceType.StructureMap:
      return (resource as StructureMap).copy(meta: newMeta);
    case R4ResourceType.Subscription:
      return (resource as Subscription).copy(meta: newMeta);
    case R4ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatus).copy(meta: newMeta);
    case R4ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopic).copy(meta: newMeta);
    case R4ResourceType.Substance:
      return (resource as Substance).copy(meta: newMeta);
    case R4ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinition).copy(meta: newMeta);
    case R4ResourceType.SupplyDelivery:
      return (resource as SupplyDelivery).copy(meta: newMeta);
    case R4ResourceType.SupplyRequest:
      return (resource as SupplyRequest).copy(meta: newMeta);
    case R4ResourceType.Task:
      return (resource as Task).copy(meta: newMeta);
    case R4ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilities).copy(meta: newMeta);
    case R4ResourceType.TestReport:
      return (resource as TestReport).copy(meta: newMeta);
    case R4ResourceType.TestScript:
      return (resource as TestScript).copy(meta: newMeta);
    case R4ResourceType.ValueSet:
      return (resource as ValueSet).copy(meta: newMeta);
    case R4ResourceType.VerificationResult:
      return (resource as VerificationResult).copy(meta: newMeta);
    case R4ResourceType.VisionPrescription:
      return (resource as VisionPrescription).copy(meta: newMeta);
  }
}
