import 'package:fhir_r4/fhir_r4.dart' show R4ResourceType;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Returns a [FhirMetaBuilder] object, creates a new one if none is passed, otherwise
/// updates the [lastUpdated] and increases the [version] by 1
FhirMetaBuilder updateFhirMetaVersion(
  FhirMetaBuilder? oldFhirMeta, [
  // ignore: avoid_positional_boolean_parameters
  bool versionIdAsTime = false,
]) {
  final now = DateTime.now().toUtc();
  if (versionIdAsTime) {
    if (oldFhirMeta == null) {
      return FhirMetaBuilder(
        lastUpdated: FhirInstantBuilder.fromDateTime(now),
        versionId: FhirIdBuilder(now.toIso8601String().replaceAll(':', '.')),
      );
    } else {
      return oldFhirMeta.copyWith(
        lastUpdated: FhirInstantBuilder.fromDateTime(now),
        versionId: FhirIdBuilder(now.toIso8601String().replaceAll(':', '.')),
      );
    }
  }
  final version = oldFhirMeta == null
      ? 1
      : oldFhirMeta.versionId == null
          ? 1
          : int.parse(oldFhirMeta.versionId.toString()) + 1;
  if (oldFhirMeta == null) {
    return FhirMetaBuilder(
      lastUpdated: FhirInstantBuilder.fromDateTime(now),
      versionId: FhirIdBuilder(version.toString()),
    );
  } else {
    return oldFhirMeta.copyWith(
      lastUpdated: FhirInstantBuilder.fromDateTime(now),
      versionId: FhirIdBuilder(version.toString()),
    );
  }
}

