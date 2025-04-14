import 'package:fhir_r4/fhir_r4.dart' show R4ResourceType;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

/// Creates a new [id] for the Resources that's passed
ResourceBuilder resourceWithNewId(ResourceBuilder resource) {
  final newId = generateNewUuidFhirString();
  switch (resource.resourceType) {
    case R4ResourceType.Account:
      return (resource as AccountBuilder).copyWith(id: newId);
    case R4ResourceType.ActivityDefinition:
      return (resource as ActivityDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinitionBuilder)
          .copyWith(id: newId);
    case R4ResourceType.AdverseEvent:
      return (resource as AdverseEventBuilder).copyWith(id: newId);
    case R4ResourceType.AllergyIntolerance:
      return (resource as AllergyIntoleranceBuilder).copyWith(id: newId);
    case R4ResourceType.Appointment:
      return (resource as AppointmentBuilder).copyWith(id: newId);
    case R4ResourceType.AppointmentResponse:
      return (resource as AppointmentResponseBuilder).copyWith(id: newId);
    case R4ResourceType.AuditEvent:
      return (resource as AuditEventBuilder).copyWith(id: newId);
    case R4ResourceType.Basic:
      return (resource as BasicBuilder).copyWith(id: newId);
    case R4ResourceType.Binary:
      return (resource as BinaryBuilder).copyWith(id: newId);
    case R4ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProductBuilder)
          .copyWith(id: newId);
    case R4ResourceType.BodyStructure:
      return (resource as BodyStructureBuilder).copyWith(id: newId);
    case R4ResourceType.Bundle:
      return (resource as BundleBuilder).copyWith(id: newId);
    case R4ResourceType.CapabilityStatement:
      return (resource as CapabilityStatementBuilder).copyWith(id: newId);
    case R4ResourceType.CarePlan:
      return (resource as CarePlanBuilder).copyWith(id: newId);
    case R4ResourceType.CareTeam:
      return (resource as CareTeamBuilder).copyWith(id: newId);
    case R4ResourceType.CatalogEntry:
      return (resource as CatalogEntryBuilder).copyWith(id: newId);
    case R4ResourceType.ChargeItem:
      return (resource as ChargeItemBuilder).copyWith(id: newId);
    case R4ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.Citation:
      return (resource as CitationBuilder).copyWith(id: newId);
    case R4ResourceType.Claim:
      return (resource as ClaimBuilder).copyWith(id: newId);
    case R4ResourceType.ClaimResponse:
      return (resource as ClaimResponseBuilder).copyWith(id: newId);
    case R4ResourceType.ClinicalImpression:
      return (resource as ClinicalImpressionBuilder).copyWith(id: newId);
    case R4ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.CodeSystem:
      return (resource as CodeSystemBuilder).copyWith(id: newId);
    case R4ResourceType.Communication:
      return (resource as CommunicationBuilder).copyWith(id: newId);
    case R4ResourceType.CommunicationRequest:
      return (resource as CommunicationRequestBuilder).copyWith(id: newId);
    case R4ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.Composition:
      return (resource as CompositionBuilder).copyWith(id: newId);
    case R4ResourceType.ConceptMap:
      return (resource as ConceptMapBuilder).copyWith(id: newId);
    case R4ResourceType.Condition:
      return (resource as ConditionBuilder).copyWith(id: newId);
    case R4ResourceType.Consent:
      return (resource as ConsentBuilder).copyWith(id: newId);
    case R4ResourceType.Contract:
      return (resource as ContractBuilder).copyWith(id: newId);
    case R4ResourceType.Coverage:
      return (resource as CoverageBuilder).copyWith(id: newId);
    case R4ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequestBuilder)
          .copyWith(id: newId);
    case R4ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponseBuilder)
          .copyWith(id: newId);
    case R4ResourceType.DetectedIssue:
      return (resource as DetectedIssueBuilder).copyWith(id: newId);
    case R4ResourceType.Device:
      return (resource as DeviceBuilder).copyWith(id: newId);
    case R4ResourceType.DeviceDefinition:
      return (resource as DeviceDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.DeviceMetric:
      return (resource as DeviceMetricBuilder).copyWith(id: newId);
    case R4ResourceType.DeviceRequest:
      return (resource as DeviceRequestBuilder).copyWith(id: newId);
    case R4ResourceType.DeviceUseStatement:
      return (resource as DeviceUseStatementBuilder).copyWith(id: newId);
    case R4ResourceType.DiagnosticReport:
      return (resource as DiagnosticReportBuilder).copyWith(id: newId);
    case R4ResourceType.DocumentManifest:
      return (resource as DocumentManifestBuilder).copyWith(id: newId);
    case R4ResourceType.DocumentReference:
      return (resource as DocumentReferenceBuilder).copyWith(id: newId);
    case R4ResourceType.Encounter:
      return (resource as EncounterBuilder).copyWith(id: newId);
    case R4ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequestBuilder).copyWith(id: newId);
    case R4ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponseBuilder).copyWith(id: newId);
    case R4ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCareBuilder).copyWith(id: newId);
    case R4ResourceType.EventDefinition:
      return (resource as EventDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.Evidence:
      return (resource as EvidenceBuilder).copyWith(id: newId);
    case R4ResourceType.EvidenceReport:
      return (resource as EvidenceReportBuilder).copyWith(id: newId);
    case R4ResourceType.EvidenceVariable:
      return (resource as EvidenceVariableBuilder).copyWith(id: newId);
    case R4ResourceType.ExampleScenario:
      return (resource as ExampleScenarioBuilder).copyWith(id: newId);
    case R4ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefitBuilder).copyWith(id: newId);
    case R4ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistoryBuilder).copyWith(id: newId);
    case R4ResourceType.FhirEndpoint:
      return (resource as FhirEndpointBuilder).copyWith(id: newId);
    case R4ResourceType.FhirGroup:
      return (resource as FhirGroupBuilder).copyWith(id: newId);
    case R4ResourceType.FhirList:
      return (resource as FhirListBuilder).copyWith(id: newId);
    case R4ResourceType.Flag:
      return (resource as FlagBuilder).copyWith(id: newId);
    case R4ResourceType.Goal:
      return (resource as GoalBuilder).copyWith(id: newId);
    case R4ResourceType.GraphDefinition:
      return (resource as GraphDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.GuidanceResponse:
      return (resource as GuidanceResponseBuilder).copyWith(id: newId);
    case R4ResourceType.HealthcareService:
      return (resource as HealthcareServiceBuilder).copyWith(id: newId);
    case R4ResourceType.ImagingStudy:
      return (resource as ImagingStudyBuilder).copyWith(id: newId);
    case R4ResourceType.Immunization:
      return (resource as ImmunizationBuilder).copyWith(id: newId);
    case R4ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluationBuilder).copyWith(id: newId);
    case R4ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendationBuilder)
          .copyWith(id: newId);
    case R4ResourceType.ImplementationGuide:
      return (resource as ImplementationGuideBuilder).copyWith(id: newId);
    case R4ResourceType.Ingredient:
      return (resource as IngredientBuilder).copyWith(id: newId);
    case R4ResourceType.InsurancePlan:
      return (resource as InsurancePlanBuilder).copyWith(id: newId);
    case R4ResourceType.Invoice:
      return (resource as InvoiceBuilder).copyWith(id: newId);
    case R4ResourceType.Library:
      return (resource as LibraryBuilder).copyWith(id: newId);
    case R4ResourceType.Linkage:
      return (resource as LinkageBuilder).copyWith(id: newId);
    case R4ResourceType.Location:
      return (resource as LocationBuilder).copyWith(id: newId);
    case R4ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinitionBuilder)
          .copyWith(id: newId);
    case R4ResourceType.Measure:
      return (resource as MeasureBuilder).copyWith(id: newId);
    case R4ResourceType.MeasureReport:
      return (resource as MeasureReportBuilder).copyWith(id: newId);
    case R4ResourceType.Media:
      return (resource as MediaBuilder).copyWith(id: newId);
    case R4ResourceType.Medication:
      return (resource as MedicationBuilder).copyWith(id: newId);
    case R4ResourceType.MedicationAdministration:
      return (resource as MedicationAdministrationBuilder).copyWith(id: newId);
    case R4ResourceType.MedicationDispense:
      return (resource as MedicationDispenseBuilder).copyWith(id: newId);
    case R4ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledgeBuilder).copyWith(id: newId);
    case R4ResourceType.MedicationRequest:
      return (resource as MedicationRequestBuilder).copyWith(id: newId);
    case R4ResourceType.MedicationStatement:
      return (resource as MedicationStatementBuilder).copyWith(id: newId);
    case R4ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinitionBuilder)
          .copyWith(id: newId);
    case R4ResourceType.MessageDefinition:
      return (resource as MessageDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.MessageHeader:
      return (resource as MessageHeaderBuilder).copyWith(id: newId);
    case R4ResourceType.MolecularSequence:
      return (resource as MolecularSequenceBuilder).copyWith(id: newId);
    case R4ResourceType.NamingSystem:
      return (resource as NamingSystemBuilder).copyWith(id: newId);
    case R4ResourceType.NutritionOrder:
      return (resource as NutritionOrderBuilder).copyWith(id: newId);
    case R4ResourceType.NutritionProduct:
      return (resource as NutritionProductBuilder).copyWith(id: newId);
    case R4ResourceType.Observation:
      return (resource as ObservationBuilder).copyWith(id: newId);
    case R4ResourceType.ObservationDefinition:
      return (resource as ObservationDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.OperationDefinition:
      return (resource as OperationDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.OperationOutcome:
      return (resource as OperationOutcomeBuilder).copyWith(id: newId);
    case R4ResourceType.Organization:
      return (resource as OrganizationBuilder).copyWith(id: newId);
    case R4ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliationBuilder).copyWith(id: newId);
    case R4ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.Parameters:
      return (resource as ParametersBuilder).copyWith(id: newId);
    case R4ResourceType.Patient:
      return (resource as PatientBuilder).copyWith(id: newId);
    case R4ResourceType.PaymentNotice:
      return (resource as PaymentNoticeBuilder).copyWith(id: newId);
    case R4ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliationBuilder).copyWith(id: newId);
    case R4ResourceType.Person:
      return (resource as PersonBuilder).copyWith(id: newId);
    case R4ResourceType.PlanDefinition:
      return (resource as PlanDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.Practitioner:
      return (resource as PractitionerBuilder).copyWith(id: newId);
    case R4ResourceType.PractitionerRole:
      return (resource as PractitionerRoleBuilder).copyWith(id: newId);
    case R4ResourceType.Procedure:
      return (resource as ProcedureBuilder).copyWith(id: newId);
    case R4ResourceType.Provenance:
      return (resource as ProvenanceBuilder).copyWith(id: newId);
    case R4ResourceType.Questionnaire:
      return (resource as QuestionnaireBuilder).copyWith(id: newId);
    case R4ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponseBuilder).copyWith(id: newId);
    case R4ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorizationBuilder).copyWith(id: newId);
    case R4ResourceType.RelatedPerson:
      return (resource as RelatedPersonBuilder).copyWith(id: newId);
    case R4ResourceType.RequestGroup:
      return (resource as RequestGroupBuilder).copyWith(id: newId);
    case R4ResourceType.ResearchDefinition:
      return (resource as ResearchDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.ResearchElementDefinition:
      return (resource as ResearchElementDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.ResearchStudy:
      return (resource as ResearchStudyBuilder).copyWith(id: newId);
    case R4ResourceType.ResearchSubject:
      return (resource as ResearchSubjectBuilder).copyWith(id: newId);
    case R4ResourceType.RiskAssessment:
      return (resource as RiskAssessmentBuilder).copyWith(id: newId);
    case R4ResourceType.Schedule:
      return (resource as ScheduleBuilder).copyWith(id: newId);
    case R4ResourceType.SearchParameter:
      return (resource as SearchParameterBuilder).copyWith(id: newId);
    case R4ResourceType.ServiceRequest:
      return (resource as ServiceRequestBuilder).copyWith(id: newId);
    case R4ResourceType.Slot:
      return (resource as SlotBuilder).copyWith(id: newId);
    case R4ResourceType.Specimen:
      return (resource as SpecimenBuilder).copyWith(id: newId);
    case R4ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.StructureDefinition:
      return (resource as StructureDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.StructureMap:
      return (resource as StructureMapBuilder).copyWith(id: newId);
    case R4ResourceType.Subscription:
      return (resource as SubscriptionBuilder).copyWith(id: newId);
    case R4ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatusBuilder).copyWith(id: newId);
    case R4ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopicBuilder).copyWith(id: newId);
    case R4ResourceType.Substance:
      return (resource as SubstanceBuilder).copyWith(id: newId);
    case R4ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinitionBuilder).copyWith(id: newId);
    case R4ResourceType.SupplyDelivery:
      return (resource as SupplyDeliveryBuilder).copyWith(id: newId);
    case R4ResourceType.SupplyRequest:
      return (resource as SupplyRequestBuilder).copyWith(id: newId);
    case R4ResourceType.Task:
      return (resource as TaskBuilder).copyWith(id: newId);
    case R4ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilitiesBuilder).copyWith(id: newId);
    case R4ResourceType.TestReport:
      return (resource as TestReportBuilder).copyWith(id: newId);
    case R4ResourceType.TestScript:
      return (resource as TestScriptBuilder).copyWith(id: newId);
    case R4ResourceType.ValueSet:
      return (resource as ValueSetBuilder).copyWith(id: newId);
    case R4ResourceType.VerificationResult:
      return (resource as VerificationResultBuilder).copyWith(id: newId);
    case R4ResourceType.VisionPrescription:
      return (resource as VisionPrescriptionBuilder).copyWith(id: newId);
  }
}