/// Updates the [meta] field of this Resource, updates the meta.lastUpdated
/// field, adds 1 to the version number and adds an [Id] if there is not already
/// one, accepts [meta] as an argument and will update that field, otherwise
/// will try and update the [meta] field already in the resource
ResourceBuilder updateMeta(
  ResourceBuilder resource, {
  FhirMetaBuilder? meta,
  bool versionIdAsTime = false,
}) {
  final newMeta = updateFhirMetaVersion(meta ?? resource.meta, versionIdAsTime);
  switch (resource.resourceType) {
    case R4ResourceType.Account:
      return (resource as AccountBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ActivityDefinition:
      return (resource as ActivityDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.AdverseEvent:
      return (resource as AdverseEventBuilder).copyWith(meta: newMeta);
    case R4ResourceType.AllergyIntolerance:
      return (resource as AllergyIntoleranceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Appointment:
      return (resource as AppointmentBuilder).copyWith(meta: newMeta);
    case R4ResourceType.AppointmentResponse:
      return (resource as AppointmentResponseBuilder).copyWith(meta: newMeta);
    case R4ResourceType.AuditEvent:
      return (resource as AuditEventBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Basic:
      return (resource as BasicBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Binary:
      return (resource as BinaryBuilder).copyWith(meta: newMeta);
    case R4ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProductBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.BodyStructure:
      return (resource as BodyStructureBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Bundle:
      return (resource as BundleBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CapabilityStatement:
      return (resource as CapabilityStatementBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CarePlan:
      return (resource as CarePlanBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CareTeam:
      return (resource as CareTeamBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CatalogEntry:
      return (resource as CatalogEntryBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ChargeItem:
      return (resource as ChargeItemBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Citation:
      return (resource as CitationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Claim:
      return (resource as ClaimBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ClaimResponse:
      return (resource as ClaimResponseBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ClinicalImpression:
      return (resource as ClinicalImpressionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CodeSystem:
      return (resource as CodeSystemBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Communication:
      return (resource as CommunicationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CommunicationRequest:
      return (resource as CommunicationRequestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Composition:
      return (resource as CompositionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ConceptMap:
      return (resource as ConceptMapBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Condition:
      return (resource as ConditionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Consent:
      return (resource as ConsentBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Contract:
      return (resource as ContractBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Coverage:
      return (resource as CoverageBuilder).copyWith(meta: newMeta);
    case R4ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequestBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponseBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.DetectedIssue:
      return (resource as DetectedIssueBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Device:
      return (resource as DeviceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DeviceDefinition:
      return (resource as DeviceDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DeviceMetric:
      return (resource as DeviceMetricBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DeviceRequest:
      return (resource as DeviceRequestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DeviceUseStatement:
      return (resource as DeviceUseStatementBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DiagnosticReport:
      return (resource as DiagnosticReportBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DocumentManifest:
      return (resource as DocumentManifestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.DocumentReference:
      return (resource as DocumentReferenceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Encounter:
      return (resource as EncounterBuilder).copyWith(meta: newMeta);
    case R4ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponseBuilder).copyWith(meta: newMeta);
    case R4ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCareBuilder).copyWith(meta: newMeta);
    case R4ResourceType.EventDefinition:
      return (resource as EventDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Evidence:
      return (resource as EvidenceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.EvidenceReport:
      return (resource as EvidenceReportBuilder).copyWith(meta: newMeta);
    case R4ResourceType.EvidenceVariable:
      return (resource as EvidenceVariableBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ExampleScenario:
      return (resource as ExampleScenarioBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefitBuilder).copyWith(meta: newMeta);
    case R4ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistoryBuilder).copyWith(meta: newMeta);
    case R4ResourceType.FhirEndpoint:
      return (resource as FhirEndpointBuilder).copyWith(meta: newMeta);
    case R4ResourceType.FhirGroup:
      return (resource as FhirGroupBuilder).copyWith(meta: newMeta);
    case R4ResourceType.FhirList:
      return (resource as FhirListBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Flag:
      return (resource as FlagBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Goal:
      return (resource as GoalBuilder).copyWith(meta: newMeta);
    case R4ResourceType.GraphDefinition:
      return (resource as GraphDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.GuidanceResponse:
      return (resource as GuidanceResponseBuilder).copyWith(meta: newMeta);
    case R4ResourceType.HealthcareService:
      return (resource as HealthcareServiceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ImagingStudy:
      return (resource as ImagingStudyBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Immunization:
      return (resource as ImmunizationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluationBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendationBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.ImplementationGuide:
      return (resource as ImplementationGuideBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Ingredient:
      return (resource as IngredientBuilder).copyWith(meta: newMeta);
    case R4ResourceType.InsurancePlan:
      return (resource as InsurancePlanBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Invoice:
      return (resource as InvoiceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Library:
      return (resource as LibraryBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Linkage:
      return (resource as LinkageBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Location:
      return (resource as LocationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.Measure:
      return (resource as MeasureBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MeasureReport:
      return (resource as MeasureReportBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Media:
      return (resource as MediaBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Medication:
      return (resource as MedicationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MedicationAdministration:
      return (resource as MedicationAdministrationBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.MedicationDispense:
      return (resource as MedicationDispenseBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledgeBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MedicationRequest:
      return (resource as MedicationRequestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MedicationStatement:
      return (resource as MedicationStatementBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.MessageDefinition:
      return (resource as MessageDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MessageHeader:
      return (resource as MessageHeaderBuilder).copyWith(meta: newMeta);
    case R4ResourceType.MolecularSequence:
      return (resource as MolecularSequenceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.NamingSystem:
      return (resource as NamingSystemBuilder).copyWith(meta: newMeta);
    case R4ResourceType.NutritionOrder:
      return (resource as NutritionOrderBuilder).copyWith(meta: newMeta);
    case R4ResourceType.NutritionProduct:
      return (resource as NutritionProductBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Observation:
      return (resource as ObservationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ObservationDefinition:
      return (resource as ObservationDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.OperationDefinition:
      return (resource as OperationDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.OperationOutcome:
      return (resource as OperationOutcomeBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Organization:
      return (resource as OrganizationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliationBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.Parameters:
      return (resource as ParametersBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Patient:
      return (resource as PatientBuilder).copyWith(meta: newMeta);
    case R4ResourceType.PaymentNotice:
      return (resource as PaymentNoticeBuilder).copyWith(meta: newMeta);
    case R4ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliationBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Person:
      return (resource as PersonBuilder).copyWith(meta: newMeta);
    case R4ResourceType.PlanDefinition:
      return (resource as PlanDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Practitioner:
      return (resource as PractitionerBuilder).copyWith(meta: newMeta);
    case R4ResourceType.PractitionerRole:
      return (resource as PractitionerRoleBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Procedure:
      return (resource as ProcedureBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Provenance:
      return (resource as ProvenanceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Questionnaire:
      return (resource as QuestionnaireBuilder).copyWith(meta: newMeta);
    case R4ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponseBuilder).copyWith(meta: newMeta);
    case R4ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorizationBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.RelatedPerson:
      return (resource as RelatedPersonBuilder).copyWith(meta: newMeta);
    case R4ResourceType.RequestGroup:
      return (resource as RequestGroupBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ResearchDefinition:
      return (resource as ResearchDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ResearchElementDefinition:
      return (resource as ResearchElementDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.ResearchStudy:
      return (resource as ResearchStudyBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ResearchSubject:
      return (resource as ResearchSubjectBuilder).copyWith(meta: newMeta);
    case R4ResourceType.RiskAssessment:
      return (resource as RiskAssessmentBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Schedule:
      return (resource as ScheduleBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SearchParameter:
      return (resource as SearchParameterBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ServiceRequest:
      return (resource as ServiceRequestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Slot:
      return (resource as SlotBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Specimen:
      return (resource as SpecimenBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.StructureDefinition:
      return (resource as StructureDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.StructureMap:
      return (resource as StructureMapBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Subscription:
      return (resource as SubscriptionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatusBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopicBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Substance:
      return (resource as SubstanceBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinitionBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SupplyDelivery:
      return (resource as SupplyDeliveryBuilder).copyWith(meta: newMeta);
    case R4ResourceType.SupplyRequest:
      return (resource as SupplyRequestBuilder).copyWith(meta: newMeta);
    case R4ResourceType.Task:
      return (resource as TaskBuilder).copyWith(meta: newMeta);
    case R4ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilitiesBuilder)
          .copyWith(meta: newMeta);
    case R4ResourceType.TestReport:
      return (resource as TestReportBuilder).copyWith(meta: newMeta);
    case R4ResourceType.TestScript:
      return (resource as TestScriptBuilder).copyWith(meta: newMeta);
    case R4ResourceType.ValueSet:
      return (resource as ValueSetBuilder).copyWith(meta: newMeta);
    case R4ResourceType.VerificationResult:
      return (resource as VerificationResultBuilder).copyWith(meta: newMeta);
    case R4ResourceType.VisionPrescription:
      return (resource as VisionPrescriptionBuilder).copyWith(meta: newMeta);
  }
}
