// ignore_for_filelines_longer_than_80_chars
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// This function accepts a String path and a dynamic value
/// and attempts to create a FhirType from that value
extension ToBuilder on FhirBase {
  FhirBaseBuilder toBuilder() {
    switch (this) {
      case Account _:
        AccountBuilder.fromJson(toJson());
      case AccountCoverage _:
        AccountCoverageBuilder.fromJson(toJson());
      case AccountGuarantor _:
        AccountGuarantorBuilder.fromJson(toJson());
      case ActivityDefinition _:
        ActivityDefinitionBuilder.fromJson(toJson());
      case ActivityDefinitionParticipant _:
        ActivityDefinitionParticipantBuilder.fromJson(toJson());
      case ActivityDefinitionDynamicValue _:
        ActivityDefinitionDynamicValueBuilder.fromJson(toJson());
      case AdministrableProductDefinition _:
        AdministrableProductDefinitionBuilder.fromJson(toJson());
      case AdministrableProductDefinitionProperty _:
        AdministrableProductDefinitionPropertyBuilder.fromJson(toJson());
      case AdministrableProductDefinitionRouteOfAdministration _:
        AdministrableProductDefinitionRouteOfAdministrationBuilder.fromJson(
            toJson());
      case AdministrableProductDefinitionTargetSpecies _:
        AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(toJson());
      case AdministrableProductDefinitionWithdrawalPeriod _:
        AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
            toJson());
      case AdverseEvent _:
        AdverseEventBuilder.fromJson(toJson());
      case AdverseEventSuspectEntity _:
        AdverseEventSuspectEntityBuilder.fromJson(toJson());
      case AdverseEventCausality _:
        AdverseEventCausalityBuilder.fromJson(toJson());
      case AllergyIntolerance _:
        AllergyIntoleranceBuilder.fromJson(toJson());
      case AllergyIntoleranceReaction _:
        AllergyIntoleranceReactionBuilder.fromJson(toJson());
      case Appointment _:
        AppointmentBuilder.fromJson(toJson());
      case AppointmentParticipant _:
        AppointmentParticipantBuilder.fromJson(toJson());
      case AppointmentResponse _:
        AppointmentResponseBuilder.fromJson(toJson());
      case AuditEvent _:
        AuditEventBuilder.fromJson(toJson());
      case AuditEventAgent _:
        AuditEventAgentBuilder.fromJson(toJson());
      case AuditEventNetwork _:
        AuditEventNetworkBuilder.fromJson(toJson());
      case AuditEventSource _:
        AuditEventSourceBuilder.fromJson(toJson());
      case AuditEventEntity _:
        AuditEventEntityBuilder.fromJson(toJson());
      case AuditEventDetail _:
        AuditEventDetailBuilder.fromJson(toJson());
      case Basic _:
        BasicBuilder.fromJson(toJson());
      case Binary _:
        BinaryBuilder.fromJson(toJson());
      case BiologicallyDerivedProduct _:
        BiologicallyDerivedProductBuilder.fromJson(toJson());
      case BiologicallyDerivedProductCollection _:
        BiologicallyDerivedProductCollectionBuilder.fromJson(toJson());
      case BiologicallyDerivedProductProcessing _:
        BiologicallyDerivedProductProcessingBuilder.fromJson(toJson());
      case BiologicallyDerivedProductManipulation _:
        BiologicallyDerivedProductManipulationBuilder.fromJson(toJson());
      case BiologicallyDerivedProductStorage _:
        BiologicallyDerivedProductStorageBuilder.fromJson(toJson());
      case BodyStructure _:
        BodyStructureBuilder.fromJson(toJson());
      case Bundle _:
        BundleBuilder.fromJson(toJson());
      case BundleLink _:
        BundleLinkBuilder.fromJson(toJson());
      case BundleEntry _:
        BundleEntryBuilder.fromJson(toJson());
      case BundleSearch _:
        BundleSearchBuilder.fromJson(toJson());
      case BundleRequest _:
        BundleRequestBuilder.fromJson(toJson());
      case BundleResponse _:
        BundleResponseBuilder.fromJson(toJson());
      case CapabilityStatement _:
        CapabilityStatementBuilder.fromJson(toJson());
      case CapabilityStatementSoftware _:
        CapabilityStatementSoftwareBuilder.fromJson(toJson());
      case CapabilityStatementImplementation _:
        CapabilityStatementImplementationBuilder.fromJson(toJson());
      case CapabilityStatementRest _:
        CapabilityStatementRestBuilder.fromJson(toJson());
      case CapabilityStatementSecurity _:
        CapabilityStatementSecurityBuilder.fromJson(toJson());
      case CapabilityStatementResource _:
        CapabilityStatementResourceBuilder.fromJson(toJson());
      case CapabilityStatementInteraction _:
        CapabilityStatementInteractionBuilder.fromJson(toJson());
      case CapabilityStatementSearchParam _:
        CapabilityStatementSearchParamBuilder.fromJson(toJson());
      case CapabilityStatementOperation _:
        CapabilityStatementOperationBuilder.fromJson(toJson());
      case CapabilityStatementInteraction1 _:
        CapabilityStatementInteraction1Builder.fromJson(toJson());
      case CapabilityStatementMessaging _:
        CapabilityStatementMessagingBuilder.fromJson(toJson());
      case CapabilityStatementEndpoint _:
        CapabilityStatementEndpointBuilder.fromJson(toJson());
      case CapabilityStatementSupportedMessage _:
        CapabilityStatementSupportedMessageBuilder.fromJson(toJson());
      case CapabilityStatementDocument _:
        CapabilityStatementDocumentBuilder.fromJson(toJson());
      case CarePlan _:
        CarePlanBuilder.fromJson(toJson());
      case CarePlanActivity _:
        CarePlanActivityBuilder.fromJson(toJson());
      case CarePlanDetail _:
        CarePlanDetailBuilder.fromJson(toJson());
      case CareTeam _:
        CareTeamBuilder.fromJson(toJson());
      case CareTeamParticipant _:
        CareTeamParticipantBuilder.fromJson(toJson());
      case CatalogEntry _:
        CatalogEntryBuilder.fromJson(toJson());
      case CatalogEntryRelatedEntry _:
        CatalogEntryRelatedEntryBuilder.fromJson(toJson());
      case ChargeItem _:
        ChargeItemBuilder.fromJson(toJson());
      case ChargeItemPerformer _:
        ChargeItemPerformerBuilder.fromJson(toJson());
      case ChargeItemDefinition _:
        ChargeItemDefinitionBuilder.fromJson(toJson());
      case ChargeItemDefinitionApplicability _:
        ChargeItemDefinitionApplicabilityBuilder.fromJson(toJson());
      case ChargeItemDefinitionPropertyGroup _:
        ChargeItemDefinitionPropertyGroupBuilder.fromJson(toJson());
      case ChargeItemDefinitionPriceComponent _:
        ChargeItemDefinitionPriceComponentBuilder.fromJson(toJson());
      case Citation _:
        CitationBuilder.fromJson(toJson());
      case CitationSummary _:
        CitationSummaryBuilder.fromJson(toJson());
      case CitationClassification _:
        CitationClassificationBuilder.fromJson(toJson());
      case CitationStatusDate _:
        CitationStatusDateBuilder.fromJson(toJson());
      case CitationRelatesTo _:
        CitationRelatesToBuilder.fromJson(toJson());
      case CitationCitedArtifact _:
        CitationCitedArtifactBuilder.fromJson(toJson());
      case CitationVersion _:
        CitationVersionBuilder.fromJson(toJson());
      case CitationStatusDate1 _:
        CitationStatusDate1Builder.fromJson(toJson());
      case CitationTitle _:
        CitationTitleBuilder.fromJson(toJson());
      case CitationAbstract _:
        CitationAbstractBuilder.fromJson(toJson());
      case CitationPart _:
        CitationPartBuilder.fromJson(toJson());
      case CitationRelatesTo1 _:
        CitationRelatesTo1Builder.fromJson(toJson());
      case CitationPublicationForm _:
        CitationPublicationFormBuilder.fromJson(toJson());
      case CitationPublishedIn _:
        CitationPublishedInBuilder.fromJson(toJson());
      case CitationPeriodicRelease _:
        CitationPeriodicReleaseBuilder.fromJson(toJson());
      case CitationDateOfPublication _:
        CitationDateOfPublicationBuilder.fromJson(toJson());
      case CitationWebLocation _:
        CitationWebLocationBuilder.fromJson(toJson());
      case CitationClassification1 _:
        CitationClassification1Builder.fromJson(toJson());
      case CitationWhoClassified _:
        CitationWhoClassifiedBuilder.fromJson(toJson());
      case CitationContributorship _:
        CitationContributorshipBuilder.fromJson(toJson());
      case CitationEntry _:
        CitationEntryBuilder.fromJson(toJson());
      case CitationAffiliationInfo _:
        CitationAffiliationInfoBuilder.fromJson(toJson());
      case CitationContributionInstance _:
        CitationContributionInstanceBuilder.fromJson(toJson());
      case CitationSummary1 _:
        CitationSummary1Builder.fromJson(toJson());
      case Claim _:
        ClaimBuilder.fromJson(toJson());
      case ClaimRelated _:
        ClaimRelatedBuilder.fromJson(toJson());
      case ClaimPayee _:
        ClaimPayeeBuilder.fromJson(toJson());
      case ClaimCareTeam _:
        ClaimCareTeamBuilder.fromJson(toJson());
      case ClaimSupportingInfo _:
        ClaimSupportingInfoBuilder.fromJson(toJson());
      case ClaimDiagnosis _:
        ClaimDiagnosisBuilder.fromJson(toJson());
      case ClaimProcedure _:
        ClaimProcedureBuilder.fromJson(toJson());
      case ClaimInsurance _:
        ClaimInsuranceBuilder.fromJson(toJson());
      case ClaimAccident _:
        ClaimAccidentBuilder.fromJson(toJson());
      case ClaimItem _:
        ClaimItemBuilder.fromJson(toJson());
      case ClaimDetail _:
        ClaimDetailBuilder.fromJson(toJson());
      case ClaimSubDetail _:
        ClaimSubDetailBuilder.fromJson(toJson());
      case ClaimResponse _:
        ClaimResponseBuilder.fromJson(toJson());
      case ClaimResponseItem _:
        ClaimResponseItemBuilder.fromJson(toJson());
      case ClaimResponseAdjudication _:
        ClaimResponseAdjudicationBuilder.fromJson(toJson());
      case ClaimResponseDetail _:
        ClaimResponseDetailBuilder.fromJson(toJson());
      case ClaimResponseSubDetail _:
        ClaimResponseSubDetailBuilder.fromJson(toJson());
      case ClaimResponseAddItem _:
        ClaimResponseAddItemBuilder.fromJson(toJson());
      case ClaimResponseDetail1 _:
        ClaimResponseDetail1Builder.fromJson(toJson());
      case ClaimResponseSubDetail1 _:
        ClaimResponseSubDetail1Builder.fromJson(toJson());
      case ClaimResponseTotal _:
        ClaimResponseTotalBuilder.fromJson(toJson());
      case ClaimResponsePayment _:
        ClaimResponsePaymentBuilder.fromJson(toJson());
      case ClaimResponseProcessNote _:
        ClaimResponseProcessNoteBuilder.fromJson(toJson());
      case ClaimResponseInsurance _:
        ClaimResponseInsuranceBuilder.fromJson(toJson());
      case ClaimResponseError _:
        ClaimResponseErrorBuilder.fromJson(toJson());
      case ClinicalImpression _:
        ClinicalImpressionBuilder.fromJson(toJson());
      case ClinicalImpressionInvestigation _:
        ClinicalImpressionInvestigationBuilder.fromJson(toJson());
      case ClinicalImpressionFinding _:
        ClinicalImpressionFindingBuilder.fromJson(toJson());
      case ClinicalUseDefinition _:
        ClinicalUseDefinitionBuilder.fromJson(toJson());
      case ClinicalUseDefinitionContraindication _:
        ClinicalUseDefinitionContraindicationBuilder.fromJson(toJson());
      case ClinicalUseDefinitionOtherTherapy _:
        ClinicalUseDefinitionOtherTherapyBuilder.fromJson(toJson());
      case ClinicalUseDefinitionIndication _:
        ClinicalUseDefinitionIndicationBuilder.fromJson(toJson());
      case ClinicalUseDefinitionInteraction _:
        ClinicalUseDefinitionInteractionBuilder.fromJson(toJson());
      case ClinicalUseDefinitionInteractant _:
        ClinicalUseDefinitionInteractantBuilder.fromJson(toJson());
      case ClinicalUseDefinitionUndesirableEffect _:
        ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(toJson());
      case ClinicalUseDefinitionWarning _:
        ClinicalUseDefinitionWarningBuilder.fromJson(toJson());
      case CodeSystem _:
        CodeSystemBuilder.fromJson(toJson());
      case CodeSystemFilter _:
        CodeSystemFilterBuilder.fromJson(toJson());
      case CodeSystemProperty _:
        CodeSystemPropertyBuilder.fromJson(toJson());
      case CodeSystemConcept _:
        CodeSystemConceptBuilder.fromJson(toJson());
      case CodeSystemDesignation _:
        CodeSystemDesignationBuilder.fromJson(toJson());
      case CodeSystemProperty1 _:
        CodeSystemProperty1Builder.fromJson(toJson());
      case Communication _:
        CommunicationBuilder.fromJson(toJson());
      case CommunicationPayload _:
        CommunicationPayloadBuilder.fromJson(toJson());
      case CommunicationRequest _:
        CommunicationRequestBuilder.fromJson(toJson());
      case CommunicationRequestPayload _:
        CommunicationRequestPayloadBuilder.fromJson(toJson());
      case CompartmentDefinition _:
        CompartmentDefinitionBuilder.fromJson(toJson());
      case CompartmentDefinitionResource _:
        CompartmentDefinitionResourceBuilder.fromJson(toJson());
      case Composition _:
        CompositionBuilder.fromJson(toJson());
      case CompositionAttester _:
        CompositionAttesterBuilder.fromJson(toJson());
      case CompositionRelatesTo _:
        CompositionRelatesToBuilder.fromJson(toJson());
      case CompositionEvent _:
        CompositionEventBuilder.fromJson(toJson());
      case CompositionSection _:
        CompositionSectionBuilder.fromJson(toJson());
      case ConceptMap _:
        ConceptMapBuilder.fromJson(toJson());
      case ConceptMapGroup _:
        ConceptMapGroupBuilder.fromJson(toJson());
      case ConceptMapElement _:
        ConceptMapElementBuilder.fromJson(toJson());
      case ConceptMapTarget _:
        ConceptMapTargetBuilder.fromJson(toJson());
      case ConceptMapDependsOn _:
        ConceptMapDependsOnBuilder.fromJson(toJson());
      case ConceptMapUnmapped _:
        ConceptMapUnmappedBuilder.fromJson(toJson());
      case Condition _:
        ConditionBuilder.fromJson(toJson());
      case ConditionStage _:
        ConditionStageBuilder.fromJson(toJson());
      case ConditionEvidence _:
        ConditionEvidenceBuilder.fromJson(toJson());
      case Consent _:
        ConsentBuilder.fromJson(toJson());
      case ConsentPolicy _:
        ConsentPolicyBuilder.fromJson(toJson());
      case ConsentVerification _:
        ConsentVerificationBuilder.fromJson(toJson());
      case ConsentProvision _:
        ConsentProvisionBuilder.fromJson(toJson());
      case ConsentActor _:
        ConsentActorBuilder.fromJson(toJson());
      case ConsentData _:
        ConsentDataBuilder.fromJson(toJson());
      case Contract _:
        ContractBuilder.fromJson(toJson());
      case ContractContentDefinition _:
        ContractContentDefinitionBuilder.fromJson(toJson());
      case ContractTerm _:
        ContractTermBuilder.fromJson(toJson());
      case ContractSecurityLabel _:
        ContractSecurityLabelBuilder.fromJson(toJson());
      case ContractOffer _:
        ContractOfferBuilder.fromJson(toJson());
      case ContractParty _:
        ContractPartyBuilder.fromJson(toJson());
      case ContractAnswer _:
        ContractAnswerBuilder.fromJson(toJson());
      case ContractAsset _:
        ContractAssetBuilder.fromJson(toJson());
      case ContractContext _:
        ContractContextBuilder.fromJson(toJson());
      case ContractValuedItem _:
        ContractValuedItemBuilder.fromJson(toJson());
      case ContractAction _:
        ContractActionBuilder.fromJson(toJson());
      case ContractSubject _:
        ContractSubjectBuilder.fromJson(toJson());
      case ContractSigner _:
        ContractSignerBuilder.fromJson(toJson());
      case ContractFriendly _:
        ContractFriendlyBuilder.fromJson(toJson());
      case ContractLegal _:
        ContractLegalBuilder.fromJson(toJson());
      case ContractRule _:
        ContractRuleBuilder.fromJson(toJson());
      case Coverage _:
        CoverageBuilder.fromJson(toJson());
      case CoverageClass _:
        CoverageClassBuilder.fromJson(toJson());
      case CoverageCostToBeneficiary _:
        CoverageCostToBeneficiaryBuilder.fromJson(toJson());
      case CoverageException _:
        CoverageExceptionBuilder.fromJson(toJson());
      case CoverageEligibilityRequest _:
        CoverageEligibilityRequestBuilder.fromJson(toJson());
      case CoverageEligibilityRequestSupportingInfo _:
        CoverageEligibilityRequestSupportingInfoBuilder.fromJson(toJson());
      case CoverageEligibilityRequestInsurance _:
        CoverageEligibilityRequestInsuranceBuilder.fromJson(toJson());
      case CoverageEligibilityRequestItem _:
        CoverageEligibilityRequestItemBuilder.fromJson(toJson());
      case CoverageEligibilityRequestDiagnosis _:
        CoverageEligibilityRequestDiagnosisBuilder.fromJson(toJson());
      case CoverageEligibilityResponse _:
        CoverageEligibilityResponseBuilder.fromJson(toJson());
      case CoverageEligibilityResponseInsurance _:
        CoverageEligibilityResponseInsuranceBuilder.fromJson(toJson());
      case CoverageEligibilityResponseItem _:
        CoverageEligibilityResponseItemBuilder.fromJson(toJson());
      case CoverageEligibilityResponseBenefit _:
        CoverageEligibilityResponseBenefitBuilder.fromJson(toJson());
      case CoverageEligibilityResponseError _:
        CoverageEligibilityResponseErrorBuilder.fromJson(toJson());
      case DetectedIssue _:
        DetectedIssueBuilder.fromJson(toJson());
      case DetectedIssueEvidence _:
        DetectedIssueEvidenceBuilder.fromJson(toJson());
      case DetectedIssueMitigation _:
        DetectedIssueMitigationBuilder.fromJson(toJson());
      case Device _:
        DeviceBuilder.fromJson(toJson());
      case DeviceUdiCarrier _:
        DeviceUdiCarrierBuilder.fromJson(toJson());
      case DeviceDeviceName _:
        DeviceDeviceNameBuilder.fromJson(toJson());
      case DeviceSpecialization _:
        DeviceSpecializationBuilder.fromJson(toJson());
      case DeviceVersion _:
        DeviceVersionBuilder.fromJson(toJson());
      case DeviceProperty _:
        DevicePropertyBuilder.fromJson(toJson());
      case DeviceDefinition _:
        DeviceDefinitionBuilder.fromJson(toJson());
      case DeviceDefinitionUdiDeviceIdentifier _:
        DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(toJson());
      case DeviceDefinitionDeviceName _:
        DeviceDefinitionDeviceNameBuilder.fromJson(toJson());
      case DeviceDefinitionSpecialization _:
        DeviceDefinitionSpecializationBuilder.fromJson(toJson());
      case DeviceDefinitionCapability _:
        DeviceDefinitionCapabilityBuilder.fromJson(toJson());
      case DeviceDefinitionProperty _:
        DeviceDefinitionPropertyBuilder.fromJson(toJson());
      case DeviceDefinitionMaterial _:
        DeviceDefinitionMaterialBuilder.fromJson(toJson());
      case DeviceMetric _:
        DeviceMetricBuilder.fromJson(toJson());
      case DeviceMetricCalibration _:
        DeviceMetricCalibrationBuilder.fromJson(toJson());
      case DeviceRequest _:
        DeviceRequestBuilder.fromJson(toJson());
      case DeviceRequestParameter _:
        DeviceRequestParameterBuilder.fromJson(toJson());
      case DeviceUseStatement _:
        DeviceUseStatementBuilder.fromJson(toJson());
      case DiagnosticReport _:
        DiagnosticReportBuilder.fromJson(toJson());
      case DiagnosticReportMedia _:
        DiagnosticReportMediaBuilder.fromJson(toJson());
      case DocumentManifest _:
        DocumentManifestBuilder.fromJson(toJson());
      case DocumentManifestRelated _:
        DocumentManifestRelatedBuilder.fromJson(toJson());
      case DocumentReference _:
        DocumentReferenceBuilder.fromJson(toJson());
      case DocumentReferenceRelatesTo _:
        DocumentReferenceRelatesToBuilder.fromJson(toJson());
      case DocumentReferenceContent _:
        DocumentReferenceContentBuilder.fromJson(toJson());
      case DocumentReferenceContext _:
        DocumentReferenceContextBuilder.fromJson(toJson());
      case Encounter _:
        EncounterBuilder.fromJson(toJson());
      case EncounterStatusHistory _:
        EncounterStatusHistoryBuilder.fromJson(toJson());
      case EncounterClassHistory _:
        EncounterClassHistoryBuilder.fromJson(toJson());
      case EncounterParticipant _:
        EncounterParticipantBuilder.fromJson(toJson());
      case EncounterDiagnosis _:
        EncounterDiagnosisBuilder.fromJson(toJson());
      case EncounterHospitalization _:
        EncounterHospitalizationBuilder.fromJson(toJson());
      case EncounterLocation _:
        EncounterLocationBuilder.fromJson(toJson());
      case FhirEndpoint _:
        FhirEndpointBuilder.fromJson(toJson());
      case EnrollmentRequest _:
        EnrollmentRequestBuilder.fromJson(toJson());
      case EnrollmentResponse _:
        EnrollmentResponseBuilder.fromJson(toJson());
      case EpisodeOfCare _:
        EpisodeOfCareBuilder.fromJson(toJson());
      case EpisodeOfCareStatusHistory _:
        EpisodeOfCareStatusHistoryBuilder.fromJson(toJson());
      case EpisodeOfCareDiagnosis _:
        EpisodeOfCareDiagnosisBuilder.fromJson(toJson());
      case EventDefinition _:
        EventDefinitionBuilder.fromJson(toJson());
      case Evidence _:
        EvidenceBuilder.fromJson(toJson());
      case EvidenceVariableDefinition _:
        EvidenceVariableDefinitionBuilder.fromJson(toJson());
      case EvidenceStatistic _:
        EvidenceStatisticBuilder.fromJson(toJson());
      case EvidenceSampleSize _:
        EvidenceSampleSizeBuilder.fromJson(toJson());
      case EvidenceAttributeEstimate _:
        EvidenceAttributeEstimateBuilder.fromJson(toJson());
      case EvidenceModelCharacteristic _:
        EvidenceModelCharacteristicBuilder.fromJson(toJson());
      case EvidenceModelCharacteristicVariable _:
        EvidenceModelCharacteristicVariableBuilder.fromJson(toJson());
      case EvidenceCertainty _:
        EvidenceCertaintyBuilder.fromJson(toJson());
      case EvidenceReport _:
        EvidenceReportBuilder.fromJson(toJson());
      case EvidenceReportSubject _:
        EvidenceReportSubjectBuilder.fromJson(toJson());
      case EvidenceReportCharacteristic _:
        EvidenceReportCharacteristicBuilder.fromJson(toJson());
      case EvidenceReportRelatesTo _:
        EvidenceReportRelatesToBuilder.fromJson(toJson());
      case EvidenceReportSection _:
        EvidenceReportSectionBuilder.fromJson(toJson());
      case EvidenceVariable _:
        EvidenceVariableBuilder.fromJson(toJson());
      case EvidenceVariableCharacteristic _:
        EvidenceVariableCharacteristicBuilder.fromJson(toJson());
      case EvidenceVariableTimeFromStart _:
        EvidenceVariableTimeFromStartBuilder.fromJson(toJson());
      case EvidenceVariableCategory _:
        EvidenceVariableCategoryBuilder.fromJson(toJson());
      case ExampleScenario _:
        ExampleScenarioBuilder.fromJson(toJson());
      case ExampleScenarioActor _:
        ExampleScenarioActorBuilder.fromJson(toJson());
      case ExampleScenarioInstance _:
        ExampleScenarioInstanceBuilder.fromJson(toJson());
      case ExampleScenarioVersion _:
        ExampleScenarioVersionBuilder.fromJson(toJson());
      case ExampleScenarioContainedInstance _:
        ExampleScenarioContainedInstanceBuilder.fromJson(toJson());
      case ExampleScenarioProcess _:
        ExampleScenarioProcessBuilder.fromJson(toJson());
      case ExampleScenarioStep _:
        ExampleScenarioStepBuilder.fromJson(toJson());
      case ExampleScenarioOperation _:
        ExampleScenarioOperationBuilder.fromJson(toJson());
      case ExampleScenarioAlternative _:
        ExampleScenarioAlternativeBuilder.fromJson(toJson());
      case ExplanationOfBenefit _:
        ExplanationOfBenefitBuilder.fromJson(toJson());
      case ExplanationOfBenefitRelated _:
        ExplanationOfBenefitRelatedBuilder.fromJson(toJson());
      case ExplanationOfBenefitPayee _:
        ExplanationOfBenefitPayeeBuilder.fromJson(toJson());
      case ExplanationOfBenefitCareTeam _:
        ExplanationOfBenefitCareTeamBuilder.fromJson(toJson());
      case ExplanationOfBenefitSupportingInfo _:
        ExplanationOfBenefitSupportingInfoBuilder.fromJson(toJson());
      case ExplanationOfBenefitDiagnosis _:
        ExplanationOfBenefitDiagnosisBuilder.fromJson(toJson());
      case ExplanationOfBenefitProcedure _:
        ExplanationOfBenefitProcedureBuilder.fromJson(toJson());
      case ExplanationOfBenefitInsurance _:
        ExplanationOfBenefitInsuranceBuilder.fromJson(toJson());
      case ExplanationOfBenefitAccident _:
        ExplanationOfBenefitAccidentBuilder.fromJson(toJson());
      case ExplanationOfBenefitItem _:
        ExplanationOfBenefitItemBuilder.fromJson(toJson());
      case ExplanationOfBenefitAdjudication _:
        ExplanationOfBenefitAdjudicationBuilder.fromJson(toJson());
      case ExplanationOfBenefitDetail _:
        ExplanationOfBenefitDetailBuilder.fromJson(toJson());
      case ExplanationOfBenefitSubDetail _:
        ExplanationOfBenefitSubDetailBuilder.fromJson(toJson());
      case ExplanationOfBenefitAddItem _:
        ExplanationOfBenefitAddItemBuilder.fromJson(toJson());
      case ExplanationOfBenefitDetail1 _:
        ExplanationOfBenefitDetail1Builder.fromJson(toJson());
      case ExplanationOfBenefitSubDetail1 _:
        ExplanationOfBenefitSubDetail1Builder.fromJson(toJson());
      case ExplanationOfBenefitTotal _:
        ExplanationOfBenefitTotalBuilder.fromJson(toJson());
      case ExplanationOfBenefitPayment _:
        ExplanationOfBenefitPaymentBuilder.fromJson(toJson());
      case ExplanationOfBenefitProcessNote _:
        ExplanationOfBenefitProcessNoteBuilder.fromJson(toJson());
      case ExplanationOfBenefitBenefitBalance _:
        ExplanationOfBenefitBenefitBalanceBuilder.fromJson(toJson());
      case ExplanationOfBenefitFinancial _:
        ExplanationOfBenefitFinancialBuilder.fromJson(toJson());
      case FamilyMemberHistory _:
        FamilyMemberHistoryBuilder.fromJson(toJson());
      case FamilyMemberHistoryCondition _:
        FamilyMemberHistoryConditionBuilder.fromJson(toJson());
      case Flag _:
        FlagBuilder.fromJson(toJson());
      case Goal _:
        GoalBuilder.fromJson(toJson());
      case GoalTarget _:
        GoalTargetBuilder.fromJson(toJson());
      case GraphDefinition _:
        GraphDefinitionBuilder.fromJson(toJson());
      case GraphDefinitionLink _:
        GraphDefinitionLinkBuilder.fromJson(toJson());
      case GraphDefinitionTarget _:
        GraphDefinitionTargetBuilder.fromJson(toJson());
      case GraphDefinitionCompartment _:
        GraphDefinitionCompartmentBuilder.fromJson(toJson());
      case FhirGroup _:
        FhirGroupBuilder.fromJson(toJson());
      case GroupCharacteristic _:
        GroupCharacteristicBuilder.fromJson(toJson());
      case GroupMember _:
        GroupMemberBuilder.fromJson(toJson());
      case GuidanceResponse _:
        GuidanceResponseBuilder.fromJson(toJson());
      case HealthcareService _:
        HealthcareServiceBuilder.fromJson(toJson());
      case HealthcareServiceEligibility _:
        HealthcareServiceEligibilityBuilder.fromJson(toJson());
      case HealthcareServiceAvailableTime _:
        HealthcareServiceAvailableTimeBuilder.fromJson(toJson());
      case HealthcareServiceNotAvailable _:
        HealthcareServiceNotAvailableBuilder.fromJson(toJson());
      case ImagingStudy _:
        ImagingStudyBuilder.fromJson(toJson());
      case ImagingStudySeries _:
        ImagingStudySeriesBuilder.fromJson(toJson());
      case ImagingStudyPerformer _:
        ImagingStudyPerformerBuilder.fromJson(toJson());
      case ImagingStudyInstance _:
        ImagingStudyInstanceBuilder.fromJson(toJson());
      case Immunization _:
        ImmunizationBuilder.fromJson(toJson());
      case ImmunizationPerformer _:
        ImmunizationPerformerBuilder.fromJson(toJson());
      case ImmunizationEducation _:
        ImmunizationEducationBuilder.fromJson(toJson());
      case ImmunizationReaction _:
        ImmunizationReactionBuilder.fromJson(toJson());
      case ImmunizationProtocolApplied _:
        ImmunizationProtocolAppliedBuilder.fromJson(toJson());
      case ImmunizationEvaluation _:
        ImmunizationEvaluationBuilder.fromJson(toJson());
      case ImmunizationRecommendation _:
        ImmunizationRecommendationBuilder.fromJson(toJson());
      case ImmunizationRecommendationRecommendation _:
        ImmunizationRecommendationRecommendationBuilder.fromJson(toJson());
      case ImmunizationRecommendationDateCriterion _:
        ImmunizationRecommendationDateCriterionBuilder.fromJson(toJson());
      case ImplementationGuide _:
        ImplementationGuideBuilder.fromJson(toJson());
      case ImplementationGuideDependsOn _:
        ImplementationGuideDependsOnBuilder.fromJson(toJson());
      case ImplementationGuideGlobal _:
        ImplementationGuideGlobalBuilder.fromJson(toJson());
      case ImplementationGuideDefinition _:
        ImplementationGuideDefinitionBuilder.fromJson(toJson());
      case ImplementationGuideGrouping _:
        ImplementationGuideGroupingBuilder.fromJson(toJson());
      case ImplementationGuideResource _:
        ImplementationGuideResourceBuilder.fromJson(toJson());
      case ImplementationGuidePage _:
        ImplementationGuidePageBuilder.fromJson(toJson());
      case ImplementationGuideParameter _:
        ImplementationGuideParameterBuilder.fromJson(toJson());
      case ImplementationGuideTemplate _:
        ImplementationGuideTemplateBuilder.fromJson(toJson());
      case ImplementationGuideManifest _:
        ImplementationGuideManifestBuilder.fromJson(toJson());
      case ImplementationGuideResource1 _:
        ImplementationGuideResource1Builder.fromJson(toJson());
      case ImplementationGuidePage1 _:
        ImplementationGuidePage1Builder.fromJson(toJson());
      case Ingredient _:
        IngredientBuilder.fromJson(toJson());
      case IngredientManufacturer _:
        IngredientManufacturerBuilder.fromJson(toJson());
      case IngredientSubstance _:
        IngredientSubstanceBuilder.fromJson(toJson());
      case IngredientStrength _:
        IngredientStrengthBuilder.fromJson(toJson());
      case IngredientReferenceStrength _:
        IngredientReferenceStrengthBuilder.fromJson(toJson());
      case InsurancePlan _:
        InsurancePlanBuilder.fromJson(toJson());
      case InsurancePlanContact _:
        InsurancePlanContactBuilder.fromJson(toJson());
      case InsurancePlanCoverage _:
        InsurancePlanCoverageBuilder.fromJson(toJson());
      case InsurancePlanBenefit _:
        InsurancePlanBenefitBuilder.fromJson(toJson());
      case InsurancePlanLimit _:
        InsurancePlanLimitBuilder.fromJson(toJson());
      case InsurancePlanPlan _:
        InsurancePlanPlanBuilder.fromJson(toJson());
      case InsurancePlanGeneralCost _:
        InsurancePlanGeneralCostBuilder.fromJson(toJson());
      case InsurancePlanSpecificCost _:
        InsurancePlanSpecificCostBuilder.fromJson(toJson());
      case InsurancePlanBenefit1 _:
        InsurancePlanBenefit1Builder.fromJson(toJson());
      case InsurancePlanCost _:
        InsurancePlanCostBuilder.fromJson(toJson());
      case Invoice _:
        InvoiceBuilder.fromJson(toJson());
      case InvoiceParticipant _:
        InvoiceParticipantBuilder.fromJson(toJson());
      case InvoiceLineItem _:
        InvoiceLineItemBuilder.fromJson(toJson());
      case InvoicePriceComponent _:
        InvoicePriceComponentBuilder.fromJson(toJson());
      case Library _:
        LibraryBuilder.fromJson(toJson());
      case Linkage _:
        LinkageBuilder.fromJson(toJson());
      case LinkageItem _:
        LinkageItemBuilder.fromJson(toJson());
      case FhirList _:
        FhirListBuilder.fromJson(toJson());
      case ListEntry _:
        ListEntryBuilder.fromJson(toJson());
      case Location _:
        LocationBuilder.fromJson(toJson());
      case LocationPosition _:
        LocationPositionBuilder.fromJson(toJson());
      case LocationHoursOfOperation _:
        LocationHoursOfOperationBuilder.fromJson(toJson());
      case ManufacturedItemDefinition _:
        ManufacturedItemDefinitionBuilder.fromJson(toJson());
      case ManufacturedItemDefinitionProperty _:
        ManufacturedItemDefinitionPropertyBuilder.fromJson(toJson());
      case Measure _:
        MeasureBuilder.fromJson(toJson());
      case MeasureGroup _:
        MeasureGroupBuilder.fromJson(toJson());
      case MeasurePopulation _:
        MeasurePopulationBuilder.fromJson(toJson());
      case MeasureStratifier _:
        MeasureStratifierBuilder.fromJson(toJson());
      case MeasureComponent _:
        MeasureComponentBuilder.fromJson(toJson());
      case MeasureSupplementalData _:
        MeasureSupplementalDataBuilder.fromJson(toJson());
      case MeasureReport _:
        MeasureReportBuilder.fromJson(toJson());
      case MeasureReportGroup _:
        MeasureReportGroupBuilder.fromJson(toJson());
      case MeasureReportPopulation _:
        MeasureReportPopulationBuilder.fromJson(toJson());
      case MeasureReportStratifier _:
        MeasureReportStratifierBuilder.fromJson(toJson());
      case MeasureReportStratum _:
        MeasureReportStratumBuilder.fromJson(toJson());
      case MeasureReportComponent _:
        MeasureReportComponentBuilder.fromJson(toJson());
      case MeasureReportPopulation1 _:
        MeasureReportPopulation1Builder.fromJson(toJson());
      case Media _:
        MediaBuilder.fromJson(toJson());
      case Medication _:
        MedicationBuilder.fromJson(toJson());
      case MedicationIngredient _:
        MedicationIngredientBuilder.fromJson(toJson());
      case MedicationBatch _:
        MedicationBatchBuilder.fromJson(toJson());
      case MedicationAdministration _:
        MedicationAdministrationBuilder.fromJson(toJson());
      case MedicationAdministrationPerformer _:
        MedicationAdministrationPerformerBuilder.fromJson(toJson());
      case MedicationAdministrationDosage _:
        MedicationAdministrationDosageBuilder.fromJson(toJson());
      case MedicationDispense _:
        MedicationDispenseBuilder.fromJson(toJson());
      case MedicationDispensePerformer _:
        MedicationDispensePerformerBuilder.fromJson(toJson());
      case MedicationDispenseSubstitution _:
        MedicationDispenseSubstitutionBuilder.fromJson(toJson());
      case MedicationKnowledge _:
        MedicationKnowledgeBuilder.fromJson(toJson());
      case MedicationKnowledgeRelatedMedicationKnowledge _:
        MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(toJson());
      case MedicationKnowledgeMonograph _:
        MedicationKnowledgeMonographBuilder.fromJson(toJson());
      case MedicationKnowledgeIngredient _:
        MedicationKnowledgeIngredientBuilder.fromJson(toJson());
      case MedicationKnowledgeCost _:
        MedicationKnowledgeCostBuilder.fromJson(toJson());
      case MedicationKnowledgeMonitoringProgram _:
        MedicationKnowledgeMonitoringProgramBuilder.fromJson(toJson());
      case MedicationKnowledgeAdministrationGuidelines _:
        MedicationKnowledgeAdministrationGuidelinesBuilder.fromJson(toJson());
      case MedicationKnowledgeDosage _:
        MedicationKnowledgeDosageBuilder.fromJson(toJson());
      case MedicationKnowledgePatientCharacteristics _:
        MedicationKnowledgePatientCharacteristicsBuilder.fromJson(toJson());
      case MedicationKnowledgeMedicineClassification _:
        MedicationKnowledgeMedicineClassificationBuilder.fromJson(toJson());
      case MedicationKnowledgePackaging _:
        MedicationKnowledgePackagingBuilder.fromJson(toJson());
      case MedicationKnowledgeDrugCharacteristic _:
        MedicationKnowledgeDrugCharacteristicBuilder.fromJson(toJson());
      case MedicationKnowledgeRegulatory _:
        MedicationKnowledgeRegulatoryBuilder.fromJson(toJson());
      case MedicationKnowledgeSubstitution _:
        MedicationKnowledgeSubstitutionBuilder.fromJson(toJson());
      case MedicationKnowledgeSchedule _:
        MedicationKnowledgeScheduleBuilder.fromJson(toJson());
      case MedicationKnowledgeMaxDispense _:
        MedicationKnowledgeMaxDispenseBuilder.fromJson(toJson());
      case MedicationKnowledgeKinetics _:
        MedicationKnowledgeKineticsBuilder.fromJson(toJson());
      case MedicationRequest _:
        MedicationRequestBuilder.fromJson(toJson());
      case MedicationRequestDispenseRequest _:
        MedicationRequestDispenseRequestBuilder.fromJson(toJson());
      case MedicationRequestInitialFill _:
        MedicationRequestInitialFillBuilder.fromJson(toJson());
      case MedicationRequestSubstitution _:
        MedicationRequestSubstitutionBuilder.fromJson(toJson());
      case MedicationStatement _:
        MedicationStatementBuilder.fromJson(toJson());
      case MedicinalProductDefinition _:
        MedicinalProductDefinitionBuilder.fromJson(toJson());
      case MedicinalProductDefinitionContact _:
        MedicinalProductDefinitionContactBuilder.fromJson(toJson());
      case MedicinalProductDefinitionName _:
        MedicinalProductDefinitionNameBuilder.fromJson(toJson());
      case MedicinalProductDefinitionNamePart _:
        MedicinalProductDefinitionNamePartBuilder.fromJson(toJson());
      case MedicinalProductDefinitionCountryLanguage _:
        MedicinalProductDefinitionCountryLanguageBuilder.fromJson(toJson());
      case MedicinalProductDefinitionCrossReference _:
        MedicinalProductDefinitionCrossReferenceBuilder.fromJson(toJson());
      case MedicinalProductDefinitionOperation _:
        MedicinalProductDefinitionOperationBuilder.fromJson(toJson());
      case MedicinalProductDefinitionCharacteristic _:
        MedicinalProductDefinitionCharacteristicBuilder.fromJson(toJson());
      case MessageDefinition _:
        MessageDefinitionBuilder.fromJson(toJson());
      case MessageDefinitionFocus _:
        MessageDefinitionFocusBuilder.fromJson(toJson());
      case MessageDefinitionAllowedResponse _:
        MessageDefinitionAllowedResponseBuilder.fromJson(toJson());
      case MessageHeader _:
        MessageHeaderBuilder.fromJson(toJson());
      case MessageHeaderDestination _:
        MessageHeaderDestinationBuilder.fromJson(toJson());
      case MessageHeaderSource _:
        MessageHeaderSourceBuilder.fromJson(toJson());
      case MessageHeaderResponse _:
        MessageHeaderResponseBuilder.fromJson(toJson());
      case MolecularSequence _:
        MolecularSequenceBuilder.fromJson(toJson());
      case MolecularSequenceReferenceSeq _:
        MolecularSequenceReferenceSeqBuilder.fromJson(toJson());
      case MolecularSequenceVariant _:
        MolecularSequenceVariantBuilder.fromJson(toJson());
      case MolecularSequenceQuality _:
        MolecularSequenceQualityBuilder.fromJson(toJson());
      case MolecularSequenceRoc _:
        MolecularSequenceRocBuilder.fromJson(toJson());
      case MolecularSequenceRepository _:
        MolecularSequenceRepositoryBuilder.fromJson(toJson());
      case MolecularSequenceStructureVariant _:
        MolecularSequenceStructureVariantBuilder.fromJson(toJson());
      case MolecularSequenceOuter _:
        MolecularSequenceOuterBuilder.fromJson(toJson());
      case MolecularSequenceInner _:
        MolecularSequenceInnerBuilder.fromJson(toJson());
      case NamingSystem _:
        NamingSystemBuilder.fromJson(toJson());
      case NamingSystemUniqueId _:
        NamingSystemUniqueIdBuilder.fromJson(toJson());
      case NutritionOrder _:
        NutritionOrderBuilder.fromJson(toJson());
      case NutritionOrderOralDiet _:
        NutritionOrderOralDietBuilder.fromJson(toJson());
      case NutritionOrderNutrient _:
        NutritionOrderNutrientBuilder.fromJson(toJson());
      case NutritionOrderTexture _:
        NutritionOrderTextureBuilder.fromJson(toJson());
      case NutritionOrderSupplement _:
        NutritionOrderSupplementBuilder.fromJson(toJson());
      case NutritionOrderEnteralFormula _:
        NutritionOrderEnteralFormulaBuilder.fromJson(toJson());
      case NutritionOrderAdministration _:
        NutritionOrderAdministrationBuilder.fromJson(toJson());
      case NutritionProduct _:
        NutritionProductBuilder.fromJson(toJson());
      case NutritionProductNutrient _:
        NutritionProductNutrientBuilder.fromJson(toJson());
      case NutritionProductIngredient _:
        NutritionProductIngredientBuilder.fromJson(toJson());
      case NutritionProductProductCharacteristic _:
        NutritionProductProductCharacteristicBuilder.fromJson(toJson());
      case NutritionProductInstance _:
        NutritionProductInstanceBuilder.fromJson(toJson());
      case Observation _:
        ObservationBuilder.fromJson(toJson());
      case ObservationReferenceRange _:
        ObservationReferenceRangeBuilder.fromJson(toJson());
      case ObservationComponent _:
        ObservationComponentBuilder.fromJson(toJson());
      case ObservationDefinition _:
        ObservationDefinitionBuilder.fromJson(toJson());
      case ObservationDefinitionQuantitativeDetails _:
        ObservationDefinitionQuantitativeDetailsBuilder.fromJson(toJson());
      case ObservationDefinitionQualifiedInterval _:
        ObservationDefinitionQualifiedIntervalBuilder.fromJson(toJson());
      case OperationDefinition _:
        OperationDefinitionBuilder.fromJson(toJson());
      case OperationDefinitionParameter _:
        OperationDefinitionParameterBuilder.fromJson(toJson());
      case OperationDefinitionBinding _:
        OperationDefinitionBindingBuilder.fromJson(toJson());
      case OperationDefinitionReferencedFrom _:
        OperationDefinitionReferencedFromBuilder.fromJson(toJson());
      case OperationDefinitionOverload _:
        OperationDefinitionOverloadBuilder.fromJson(toJson());
      case OperationOutcome _:
        OperationOutcomeBuilder.fromJson(toJson());
      case OperationOutcomeIssue _:
        OperationOutcomeIssueBuilder.fromJson(toJson());
      case Organization _:
        OrganizationBuilder.fromJson(toJson());
      case OrganizationContact _:
        OrganizationContactBuilder.fromJson(toJson());
      case OrganizationAffiliation _:
        OrganizationAffiliationBuilder.fromJson(toJson());
      case PackagedProductDefinition _:
        PackagedProductDefinitionBuilder.fromJson(toJson());
      case PackagedProductDefinitionLegalStatusOfSupply _:
        PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(toJson());
      case PackagedProductDefinitionPackage _:
        PackagedProductDefinitionPackageBuilder.fromJson(toJson());
      case PackagedProductDefinitionShelfLifeStorage _:
        PackagedProductDefinitionShelfLifeStorageBuilder.fromJson(toJson());
      case PackagedProductDefinitionProperty _:
        PackagedProductDefinitionPropertyBuilder.fromJson(toJson());
      case PackagedProductDefinitionContainedItem _:
        PackagedProductDefinitionContainedItemBuilder.fromJson(toJson());
      case Parameters _:
        ParametersBuilder.fromJson(toJson());
      case ParametersParameter _:
        ParametersParameterBuilder.fromJson(toJson());
      case Patient _:
        PatientBuilder.fromJson(toJson());
      case PatientContact _:
        PatientContactBuilder.fromJson(toJson());
      case PatientCommunication _:
        PatientCommunicationBuilder.fromJson(toJson());
      case PatientLink _:
        PatientLinkBuilder.fromJson(toJson());
      case PaymentNotice _:
        PaymentNoticeBuilder.fromJson(toJson());
      case PaymentReconciliation _:
        PaymentReconciliationBuilder.fromJson(toJson());
      case PaymentReconciliationDetail _:
        PaymentReconciliationDetailBuilder.fromJson(toJson());
      case PaymentReconciliationProcessNote _:
        PaymentReconciliationProcessNoteBuilder.fromJson(toJson());
      case Person _:
        PersonBuilder.fromJson(toJson());
      case PersonLink _:
        PersonLinkBuilder.fromJson(toJson());
      case PlanDefinition _:
        PlanDefinitionBuilder.fromJson(toJson());
      case PlanDefinitionGoal _:
        PlanDefinitionGoalBuilder.fromJson(toJson());
      case PlanDefinitionTarget _:
        PlanDefinitionTargetBuilder.fromJson(toJson());
      case PlanDefinitionAction _:
        PlanDefinitionActionBuilder.fromJson(toJson());
      case PlanDefinitionCondition _:
        PlanDefinitionConditionBuilder.fromJson(toJson());
      case PlanDefinitionRelatedAction _:
        PlanDefinitionRelatedActionBuilder.fromJson(toJson());
      case PlanDefinitionParticipant _:
        PlanDefinitionParticipantBuilder.fromJson(toJson());
      case PlanDefinitionDynamicValue _:
        PlanDefinitionDynamicValueBuilder.fromJson(toJson());
      case Practitioner _:
        PractitionerBuilder.fromJson(toJson());
      case PractitionerQualification _:
        PractitionerQualificationBuilder.fromJson(toJson());
      case PractitionerRole _:
        PractitionerRoleBuilder.fromJson(toJson());
      case PractitionerRoleAvailableTime _:
        PractitionerRoleAvailableTimeBuilder.fromJson(toJson());
      case PractitionerRoleNotAvailable _:
        PractitionerRoleNotAvailableBuilder.fromJson(toJson());
      case Procedure _:
        ProcedureBuilder.fromJson(toJson());
      case ProcedurePerformer _:
        ProcedurePerformerBuilder.fromJson(toJson());
      case ProcedureFocalDevice _:
        ProcedureFocalDeviceBuilder.fromJson(toJson());
      case Provenance _:
        ProvenanceBuilder.fromJson(toJson());
      case ProvenanceAgent _:
        ProvenanceAgentBuilder.fromJson(toJson());
      case ProvenanceEntity _:
        ProvenanceEntityBuilder.fromJson(toJson());
      case Questionnaire _:
        QuestionnaireBuilder.fromJson(toJson());
      case QuestionnaireItem _:
        QuestionnaireItemBuilder.fromJson(toJson());
      case QuestionnaireEnableWhen _:
        QuestionnaireEnableWhenBuilder.fromJson(toJson());
      case QuestionnaireAnswerOption _:
        QuestionnaireAnswerOptionBuilder.fromJson(toJson());
      case QuestionnaireInitial _:
        QuestionnaireInitialBuilder.fromJson(toJson());
      case QuestionnaireResponse _:
        QuestionnaireResponseBuilder.fromJson(toJson());
      case QuestionnaireResponseItem _:
        QuestionnaireResponseItemBuilder.fromJson(toJson());
      case QuestionnaireResponseAnswer _:
        QuestionnaireResponseAnswerBuilder.fromJson(toJson());
      case RegulatedAuthorization _:
        RegulatedAuthorizationBuilder.fromJson(toJson());
      case RelatedPerson _:
        RelatedPersonBuilder.fromJson(toJson());
      case RelatedPersonCommunication _:
        RelatedPersonCommunicationBuilder.fromJson(toJson());
      case RequestGroup _:
        RequestGroupBuilder.fromJson(toJson());
      case RequestGroupAction _:
        RequestGroupActionBuilder.fromJson(toJson());
      case RequestGroupCondition _:
        RequestGroupConditionBuilder.fromJson(toJson());
      case RequestGroupRelatedAction _:
        RequestGroupRelatedActionBuilder.fromJson(toJson());
      case ResearchDefinition _:
        ResearchDefinitionBuilder.fromJson(toJson());
      case ResearchElementDefinition _:
        ResearchElementDefinitionBuilder.fromJson(toJson());
      case ResearchElementDefinitionCharacteristic _:
        ResearchElementDefinitionCharacteristicBuilder.fromJson(toJson());
      case ResearchStudy _:
        ResearchStudyBuilder.fromJson(toJson());
      case ResearchStudyArm _:
        ResearchStudyArmBuilder.fromJson(toJson());
      case ResearchStudyObjective _:
        ResearchStudyObjectiveBuilder.fromJson(toJson());
      case ResearchSubject _:
        ResearchSubjectBuilder.fromJson(toJson());
      case RiskAssessment _:
        RiskAssessmentBuilder.fromJson(toJson());
      case RiskAssessmentPrediction _:
        RiskAssessmentPredictionBuilder.fromJson(toJson());
      case Schedule _:
        ScheduleBuilder.fromJson(toJson());
      case SearchParameter _:
        SearchParameterBuilder.fromJson(toJson());
      case SearchParameterComponent _:
        SearchParameterComponentBuilder.fromJson(toJson());
      case ServiceRequest _:
        ServiceRequestBuilder.fromJson(toJson());
      case Slot _:
        SlotBuilder.fromJson(toJson());
      case Specimen _:
        SpecimenBuilder.fromJson(toJson());
      case SpecimenCollection _:
        SpecimenCollectionBuilder.fromJson(toJson());
      case SpecimenProcessing _:
        SpecimenProcessingBuilder.fromJson(toJson());
      case SpecimenContainer _:
        SpecimenContainerBuilder.fromJson(toJson());
      case SpecimenDefinition _:
        SpecimenDefinitionBuilder.fromJson(toJson());
      case SpecimenDefinitionTypeTested _:
        SpecimenDefinitionTypeTestedBuilder.fromJson(toJson());
      case SpecimenDefinitionContainer _:
        SpecimenDefinitionContainerBuilder.fromJson(toJson());
      case SpecimenDefinitionAdditive _:
        SpecimenDefinitionAdditiveBuilder.fromJson(toJson());
      case SpecimenDefinitionHandling _:
        SpecimenDefinitionHandlingBuilder.fromJson(toJson());
      case StructureDefinition _:
        StructureDefinitionBuilder.fromJson(toJson());
      case StructureDefinitionMapping _:
        StructureDefinitionMappingBuilder.fromJson(toJson());
      case StructureDefinitionContext _:
        StructureDefinitionContextBuilder.fromJson(toJson());
      case StructureDefinitionSnapshot _:
        StructureDefinitionSnapshotBuilder.fromJson(toJson());
      case StructureDefinitionDifferential _:
        StructureDefinitionDifferentialBuilder.fromJson(toJson());
      case StructureMap _:
        StructureMapBuilder.fromJson(toJson());
      case StructureMapStructure _:
        StructureMapStructureBuilder.fromJson(toJson());
      case StructureMapGroup _:
        StructureMapGroupBuilder.fromJson(toJson());
      case StructureMapInput _:
        StructureMapInputBuilder.fromJson(toJson());
      case StructureMapRule _:
        StructureMapRuleBuilder.fromJson(toJson());
      case StructureMapSource _:
        StructureMapSourceBuilder.fromJson(toJson());
      case StructureMapTarget _:
        StructureMapTargetBuilder.fromJson(toJson());
      case StructureMapParameter _:
        StructureMapParameterBuilder.fromJson(toJson());
      case StructureMapDependent _:
        StructureMapDependentBuilder.fromJson(toJson());
      case Subscription _:
        SubscriptionBuilder.fromJson(toJson());
      case SubscriptionChannel _:
        SubscriptionChannelBuilder.fromJson(toJson());
      case SubscriptionStatus _:
        SubscriptionStatusBuilder.fromJson(toJson());
      case SubscriptionStatusNotificationEvent _:
        SubscriptionStatusNotificationEventBuilder.fromJson(toJson());
      case SubscriptionTopic _:
        SubscriptionTopicBuilder.fromJson(toJson());
      case SubscriptionTopicResourceTrigger _:
        SubscriptionTopicResourceTriggerBuilder.fromJson(toJson());
      case SubscriptionTopicQueryCriteria _:
        SubscriptionTopicQueryCriteriaBuilder.fromJson(toJson());
      case SubscriptionTopicEventTrigger _:
        SubscriptionTopicEventTriggerBuilder.fromJson(toJson());
      case SubscriptionTopicCanFilterBy _:
        SubscriptionTopicCanFilterByBuilder.fromJson(toJson());
      case SubscriptionTopicNotificationShape _:
        SubscriptionTopicNotificationShapeBuilder.fromJson(toJson());
      case Substance _:
        SubstanceBuilder.fromJson(toJson());
      case SubstanceInstance _:
        SubstanceInstanceBuilder.fromJson(toJson());
      case SubstanceIngredient _:
        SubstanceIngredientBuilder.fromJson(toJson());
      case SubstanceDefinition _:
        SubstanceDefinitionBuilder.fromJson(toJson());
      case SubstanceDefinitionMoiety _:
        SubstanceDefinitionMoietyBuilder.fromJson(toJson());
      case SubstanceDefinitionProperty _:
        SubstanceDefinitionPropertyBuilder.fromJson(toJson());
      case SubstanceDefinitionMolecularWeight _:
        SubstanceDefinitionMolecularWeightBuilder.fromJson(toJson());
      case SubstanceDefinitionStructure _:
        SubstanceDefinitionStructureBuilder.fromJson(toJson());
      case SubstanceDefinitionRepresentation _:
        SubstanceDefinitionRepresentationBuilder.fromJson(toJson());
      case SubstanceDefinitionCode _:
        SubstanceDefinitionCodeBuilder.fromJson(toJson());
      case SubstanceDefinitionName _:
        SubstanceDefinitionNameBuilder.fromJson(toJson());
      case SubstanceDefinitionOfficial _:
        SubstanceDefinitionOfficialBuilder.fromJson(toJson());
      case SubstanceDefinitionRelationship _:
        SubstanceDefinitionRelationshipBuilder.fromJson(toJson());
      case SubstanceDefinitionSourceMaterial _:
        SubstanceDefinitionSourceMaterialBuilder.fromJson(toJson());
      case SupplyDelivery _:
        SupplyDeliveryBuilder.fromJson(toJson());
      case SupplyDeliverySuppliedItem _:
        SupplyDeliverySuppliedItemBuilder.fromJson(toJson());
      case SupplyRequest _:
        SupplyRequestBuilder.fromJson(toJson());
      case SupplyRequestParameter _:
        SupplyRequestParameterBuilder.fromJson(toJson());
      case Task _:
        TaskBuilder.fromJson(toJson());
      case TaskRestriction _:
        TaskRestrictionBuilder.fromJson(toJson());
      case TaskInput _:
        TaskInputBuilder.fromJson(toJson());
      case TaskOutput _:
        TaskOutputBuilder.fromJson(toJson());
      case TerminologyCapabilities _:
        TerminologyCapabilitiesBuilder.fromJson(toJson());
      case TerminologyCapabilitiesSoftware _:
        TerminologyCapabilitiesSoftwareBuilder.fromJson(toJson());
      case TerminologyCapabilitiesImplementation _:
        TerminologyCapabilitiesImplementationBuilder.fromJson(toJson());
      case TerminologyCapabilitiesCodeSystem _:
        TerminologyCapabilitiesCodeSystemBuilder.fromJson(toJson());
      case TerminologyCapabilitiesVersion _:
        TerminologyCapabilitiesVersionBuilder.fromJson(toJson());
      case TerminologyCapabilitiesFilter _:
        TerminologyCapabilitiesFilterBuilder.fromJson(toJson());
      case TerminologyCapabilitiesExpansion _:
        TerminologyCapabilitiesExpansionBuilder.fromJson(toJson());
      case TerminologyCapabilitiesParameter _:
        TerminologyCapabilitiesParameterBuilder.fromJson(toJson());
      case TerminologyCapabilitiesValidateCode _:
        TerminologyCapabilitiesValidateCodeBuilder.fromJson(toJson());
      case TerminologyCapabilitiesTranslation _:
        TerminologyCapabilitiesTranslationBuilder.fromJson(toJson());
      case TerminologyCapabilitiesClosure _:
        TerminologyCapabilitiesClosureBuilder.fromJson(toJson());
      case TestReport _:
        TestReportBuilder.fromJson(toJson());
      case TestReportParticipant _:
        TestReportParticipantBuilder.fromJson(toJson());
      case TestReportSetup _:
        TestReportSetupBuilder.fromJson(toJson());
      case TestReportAction _:
        TestReportActionBuilder.fromJson(toJson());
      case TestReportOperation _:
        TestReportOperationBuilder.fromJson(toJson());
      case TestReportAssert _:
        TestReportAssertBuilder.fromJson(toJson());
      case TestReportTest _:
        TestReportTestBuilder.fromJson(toJson());
      case TestReportAction1 _:
        TestReportAction1Builder.fromJson(toJson());
      case TestReportTeardown _:
        TestReportTeardownBuilder.fromJson(toJson());
      case TestReportAction2 _:
        TestReportAction2Builder.fromJson(toJson());
      case TestScript _:
        TestScriptBuilder.fromJson(toJson());
      case TestScriptOrigin _:
        TestScriptOriginBuilder.fromJson(toJson());
      case TestScriptDestination _:
        TestScriptDestinationBuilder.fromJson(toJson());
      case TestScriptMetadata _:
        TestScriptMetadataBuilder.fromJson(toJson());
      case TestScriptLink _:
        TestScriptLinkBuilder.fromJson(toJson());
      case TestScriptCapability _:
        TestScriptCapabilityBuilder.fromJson(toJson());
      case TestScriptFixture _:
        TestScriptFixtureBuilder.fromJson(toJson());
      case TestScriptVariable _:
        TestScriptVariableBuilder.fromJson(toJson());
      case TestScriptSetup _:
        TestScriptSetupBuilder.fromJson(toJson());
      case TestScriptAction _:
        TestScriptActionBuilder.fromJson(toJson());
      case TestScriptOperation _:
        TestScriptOperationBuilder.fromJson(toJson());
      case TestScriptRequestHeader _:
        TestScriptRequestHeaderBuilder.fromJson(toJson());
      case TestScriptAssert _:
        TestScriptAssertBuilder.fromJson(toJson());
      case TestScriptTest _:
        TestScriptTestBuilder.fromJson(toJson());
      case TestScriptAction1 _:
        TestScriptAction1Builder.fromJson(toJson());
      case TestScriptTeardown _:
        TestScriptTeardownBuilder.fromJson(toJson());
      case TestScriptAction2 _:
        TestScriptAction2Builder.fromJson(toJson());
      case ValueSet _:
        ValueSetBuilder.fromJson(toJson());
      case ValueSetCompose _:
        ValueSetComposeBuilder.fromJson(toJson());
      case ValueSetInclude _:
        ValueSetIncludeBuilder.fromJson(toJson());
      case ValueSetConcept _:
        ValueSetConceptBuilder.fromJson(toJson());
      case ValueSetDesignation _:
        ValueSetDesignationBuilder.fromJson(toJson());
      case ValueSetFilter _:
        ValueSetFilterBuilder.fromJson(toJson());
      case ValueSetExpansion _:
        ValueSetExpansionBuilder.fromJson(toJson());
      case ValueSetParameter _:
        ValueSetParameterBuilder.fromJson(toJson());
      case ValueSetContains _:
        ValueSetContainsBuilder.fromJson(toJson());
      case VerificationResult _:
        VerificationResultBuilder.fromJson(toJson());
      case VerificationResultPrimarySource _:
        VerificationResultPrimarySourceBuilder.fromJson(toJson());
      case VerificationResultAttestation _:
        VerificationResultAttestationBuilder.fromJson(toJson());
      case VerificationResultValidator _:
        VerificationResultValidatorBuilder.fromJson(toJson());
      case VisionPrescription _:
        VisionPrescriptionBuilder.fromJson(toJson());
      case VisionPrescriptionLensSpecification _:
        VisionPrescriptionLensSpecificationBuilder.fromJson(toJson());
      case VisionPrescriptionPrism _:
        VisionPrescriptionPrismBuilder.fromJson(toJson());
      case Address _:
        AddressBuilder.fromJson(toJson());
      case Annotation _:
        AnnotationBuilder.fromJson(toJson());
      case Attachment _:
        AttachmentBuilder.fromJson(toJson());
      case CodeableConcept _:
        CodeableConceptBuilder.fromJson(toJson());
      case CodeableReference _:
        CodeableReferenceBuilder.fromJson(toJson());
      case Coding _:
        CodingBuilder.fromJson(toJson());
      case ContactDetail _:
        ContactDetailBuilder.fromJson(toJson());
      case ContactPoint _:
        ContactPointBuilder.fromJson(toJson());
      case Contributor _:
        ContributorBuilder.fromJson(toJson());
      case Count _:
        CountBuilder.fromJson(toJson());
      case DataRequirement _:
        DataRequirementBuilder.fromJson(toJson());
      case DataRequirementCodeFilter _:
        DataRequirementCodeFilterBuilder.fromJson(toJson());
      case DataRequirementDateFilter _:
        DataRequirementDateFilterBuilder.fromJson(toJson());
      case DataRequirementSort _:
        DataRequirementSortBuilder.fromJson(toJson());
      case Distance _:
        DistanceBuilder.fromJson(toJson());
      case Dosage _:
        DosageBuilder.fromJson(toJson());
      case DosageDoseAndRate _:
        DosageDoseAndRateBuilder.fromJson(toJson());
      case FhirDuration _:
        FhirDurationBuilder.fromJson(toJson());
      case ElementDefinition _:
        ElementDefinitionBuilder.fromJson(toJson());
      case ElementDefinitionSlicing _:
        ElementDefinitionSlicingBuilder.fromJson(toJson());
      case ElementDefinitionDiscriminator _:
        ElementDefinitionDiscriminatorBuilder.fromJson(toJson());
      case ElementDefinitionBase _:
        ElementDefinitionBaseBuilder.fromJson(toJson());
      case ElementDefinitionType _:
        ElementDefinitionTypeBuilder.fromJson(toJson());
      case ElementDefinitionExample _:
        ElementDefinitionExampleBuilder.fromJson(toJson());
      case ElementDefinitionConstraint _:
        ElementDefinitionConstraintBuilder.fromJson(toJson());
      case ElementDefinitionBinding _:
        ElementDefinitionBindingBuilder.fromJson(toJson());
      case ElementDefinitionMapping _:
        ElementDefinitionMappingBuilder.fromJson(toJson());
      case FhirExpression _:
        FhirExpressionBuilder.fromJson(toJson());
      case FhirExtension _:
        FhirExtensionBuilder.fromJson(toJson());
      case HumanName _:
        HumanNameBuilder.fromJson(toJson());
      case Identifier _:
        IdentifierBuilder.fromJson(toJson());
      case MarketingStatus _:
        MarketingStatusBuilder.fromJson(toJson());
      case FhirMeta _:
        FhirMetaBuilder.fromJson(toJson());
      case Money _:
        MoneyBuilder.fromJson(toJson());
      case Narrative _:
        NarrativeBuilder.fromJson(toJson());
      case ParameterDefinition _:
        ParameterDefinitionBuilder.fromJson(toJson());
      case Period _:
        PeriodBuilder.fromJson(toJson());
      case Population _:
        PopulationBuilder.fromJson(toJson());
      case ProdCharacteristic _:
        ProdCharacteristicBuilder.fromJson(toJson());
      case ProductShelfLife _:
        ProductShelfLifeBuilder.fromJson(toJson());
      case Quantity _:
        QuantityBuilder.fromJson(toJson());
      case Range _:
        RangeBuilder.fromJson(toJson());
      case Ratio _:
        RatioBuilder.fromJson(toJson());
      case RatioRange _:
        RatioRangeBuilder.fromJson(toJson());
      case Reference _:
        ReferenceBuilder.fromJson(toJson());
      case RelatedArtifact _:
        RelatedArtifactBuilder.fromJson(toJson());
      case SampledData _:
        SampledDataBuilder.fromJson(toJson());
      case Signature _:
        SignatureBuilder.fromJson(toJson());
      case Timing _:
        TimingBuilder.fromJson(toJson());
      case TimingRepeat _:
        TimingRepeatBuilder.fromJson(toJson());
      case TriggerDefinition _:
        TriggerDefinitionBuilder.fromJson(toJson());
      case UsageContext _:
        UsageContextBuilder.fromJson(toJson());
    }
    throw ArgumentError('Unknown builder type: $runtimeType');
  }
}

extension FromBuilder on FhirBaseBuilder {
  FhirBase fromBuilder() {
    switch (this) {
      case AccountBuilder _:
        Account.fromJson(toJson());
      case AccountCoverageBuilder _:
        AccountCoverage.fromJson(toJson());
      case AccountGuarantorBuilder _:
        AccountGuarantor.fromJson(toJson());
      case ActivityDefinitionBuilder _:
        ActivityDefinition.fromJson(toJson());
      case ActivityDefinitionParticipantBuilder _:
        ActivityDefinitionParticipant.fromJson(toJson());
      case ActivityDefinitionDynamicValueBuilder _:
        ActivityDefinitionDynamicValue.fromJson(toJson());
      case AdministrableProductDefinitionBuilder _:
        AdministrableProductDefinition.fromJson(toJson());
      case AdministrableProductDefinitionPropertyBuilder _:
        AdministrableProductDefinitionProperty.fromJson(toJson());
      case AdministrableProductDefinitionRouteOfAdministrationBuilder _:
        AdministrableProductDefinitionRouteOfAdministration.fromJson(toJson());
      case AdministrableProductDefinitionTargetSpeciesBuilder _:
        AdministrableProductDefinitionTargetSpecies.fromJson(toJson());
      case AdministrableProductDefinitionWithdrawalPeriodBuilder _:
        AdministrableProductDefinitionWithdrawalPeriod.fromJson(toJson());
      case AdverseEventBuilder _:
        AdverseEvent.fromJson(toJson());
      case AdverseEventSuspectEntityBuilder _:
        AdverseEventSuspectEntity.fromJson(toJson());
      case AdverseEventCausalityBuilder _:
        AdverseEventCausality.fromJson(toJson());
      case AllergyIntoleranceBuilder _:
        AllergyIntolerance.fromJson(toJson());
      case AllergyIntoleranceReactionBuilder _:
        AllergyIntoleranceReaction.fromJson(toJson());
      case AppointmentBuilder _:
        Appointment.fromJson(toJson());
      case AppointmentParticipantBuilder _:
        AppointmentParticipant.fromJson(toJson());
      case AppointmentResponseBuilder _:
        AppointmentResponse.fromJson(toJson());
      case AuditEventBuilder _:
        AuditEvent.fromJson(toJson());
      case AuditEventAgentBuilder _:
        AuditEventAgent.fromJson(toJson());
      case AuditEventNetworkBuilder _:
        AuditEventNetwork.fromJson(toJson());
      case AuditEventSourceBuilder _:
        AuditEventSource.fromJson(toJson());
      case AuditEventEntityBuilder _:
        AuditEventEntity.fromJson(toJson());
      case AuditEventDetailBuilder _:
        AuditEventDetail.fromJson(toJson());
      case BasicBuilder _:
        Basic.fromJson(toJson());
      case BinaryBuilder _:
        Binary.fromJson(toJson());
      case BiologicallyDerivedProductBuilder _:
        BiologicallyDerivedProduct.fromJson(toJson());
      case BiologicallyDerivedProductCollectionBuilder _:
        BiologicallyDerivedProductCollection.fromJson(toJson());
      case BiologicallyDerivedProductProcessingBuilder _:
        BiologicallyDerivedProductProcessing.fromJson(toJson());
      case BiologicallyDerivedProductManipulationBuilder _:
        BiologicallyDerivedProductManipulation.fromJson(toJson());
      case BiologicallyDerivedProductStorageBuilder _:
        BiologicallyDerivedProductStorage.fromJson(toJson());
      case BodyStructureBuilder _:
        BodyStructure.fromJson(toJson());
      case BundleBuilder _:
        Bundle.fromJson(toJson());
      case BundleLinkBuilder _:
        BundleLink.fromJson(toJson());
      case BundleEntryBuilder _:
        BundleEntry.fromJson(toJson());
      case BundleSearchBuilder _:
        BundleSearch.fromJson(toJson());
      case BundleRequestBuilder _:
        BundleRequest.fromJson(toJson());
      case BundleResponseBuilder _:
        BundleResponse.fromJson(toJson());
      case CapabilityStatementBuilder _:
        CapabilityStatement.fromJson(toJson());
      case CapabilityStatementSoftwareBuilder _:
        CapabilityStatementSoftware.fromJson(toJson());
      case CapabilityStatementImplementationBuilder _:
        CapabilityStatementImplementation.fromJson(toJson());
      case CapabilityStatementRestBuilder _:
        CapabilityStatementRest.fromJson(toJson());
      case CapabilityStatementSecurityBuilder _:
        CapabilityStatementSecurity.fromJson(toJson());
      case CapabilityStatementResourceBuilder _:
        CapabilityStatementResource.fromJson(toJson());
      case CapabilityStatementInteractionBuilder _:
        CapabilityStatementInteraction.fromJson(toJson());
      case CapabilityStatementSearchParamBuilder _:
        CapabilityStatementSearchParam.fromJson(toJson());
      case CapabilityStatementOperationBuilder _:
        CapabilityStatementOperation.fromJson(toJson());
      case CapabilityStatementInteraction1Builder _:
        CapabilityStatementInteraction1.fromJson(toJson());
      case CapabilityStatementMessagingBuilder _:
        CapabilityStatementMessaging.fromJson(toJson());
      case CapabilityStatementEndpointBuilder _:
        CapabilityStatementEndpoint.fromJson(toJson());
      case CapabilityStatementSupportedMessageBuilder _:
        CapabilityStatementSupportedMessage.fromJson(toJson());
      case CapabilityStatementDocumentBuilder _:
        CapabilityStatementDocument.fromJson(toJson());
      case CarePlanBuilder _:
        CarePlan.fromJson(toJson());
      case CarePlanActivityBuilder _:
        CarePlanActivity.fromJson(toJson());
      case CarePlanDetailBuilder _:
        CarePlanDetail.fromJson(toJson());
      case CareTeamBuilder _:
        CareTeam.fromJson(toJson());
      case CareTeamParticipantBuilder _:
        CareTeamParticipant.fromJson(toJson());
      case CatalogEntryBuilder _:
        CatalogEntry.fromJson(toJson());
      case CatalogEntryRelatedEntryBuilder _:
        CatalogEntryRelatedEntry.fromJson(toJson());
      case ChargeItemBuilder _:
        ChargeItem.fromJson(toJson());
      case ChargeItemPerformerBuilder _:
        ChargeItemPerformer.fromJson(toJson());
      case ChargeItemDefinitionBuilder _:
        ChargeItemDefinition.fromJson(toJson());
      case ChargeItemDefinitionApplicabilityBuilder _:
        ChargeItemDefinitionApplicability.fromJson(toJson());
      case ChargeItemDefinitionPropertyGroupBuilder _:
        ChargeItemDefinitionPropertyGroup.fromJson(toJson());
      case ChargeItemDefinitionPriceComponentBuilder _:
        ChargeItemDefinitionPriceComponent.fromJson(toJson());
      case CitationBuilder _:
        Citation.fromJson(toJson());
      case CitationSummaryBuilder _:
        CitationSummary.fromJson(toJson());
      case CitationClassificationBuilder _:
        CitationClassification.fromJson(toJson());
      case CitationStatusDateBuilder _:
        CitationStatusDate.fromJson(toJson());
      case CitationRelatesToBuilder _:
        CitationRelatesTo.fromJson(toJson());
      case CitationCitedArtifactBuilder _:
        CitationCitedArtifact.fromJson(toJson());
      case CitationVersionBuilder _:
        CitationVersion.fromJson(toJson());
      case CitationStatusDate1Builder _:
        CitationStatusDate1.fromJson(toJson());
      case CitationTitleBuilder _:
        CitationTitle.fromJson(toJson());
      case CitationAbstractBuilder _:
        CitationAbstract.fromJson(toJson());
      case CitationPartBuilder _:
        CitationPart.fromJson(toJson());
      case CitationRelatesTo1Builder _:
        CitationRelatesTo1.fromJson(toJson());
      case CitationPublicationFormBuilder _:
        CitationPublicationForm.fromJson(toJson());
      case CitationPublishedInBuilder _:
        CitationPublishedIn.fromJson(toJson());
      case CitationPeriodicReleaseBuilder _:
        CitationPeriodicRelease.fromJson(toJson());
      case CitationDateOfPublicationBuilder _:
        CitationDateOfPublication.fromJson(toJson());
      case CitationWebLocationBuilder _:
        CitationWebLocation.fromJson(toJson());
      case CitationClassification1Builder _:
        CitationClassification1.fromJson(toJson());
      case CitationWhoClassifiedBuilder _:
        CitationWhoClassified.fromJson(toJson());
      case CitationContributorshipBuilder _:
        CitationContributorship.fromJson(toJson());
      case CitationEntryBuilder _:
        CitationEntry.fromJson(toJson());
      case CitationAffiliationInfoBuilder _:
        CitationAffiliationInfo.fromJson(toJson());
      case CitationContributionInstanceBuilder _:
        CitationContributionInstance.fromJson(toJson());
      case CitationSummary1Builder _:
        CitationSummary1.fromJson(toJson());
      case ClaimBuilder _:
        Claim.fromJson(toJson());
      case ClaimRelatedBuilder _:
        ClaimRelated.fromJson(toJson());
      case ClaimPayeeBuilder _:
        ClaimPayee.fromJson(toJson());
      case ClaimCareTeamBuilder _:
        ClaimCareTeam.fromJson(toJson());
      case ClaimSupportingInfoBuilder _:
        ClaimSupportingInfo.fromJson(toJson());
      case ClaimDiagnosisBuilder _:
        ClaimDiagnosis.fromJson(toJson());
      case ClaimProcedureBuilder _:
        ClaimProcedure.fromJson(toJson());
      case ClaimInsuranceBuilder _:
        ClaimInsurance.fromJson(toJson());
      case ClaimAccidentBuilder _:
        ClaimAccident.fromJson(toJson());
      case ClaimItemBuilder _:
        ClaimItem.fromJson(toJson());
      case ClaimDetailBuilder _:
        ClaimDetail.fromJson(toJson());
      case ClaimSubDetailBuilder _:
        ClaimSubDetail.fromJson(toJson());
      case ClaimResponseBuilder _:
        ClaimResponse.fromJson(toJson());
      case ClaimResponseItemBuilder _:
        ClaimResponseItem.fromJson(toJson());
      case ClaimResponseAdjudicationBuilder _:
        ClaimResponseAdjudication.fromJson(toJson());
      case ClaimResponseDetailBuilder _:
        ClaimResponseDetail.fromJson(toJson());
      case ClaimResponseSubDetailBuilder _:
        ClaimResponseSubDetail.fromJson(toJson());
      case ClaimResponseAddItemBuilder _:
        ClaimResponseAddItem.fromJson(toJson());
      case ClaimResponseDetail1Builder _:
        ClaimResponseDetail1.fromJson(toJson());
      case ClaimResponseSubDetail1Builder _:
        ClaimResponseSubDetail1.fromJson(toJson());
      case ClaimResponseTotalBuilder _:
        ClaimResponseTotal.fromJson(toJson());
      case ClaimResponsePaymentBuilder _:
        ClaimResponsePayment.fromJson(toJson());
      case ClaimResponseProcessNoteBuilder _:
        ClaimResponseProcessNote.fromJson(toJson());
      case ClaimResponseInsuranceBuilder _:
        ClaimResponseInsurance.fromJson(toJson());
      case ClaimResponseErrorBuilder _:
        ClaimResponseError.fromJson(toJson());
      case ClinicalImpressionBuilder _:
        ClinicalImpression.fromJson(toJson());
      case ClinicalImpressionInvestigationBuilder _:
        ClinicalImpressionInvestigation.fromJson(toJson());
      case ClinicalImpressionFindingBuilder _:
        ClinicalImpressionFinding.fromJson(toJson());
      case ClinicalUseDefinitionBuilder _:
        ClinicalUseDefinition.fromJson(toJson());
      case ClinicalUseDefinitionContraindicationBuilder _:
        ClinicalUseDefinitionContraindication.fromJson(toJson());
      case ClinicalUseDefinitionOtherTherapyBuilder _:
        ClinicalUseDefinitionOtherTherapy.fromJson(toJson());
      case ClinicalUseDefinitionIndicationBuilder _:
        ClinicalUseDefinitionIndication.fromJson(toJson());
      case ClinicalUseDefinitionInteractionBuilder _:
        ClinicalUseDefinitionInteraction.fromJson(toJson());
      case ClinicalUseDefinitionInteractantBuilder _:
        ClinicalUseDefinitionInteractant.fromJson(toJson());
      case ClinicalUseDefinitionUndesirableEffectBuilder _:
        ClinicalUseDefinitionUndesirableEffect.fromJson(toJson());
      case ClinicalUseDefinitionWarningBuilder _:
        ClinicalUseDefinitionWarning.fromJson(toJson());
      case CodeSystemBuilder _:
        CodeSystem.fromJson(toJson());
      case CodeSystemFilterBuilder _:
        CodeSystemFilter.fromJson(toJson());
      case CodeSystemPropertyBuilder _:
        CodeSystemProperty.fromJson(toJson());
      case CodeSystemConceptBuilder _:
        CodeSystemConcept.fromJson(toJson());
      case CodeSystemDesignationBuilder _:
        CodeSystemDesignation.fromJson(toJson());
      case CodeSystemProperty1Builder _:
        CodeSystemProperty1.fromJson(toJson());
      case CommunicationBuilder _:
        Communication.fromJson(toJson());
      case CommunicationPayloadBuilder _:
        CommunicationPayload.fromJson(toJson());
      case CommunicationRequestBuilder _:
        CommunicationRequest.fromJson(toJson());
      case CommunicationRequestPayloadBuilder _:
        CommunicationRequestPayload.fromJson(toJson());
      case CompartmentDefinitionBuilder _:
        CompartmentDefinition.fromJson(toJson());
      case CompartmentDefinitionResourceBuilder _:
        CompartmentDefinitionResource.fromJson(toJson());
      case CompositionBuilder _:
        Composition.fromJson(toJson());
      case CompositionAttesterBuilder _:
        CompositionAttester.fromJson(toJson());
      case CompositionRelatesToBuilder _:
        CompositionRelatesTo.fromJson(toJson());
      case CompositionEventBuilder _:
        CompositionEvent.fromJson(toJson());
      case CompositionSectionBuilder _:
        CompositionSection.fromJson(toJson());
      case ConceptMapBuilder _:
        ConceptMap.fromJson(toJson());
      case ConceptMapGroupBuilder _:
        ConceptMapGroup.fromJson(toJson());
      case ConceptMapElementBuilder _:
        ConceptMapElement.fromJson(toJson());
      case ConceptMapTargetBuilder _:
        ConceptMapTarget.fromJson(toJson());
      case ConceptMapDependsOnBuilder _:
        ConceptMapDependsOn.fromJson(toJson());
      case ConceptMapUnmappedBuilder _:
        ConceptMapUnmapped.fromJson(toJson());
      case ConditionBuilder _:
        Condition.fromJson(toJson());
      case ConditionStageBuilder _:
        ConditionStage.fromJson(toJson());
      case ConditionEvidenceBuilder _:
        ConditionEvidence.fromJson(toJson());
      case ConsentBuilder _:
        Consent.fromJson(toJson());
      case ConsentPolicyBuilder _:
        ConsentPolicy.fromJson(toJson());
      case ConsentVerificationBuilder _:
        ConsentVerification.fromJson(toJson());
      case ConsentProvisionBuilder _:
        ConsentProvision.fromJson(toJson());
      case ConsentActorBuilder _:
        ConsentActor.fromJson(toJson());
      case ConsentDataBuilder _:
        ConsentData.fromJson(toJson());
      case ContractBuilder _:
        Contract.fromJson(toJson());
      case ContractContentDefinitionBuilder _:
        ContractContentDefinition.fromJson(toJson());
      case ContractTermBuilder _:
        ContractTerm.fromJson(toJson());
      case ContractSecurityLabelBuilder _:
        ContractSecurityLabel.fromJson(toJson());
      case ContractOfferBuilder _:
        ContractOffer.fromJson(toJson());
      case ContractPartyBuilder _:
        ContractParty.fromJson(toJson());
      case ContractAnswerBuilder _:
        ContractAnswer.fromJson(toJson());
      case ContractAssetBuilder _:
        ContractAsset.fromJson(toJson());
      case ContractContextBuilder _:
        ContractContext.fromJson(toJson());
      case ContractValuedItemBuilder _:
        ContractValuedItem.fromJson(toJson());
      case ContractActionBuilder _:
        ContractAction.fromJson(toJson());
      case ContractSubjectBuilder _:
        ContractSubject.fromJson(toJson());
      case ContractSignerBuilder _:
        ContractSigner.fromJson(toJson());
      case ContractFriendlyBuilder _:
        ContractFriendly.fromJson(toJson());
      case ContractLegalBuilder _:
        ContractLegal.fromJson(toJson());
      case ContractRuleBuilder _:
        ContractRule.fromJson(toJson());
      case CoverageBuilder _:
        Coverage.fromJson(toJson());
      case CoverageClassBuilder _:
        CoverageClass.fromJson(toJson());
      case CoverageCostToBeneficiaryBuilder _:
        CoverageCostToBeneficiary.fromJson(toJson());
      case CoverageExceptionBuilder _:
        CoverageException.fromJson(toJson());
      case CoverageEligibilityRequestBuilder _:
        CoverageEligibilityRequest.fromJson(toJson());
      case CoverageEligibilityRequestSupportingInfoBuilder _:
        CoverageEligibilityRequestSupportingInfo.fromJson(toJson());
      case CoverageEligibilityRequestInsuranceBuilder _:
        CoverageEligibilityRequestInsurance.fromJson(toJson());
      case CoverageEligibilityRequestItemBuilder _:
        CoverageEligibilityRequestItem.fromJson(toJson());
      case CoverageEligibilityRequestDiagnosisBuilder _:
        CoverageEligibilityRequestDiagnosis.fromJson(toJson());
      case CoverageEligibilityResponseBuilder _:
        CoverageEligibilityResponse.fromJson(toJson());
      case CoverageEligibilityResponseInsuranceBuilder _:
        CoverageEligibilityResponseInsurance.fromJson(toJson());
      case CoverageEligibilityResponseItemBuilder _:
        CoverageEligibilityResponseItem.fromJson(toJson());
      case CoverageEligibilityResponseBenefitBuilder _:
        CoverageEligibilityResponseBenefit.fromJson(toJson());
      case CoverageEligibilityResponseErrorBuilder _:
        CoverageEligibilityResponseError.fromJson(toJson());
      case DetectedIssueBuilder _:
        DetectedIssue.fromJson(toJson());
      case DetectedIssueEvidenceBuilder _:
        DetectedIssueEvidence.fromJson(toJson());
      case DetectedIssueMitigationBuilder _:
        DetectedIssueMitigation.fromJson(toJson());
      case DeviceBuilder _:
        Device.fromJson(toJson());
      case DeviceUdiCarrierBuilder _:
        DeviceUdiCarrier.fromJson(toJson());
      case DeviceDeviceNameBuilder _:
        DeviceDeviceName.fromJson(toJson());
      case DeviceSpecializationBuilder _:
        DeviceSpecialization.fromJson(toJson());
      case DeviceVersionBuilder _:
        DeviceVersion.fromJson(toJson());
      case DevicePropertyBuilder _:
        DeviceProperty.fromJson(toJson());
      case DeviceDefinitionBuilder _:
        DeviceDefinition.fromJson(toJson());
      case DeviceDefinitionUdiDeviceIdentifierBuilder _:
        DeviceDefinitionUdiDeviceIdentifier.fromJson(toJson());
      case DeviceDefinitionDeviceNameBuilder _:
        DeviceDefinitionDeviceName.fromJson(toJson());
      case DeviceDefinitionSpecializationBuilder _:
        DeviceDefinitionSpecialization.fromJson(toJson());
      case DeviceDefinitionCapabilityBuilder _:
        DeviceDefinitionCapability.fromJson(toJson());
      case DeviceDefinitionPropertyBuilder _:
        DeviceDefinitionProperty.fromJson(toJson());
      case DeviceDefinitionMaterialBuilder _:
        DeviceDefinitionMaterial.fromJson(toJson());
      case DeviceMetricBuilder _:
        DeviceMetric.fromJson(toJson());
      case DeviceMetricCalibrationBuilder _:
        DeviceMetricCalibration.fromJson(toJson());
      case DeviceRequestBuilder _:
        DeviceRequest.fromJson(toJson());
      case DeviceRequestParameterBuilder _:
        DeviceRequestParameter.fromJson(toJson());
      case DeviceUseStatementBuilder _:
        DeviceUseStatement.fromJson(toJson());
      case DiagnosticReportBuilder _:
        DiagnosticReport.fromJson(toJson());
      case DiagnosticReportMediaBuilder _:
        DiagnosticReportMedia.fromJson(toJson());
      case DocumentManifestBuilder _:
        DocumentManifest.fromJson(toJson());
      case DocumentManifestRelatedBuilder _:
        DocumentManifestRelated.fromJson(toJson());
      case DocumentReferenceBuilder _:
        DocumentReference.fromJson(toJson());
      case DocumentReferenceRelatesToBuilder _:
        DocumentReferenceRelatesTo.fromJson(toJson());
      case DocumentReferenceContentBuilder _:
        DocumentReferenceContent.fromJson(toJson());
      case DocumentReferenceContextBuilder _:
        DocumentReferenceContext.fromJson(toJson());
      case EncounterBuilder _:
        Encounter.fromJson(toJson());
      case EncounterStatusHistoryBuilder _:
        EncounterStatusHistory.fromJson(toJson());
      case EncounterClassHistoryBuilder _:
        EncounterClassHistory.fromJson(toJson());
      case EncounterParticipantBuilder _:
        EncounterParticipant.fromJson(toJson());
      case EncounterDiagnosisBuilder _:
        EncounterDiagnosis.fromJson(toJson());
      case EncounterHospitalizationBuilder _:
        EncounterHospitalization.fromJson(toJson());
      case EncounterLocationBuilder _:
        EncounterLocation.fromJson(toJson());
      case FhirEndpointBuilder _:
        FhirEndpoint.fromJson(toJson());
      case EnrollmentRequestBuilder _:
        EnrollmentRequest.fromJson(toJson());
      case EnrollmentResponseBuilder _:
        EnrollmentResponse.fromJson(toJson());
      case EpisodeOfCareBuilder _:
        EpisodeOfCare.fromJson(toJson());
      case EpisodeOfCareStatusHistoryBuilder _:
        EpisodeOfCareStatusHistory.fromJson(toJson());
      case EpisodeOfCareDiagnosisBuilder _:
        EpisodeOfCareDiagnosis.fromJson(toJson());
      case EventDefinitionBuilder _:
        EventDefinition.fromJson(toJson());
      case EvidenceBuilder _:
        Evidence.fromJson(toJson());
      case EvidenceVariableDefinitionBuilder _:
        EvidenceVariableDefinition.fromJson(toJson());
      case EvidenceStatisticBuilder _:
        EvidenceStatistic.fromJson(toJson());
      case EvidenceSampleSizeBuilder _:
        EvidenceSampleSize.fromJson(toJson());
      case EvidenceAttributeEstimateBuilder _:
        EvidenceAttributeEstimate.fromJson(toJson());
      case EvidenceModelCharacteristicBuilder _:
        EvidenceModelCharacteristic.fromJson(toJson());
      case EvidenceModelCharacteristicVariableBuilder _:
        EvidenceModelCharacteristicVariable.fromJson(toJson());
      case EvidenceCertaintyBuilder _:
        EvidenceCertainty.fromJson(toJson());
      case EvidenceReportBuilder _:
        EvidenceReport.fromJson(toJson());
      case EvidenceReportSubjectBuilder _:
        EvidenceReportSubject.fromJson(toJson());
      case EvidenceReportCharacteristicBuilder _:
        EvidenceReportCharacteristic.fromJson(toJson());
      case EvidenceReportRelatesToBuilder _:
        EvidenceReportRelatesTo.fromJson(toJson());
      case EvidenceReportSectionBuilder _:
        EvidenceReportSection.fromJson(toJson());
      case EvidenceVariableBuilder _:
        EvidenceVariable.fromJson(toJson());
      case EvidenceVariableCharacteristicBuilder _:
        EvidenceVariableCharacteristic.fromJson(toJson());
      case EvidenceVariableTimeFromStartBuilder _:
        EvidenceVariableTimeFromStart.fromJson(toJson());
      case EvidenceVariableCategoryBuilder _:
        EvidenceVariableCategory.fromJson(toJson());
      case ExampleScenarioBuilder _:
        ExampleScenario.fromJson(toJson());
      case ExampleScenarioActorBuilder _:
        ExampleScenarioActor.fromJson(toJson());
      case ExampleScenarioInstanceBuilder _:
        ExampleScenarioInstance.fromJson(toJson());
      case ExampleScenarioVersionBuilder _:
        ExampleScenarioVersion.fromJson(toJson());
      case ExampleScenarioContainedInstanceBuilder _:
        ExampleScenarioContainedInstance.fromJson(toJson());
      case ExampleScenarioProcessBuilder _:
        ExampleScenarioProcess.fromJson(toJson());
      case ExampleScenarioStepBuilder _:
        ExampleScenarioStep.fromJson(toJson());
      case ExampleScenarioOperationBuilder _:
        ExampleScenarioOperation.fromJson(toJson());
      case ExampleScenarioAlternativeBuilder _:
        ExampleScenarioAlternative.fromJson(toJson());
      case ExplanationOfBenefitBuilder _:
        ExplanationOfBenefit.fromJson(toJson());
      case ExplanationOfBenefitRelatedBuilder _:
        ExplanationOfBenefitRelated.fromJson(toJson());
      case ExplanationOfBenefitPayeeBuilder _:
        ExplanationOfBenefitPayee.fromJson(toJson());
      case ExplanationOfBenefitCareTeamBuilder _:
        ExplanationOfBenefitCareTeam.fromJson(toJson());
      case ExplanationOfBenefitSupportingInfoBuilder _:
        ExplanationOfBenefitSupportingInfo.fromJson(toJson());
      case ExplanationOfBenefitDiagnosisBuilder _:
        ExplanationOfBenefitDiagnosis.fromJson(toJson());
      case ExplanationOfBenefitProcedureBuilder _:
        ExplanationOfBenefitProcedure.fromJson(toJson());
      case ExplanationOfBenefitInsuranceBuilder _:
        ExplanationOfBenefitInsurance.fromJson(toJson());
      case ExplanationOfBenefitAccidentBuilder _:
        ExplanationOfBenefitAccident.fromJson(toJson());
      case ExplanationOfBenefitItemBuilder _:
        ExplanationOfBenefitItem.fromJson(toJson());
      case ExplanationOfBenefitAdjudicationBuilder _:
        ExplanationOfBenefitAdjudication.fromJson(toJson());
      case ExplanationOfBenefitDetailBuilder _:
        ExplanationOfBenefitDetail.fromJson(toJson());
      case ExplanationOfBenefitSubDetailBuilder _:
        ExplanationOfBenefitSubDetail.fromJson(toJson());
      case ExplanationOfBenefitAddItemBuilder _:
        ExplanationOfBenefitAddItem.fromJson(toJson());
      case ExplanationOfBenefitDetail1Builder _:
        ExplanationOfBenefitDetail1.fromJson(toJson());
      case ExplanationOfBenefitSubDetail1Builder _:
        ExplanationOfBenefitSubDetail1.fromJson(toJson());
      case ExplanationOfBenefitTotalBuilder _:
        ExplanationOfBenefitTotal.fromJson(toJson());
      case ExplanationOfBenefitPaymentBuilder _:
        ExplanationOfBenefitPayment.fromJson(toJson());
      case ExplanationOfBenefitProcessNoteBuilder _:
        ExplanationOfBenefitProcessNote.fromJson(toJson());
      case ExplanationOfBenefitBenefitBalanceBuilder _:
        ExplanationOfBenefitBenefitBalance.fromJson(toJson());
      case ExplanationOfBenefitFinancialBuilder _:
        ExplanationOfBenefitFinancial.fromJson(toJson());
      case FamilyMemberHistoryBuilder _:
        FamilyMemberHistory.fromJson(toJson());
      case FamilyMemberHistoryConditionBuilder _:
        FamilyMemberHistoryCondition.fromJson(toJson());
      case FlagBuilder _:
        Flag.fromJson(toJson());
      case GoalBuilder _:
        Goal.fromJson(toJson());
      case GoalTargetBuilder _:
        GoalTarget.fromJson(toJson());
      case GraphDefinitionBuilder _:
        GraphDefinition.fromJson(toJson());
      case GraphDefinitionLinkBuilder _:
        GraphDefinitionLink.fromJson(toJson());
      case GraphDefinitionTargetBuilder _:
        GraphDefinitionTarget.fromJson(toJson());
      case GraphDefinitionCompartmentBuilder _:
        GraphDefinitionCompartment.fromJson(toJson());
      case FhirGroupBuilder _:
        FhirGroup.fromJson(toJson());
      case GroupCharacteristicBuilder _:
        GroupCharacteristic.fromJson(toJson());
      case GroupMemberBuilder _:
        GroupMember.fromJson(toJson());
      case GuidanceResponseBuilder _:
        GuidanceResponse.fromJson(toJson());
      case HealthcareServiceBuilder _:
        HealthcareService.fromJson(toJson());
      case HealthcareServiceEligibilityBuilder _:
        HealthcareServiceEligibility.fromJson(toJson());
      case HealthcareServiceAvailableTimeBuilder _:
        HealthcareServiceAvailableTime.fromJson(toJson());
      case HealthcareServiceNotAvailableBuilder _:
        HealthcareServiceNotAvailable.fromJson(toJson());
      case ImagingStudyBuilder _:
        ImagingStudy.fromJson(toJson());
      case ImagingStudySeriesBuilder _:
        ImagingStudySeries.fromJson(toJson());
      case ImagingStudyPerformerBuilder _:
        ImagingStudyPerformer.fromJson(toJson());
      case ImagingStudyInstanceBuilder _:
        ImagingStudyInstance.fromJson(toJson());
      case ImmunizationBuilder _:
        Immunization.fromJson(toJson());
      case ImmunizationPerformerBuilder _:
        ImmunizationPerformer.fromJson(toJson());
      case ImmunizationEducationBuilder _:
        ImmunizationEducation.fromJson(toJson());
      case ImmunizationReactionBuilder _:
        ImmunizationReaction.fromJson(toJson());
      case ImmunizationProtocolAppliedBuilder _:
        ImmunizationProtocolApplied.fromJson(toJson());
      case ImmunizationEvaluationBuilder _:
        ImmunizationEvaluation.fromJson(toJson());
      case ImmunizationRecommendationBuilder _:
        ImmunizationRecommendation.fromJson(toJson());
      case ImmunizationRecommendationRecommendationBuilder _:
        ImmunizationRecommendationRecommendation.fromJson(toJson());
      case ImmunizationRecommendationDateCriterionBuilder _:
        ImmunizationRecommendationDateCriterion.fromJson(toJson());
      case ImplementationGuideBuilder _:
        ImplementationGuide.fromJson(toJson());
      case ImplementationGuideDependsOnBuilder _:
        ImplementationGuideDependsOn.fromJson(toJson());
      case ImplementationGuideGlobalBuilder _:
        ImplementationGuideGlobal.fromJson(toJson());
      case ImplementationGuideDefinitionBuilder _:
        ImplementationGuideDefinition.fromJson(toJson());
      case ImplementationGuideGroupingBuilder _:
        ImplementationGuideGrouping.fromJson(toJson());
      case ImplementationGuideResourceBuilder _:
        ImplementationGuideResource.fromJson(toJson());
      case ImplementationGuidePageBuilder _:
        ImplementationGuidePage.fromJson(toJson());
      case ImplementationGuideParameterBuilder _:
        ImplementationGuideParameter.fromJson(toJson());
      case ImplementationGuideTemplateBuilder _:
        ImplementationGuideTemplate.fromJson(toJson());
      case ImplementationGuideManifestBuilder _:
        ImplementationGuideManifest.fromJson(toJson());
      case ImplementationGuideResource1Builder _:
        ImplementationGuideResource1.fromJson(toJson());
      case ImplementationGuidePage1Builder _:
        ImplementationGuidePage1.fromJson(toJson());
      case IngredientBuilder _:
        Ingredient.fromJson(toJson());
      case IngredientManufacturerBuilder _:
        IngredientManufacturer.fromJson(toJson());
      case IngredientSubstanceBuilder _:
        IngredientSubstance.fromJson(toJson());
      case IngredientStrengthBuilder _:
        IngredientStrength.fromJson(toJson());
      case IngredientReferenceStrengthBuilder _:
        IngredientReferenceStrength.fromJson(toJson());
      case InsurancePlanBuilder _:
        InsurancePlan.fromJson(toJson());
      case InsurancePlanContactBuilder _:
        InsurancePlanContact.fromJson(toJson());
      case InsurancePlanCoverageBuilder _:
        InsurancePlanCoverage.fromJson(toJson());
      case InsurancePlanBenefitBuilder _:
        InsurancePlanBenefit.fromJson(toJson());
      case InsurancePlanLimitBuilder _:
        InsurancePlanLimit.fromJson(toJson());
      case InsurancePlanPlanBuilder _:
        InsurancePlanPlan.fromJson(toJson());
      case InsurancePlanGeneralCostBuilder _:
        InsurancePlanGeneralCost.fromJson(toJson());
      case InsurancePlanSpecificCostBuilder _:
        InsurancePlanSpecificCost.fromJson(toJson());
      case InsurancePlanBenefit1Builder _:
        InsurancePlanBenefit1.fromJson(toJson());
      case InsurancePlanCostBuilder _:
        InsurancePlanCost.fromJson(toJson());
      case InvoiceBuilder _:
        Invoice.fromJson(toJson());
      case InvoiceParticipantBuilder _:
        InvoiceParticipant.fromJson(toJson());
      case InvoiceLineItemBuilder _:
        InvoiceLineItem.fromJson(toJson());
      case InvoicePriceComponentBuilder _:
        InvoicePriceComponent.fromJson(toJson());
      case LibraryBuilder _:
        Library.fromJson(toJson());
      case LinkageBuilder _:
        Linkage.fromJson(toJson());
      case LinkageItemBuilder _:
        LinkageItem.fromJson(toJson());
      case FhirListBuilder _:
        FhirList.fromJson(toJson());
      case ListEntryBuilder _:
        ListEntry.fromJson(toJson());
      case LocationBuilder _:
        Location.fromJson(toJson());
      case LocationPositionBuilder _:
        LocationPosition.fromJson(toJson());
      case LocationHoursOfOperationBuilder _:
        LocationHoursOfOperation.fromJson(toJson());
      case ManufacturedItemDefinitionBuilder _:
        ManufacturedItemDefinition.fromJson(toJson());
      case ManufacturedItemDefinitionPropertyBuilder _:
        ManufacturedItemDefinitionProperty.fromJson(toJson());
      case MeasureBuilder _:
        Measure.fromJson(toJson());
      case MeasureGroupBuilder _:
        MeasureGroup.fromJson(toJson());
      case MeasurePopulationBuilder _:
        MeasurePopulation.fromJson(toJson());
      case MeasureStratifierBuilder _:
        MeasureStratifier.fromJson(toJson());
      case MeasureComponentBuilder _:
        MeasureComponent.fromJson(toJson());
      case MeasureSupplementalDataBuilder _:
        MeasureSupplementalData.fromJson(toJson());
      case MeasureReportBuilder _:
        MeasureReport.fromJson(toJson());
      case MeasureReportGroupBuilder _:
        MeasureReportGroup.fromJson(toJson());
      case MeasureReportPopulationBuilder _:
        MeasureReportPopulation.fromJson(toJson());
      case MeasureReportStratifierBuilder _:
        MeasureReportStratifier.fromJson(toJson());
      case MeasureReportStratumBuilder _:
        MeasureReportStratum.fromJson(toJson());
      case MeasureReportComponentBuilder _:
        MeasureReportComponent.fromJson(toJson());
      case MeasureReportPopulation1Builder _:
        MeasureReportPopulation1.fromJson(toJson());
      case MediaBuilder _:
        Media.fromJson(toJson());
      case MedicationBuilder _:
        Medication.fromJson(toJson());
      case MedicationIngredientBuilder _:
        MedicationIngredient.fromJson(toJson());
      case MedicationBatchBuilder _:
        MedicationBatch.fromJson(toJson());
      case MedicationAdministrationBuilder _:
        MedicationAdministration.fromJson(toJson());
      case MedicationAdministrationPerformerBuilder _:
        MedicationAdministrationPerformer.fromJson(toJson());
      case MedicationAdministrationDosageBuilder _:
        MedicationAdministrationDosage.fromJson(toJson());
      case MedicationDispenseBuilder _:
        MedicationDispense.fromJson(toJson());
      case MedicationDispensePerformerBuilder _:
        MedicationDispensePerformer.fromJson(toJson());
      case MedicationDispenseSubstitutionBuilder _:
        MedicationDispenseSubstitution.fromJson(toJson());
      case MedicationKnowledgeBuilder _:
        MedicationKnowledge.fromJson(toJson());
      case MedicationKnowledgeRelatedMedicationKnowledgeBuilder _:
        MedicationKnowledgeRelatedMedicationKnowledge.fromJson(toJson());
      case MedicationKnowledgeMonographBuilder _:
        MedicationKnowledgeMonograph.fromJson(toJson());
      case MedicationKnowledgeIngredientBuilder _:
        MedicationKnowledgeIngredient.fromJson(toJson());
      case MedicationKnowledgeCostBuilder _:
        MedicationKnowledgeCost.fromJson(toJson());
      case MedicationKnowledgeMonitoringProgramBuilder _:
        MedicationKnowledgeMonitoringProgram.fromJson(toJson());
      case MedicationKnowledgeAdministrationGuidelinesBuilder _:
        MedicationKnowledgeAdministrationGuidelines.fromJson(toJson());
      case MedicationKnowledgeDosageBuilder _:
        MedicationKnowledgeDosage.fromJson(toJson());
      case MedicationKnowledgePatientCharacteristicsBuilder _:
        MedicationKnowledgePatientCharacteristics.fromJson(toJson());
      case MedicationKnowledgeMedicineClassificationBuilder _:
        MedicationKnowledgeMedicineClassification.fromJson(toJson());
      case MedicationKnowledgePackagingBuilder _:
        MedicationKnowledgePackaging.fromJson(toJson());
      case MedicationKnowledgeDrugCharacteristicBuilder _:
        MedicationKnowledgeDrugCharacteristic.fromJson(toJson());
      case MedicationKnowledgeRegulatoryBuilder _:
        MedicationKnowledgeRegulatory.fromJson(toJson());
      case MedicationKnowledgeSubstitutionBuilder _:
        MedicationKnowledgeSubstitution.fromJson(toJson());
      case MedicationKnowledgeScheduleBuilder _:
        MedicationKnowledgeSchedule.fromJson(toJson());
      case MedicationKnowledgeMaxDispenseBuilder _:
        MedicationKnowledgeMaxDispense.fromJson(toJson());
      case MedicationKnowledgeKineticsBuilder _:
        MedicationKnowledgeKinetics.fromJson(toJson());
      case MedicationRequestBuilder _:
        MedicationRequest.fromJson(toJson());
      case MedicationRequestDispenseRequestBuilder _:
        MedicationRequestDispenseRequest.fromJson(toJson());
      case MedicationRequestInitialFillBuilder _:
        MedicationRequestInitialFill.fromJson(toJson());
      case MedicationRequestSubstitutionBuilder _:
        MedicationRequestSubstitution.fromJson(toJson());
      case MedicationStatementBuilder _:
        MedicationStatement.fromJson(toJson());
      case MedicinalProductDefinitionBuilder _:
        MedicinalProductDefinition.fromJson(toJson());
      case MedicinalProductDefinitionContactBuilder _:
        MedicinalProductDefinitionContact.fromJson(toJson());
      case MedicinalProductDefinitionNameBuilder _:
        MedicinalProductDefinitionName.fromJson(toJson());
      case MedicinalProductDefinitionNamePartBuilder _:
        MedicinalProductDefinitionNamePart.fromJson(toJson());
      case MedicinalProductDefinitionCountryLanguageBuilder _:
        MedicinalProductDefinitionCountryLanguage.fromJson(toJson());
      case MedicinalProductDefinitionCrossReferenceBuilder _:
        MedicinalProductDefinitionCrossReference.fromJson(toJson());
      case MedicinalProductDefinitionOperationBuilder _:
        MedicinalProductDefinitionOperation.fromJson(toJson());
      case MedicinalProductDefinitionCharacteristicBuilder _:
        MedicinalProductDefinitionCharacteristic.fromJson(toJson());
      case MessageDefinitionBuilder _:
        MessageDefinition.fromJson(toJson());
      case MessageDefinitionFocusBuilder _:
        MessageDefinitionFocus.fromJson(toJson());
      case MessageDefinitionAllowedResponseBuilder _:
        MessageDefinitionAllowedResponse.fromJson(toJson());
      case MessageHeaderBuilder _:
        MessageHeader.fromJson(toJson());
      case MessageHeaderDestinationBuilder _:
        MessageHeaderDestination.fromJson(toJson());
      case MessageHeaderSourceBuilder _:
        MessageHeaderSource.fromJson(toJson());
      case MessageHeaderResponseBuilder _:
        MessageHeaderResponse.fromJson(toJson());
      case MolecularSequenceBuilder _:
        MolecularSequence.fromJson(toJson());
      case MolecularSequenceReferenceSeqBuilder _:
        MolecularSequenceReferenceSeq.fromJson(toJson());
      case MolecularSequenceVariantBuilder _:
        MolecularSequenceVariant.fromJson(toJson());
      case MolecularSequenceQualityBuilder _:
        MolecularSequenceQuality.fromJson(toJson());
      case MolecularSequenceRocBuilder _:
        MolecularSequenceRoc.fromJson(toJson());
      case MolecularSequenceRepositoryBuilder _:
        MolecularSequenceRepository.fromJson(toJson());
      case MolecularSequenceStructureVariantBuilder _:
        MolecularSequenceStructureVariant.fromJson(toJson());
      case MolecularSequenceOuterBuilder _:
        MolecularSequenceOuter.fromJson(toJson());
      case MolecularSequenceInnerBuilder _:
        MolecularSequenceInner.fromJson(toJson());
      case NamingSystemBuilder _:
        NamingSystem.fromJson(toJson());
      case NamingSystemUniqueIdBuilder _:
        NamingSystemUniqueId.fromJson(toJson());
      case NutritionOrderBuilder _:
        NutritionOrder.fromJson(toJson());
      case NutritionOrderOralDietBuilder _:
        NutritionOrderOralDiet.fromJson(toJson());
      case NutritionOrderNutrientBuilder _:
        NutritionOrderNutrient.fromJson(toJson());
      case NutritionOrderTextureBuilder _:
        NutritionOrderTexture.fromJson(toJson());
      case NutritionOrderSupplementBuilder _:
        NutritionOrderSupplement.fromJson(toJson());
      case NutritionOrderEnteralFormulaBuilder _:
        NutritionOrderEnteralFormula.fromJson(toJson());
      case NutritionOrderAdministrationBuilder _:
        NutritionOrderAdministration.fromJson(toJson());
      case NutritionProductBuilder _:
        NutritionProduct.fromJson(toJson());
      case NutritionProductNutrientBuilder _:
        NutritionProductNutrient.fromJson(toJson());
      case NutritionProductIngredientBuilder _:
        NutritionProductIngredient.fromJson(toJson());
      case NutritionProductProductCharacteristicBuilder _:
        NutritionProductProductCharacteristic.fromJson(toJson());
      case NutritionProductInstanceBuilder _:
        NutritionProductInstance.fromJson(toJson());
      case ObservationBuilder _:
        Observation.fromJson(toJson());
      case ObservationReferenceRangeBuilder _:
        ObservationReferenceRange.fromJson(toJson());
      case ObservationComponentBuilder _:
        ObservationComponent.fromJson(toJson());
      case ObservationDefinitionBuilder _:
        ObservationDefinition.fromJson(toJson());
      case ObservationDefinitionQuantitativeDetailsBuilder _:
        ObservationDefinitionQuantitativeDetails.fromJson(toJson());
      case ObservationDefinitionQualifiedIntervalBuilder _:
        ObservationDefinitionQualifiedInterval.fromJson(toJson());
      case OperationDefinitionBuilder _:
        OperationDefinition.fromJson(toJson());
      case OperationDefinitionParameterBuilder _:
        OperationDefinitionParameter.fromJson(toJson());
      case OperationDefinitionBindingBuilder _:
        OperationDefinitionBinding.fromJson(toJson());
      case OperationDefinitionReferencedFromBuilder _:
        OperationDefinitionReferencedFrom.fromJson(toJson());
      case OperationDefinitionOverloadBuilder _:
        OperationDefinitionOverload.fromJson(toJson());
      case OperationOutcomeBuilder _:
        OperationOutcome.fromJson(toJson());
      case OperationOutcomeIssueBuilder _:
        OperationOutcomeIssue.fromJson(toJson());
      case OrganizationBuilder _:
        Organization.fromJson(toJson());
      case OrganizationContactBuilder _:
        OrganizationContact.fromJson(toJson());
      case OrganizationAffiliationBuilder _:
        OrganizationAffiliation.fromJson(toJson());
      case PackagedProductDefinitionBuilder _:
        PackagedProductDefinition.fromJson(toJson());
      case PackagedProductDefinitionLegalStatusOfSupplyBuilder _:
        PackagedProductDefinitionLegalStatusOfSupply.fromJson(toJson());
      case PackagedProductDefinitionPackageBuilder _:
        PackagedProductDefinitionPackage.fromJson(toJson());
      case PackagedProductDefinitionShelfLifeStorageBuilder _:
        PackagedProductDefinitionShelfLifeStorage.fromJson(toJson());
      case PackagedProductDefinitionPropertyBuilder _:
        PackagedProductDefinitionProperty.fromJson(toJson());
      case PackagedProductDefinitionContainedItemBuilder _:
        PackagedProductDefinitionContainedItem.fromJson(toJson());
      case ParametersBuilder _:
        Parameters.fromJson(toJson());
      case ParametersParameterBuilder _:
        ParametersParameter.fromJson(toJson());
      case PatientBuilder _:
        Patient.fromJson(toJson());
      case PatientContactBuilder _:
        PatientContact.fromJson(toJson());
      case PatientCommunicationBuilder _:
        PatientCommunication.fromJson(toJson());
      case PatientLinkBuilder _:
        PatientLink.fromJson(toJson());
      case PaymentNoticeBuilder _:
        PaymentNotice.fromJson(toJson());
      case PaymentReconciliationBuilder _:
        PaymentReconciliation.fromJson(toJson());
      case PaymentReconciliationDetailBuilder _:
        PaymentReconciliationDetail.fromJson(toJson());
      case PaymentReconciliationProcessNoteBuilder _:
        PaymentReconciliationProcessNote.fromJson(toJson());
      case PersonBuilder _:
        Person.fromJson(toJson());
      case PersonLinkBuilder _:
        PersonLink.fromJson(toJson());
      case PlanDefinitionBuilder _:
        PlanDefinition.fromJson(toJson());
      case PlanDefinitionGoalBuilder _:
        PlanDefinitionGoal.fromJson(toJson());
      case PlanDefinitionTargetBuilder _:
        PlanDefinitionTarget.fromJson(toJson());
      case PlanDefinitionActionBuilder _:
        PlanDefinitionAction.fromJson(toJson());
      case PlanDefinitionConditionBuilder _:
        PlanDefinitionCondition.fromJson(toJson());
      case PlanDefinitionRelatedActionBuilder _:
        PlanDefinitionRelatedAction.fromJson(toJson());
      case PlanDefinitionParticipantBuilder _:
        PlanDefinitionParticipant.fromJson(toJson());
      case PlanDefinitionDynamicValueBuilder _:
        PlanDefinitionDynamicValue.fromJson(toJson());
      case PractitionerBuilder _:
        Practitioner.fromJson(toJson());
      case PractitionerQualificationBuilder _:
        PractitionerQualification.fromJson(toJson());
      case PractitionerRoleBuilder _:
        PractitionerRole.fromJson(toJson());
      case PractitionerRoleAvailableTimeBuilder _:
        PractitionerRoleAvailableTime.fromJson(toJson());
      case PractitionerRoleNotAvailableBuilder _:
        PractitionerRoleNotAvailable.fromJson(toJson());
      case ProcedureBuilder _:
        Procedure.fromJson(toJson());
      case ProcedurePerformerBuilder _:
        ProcedurePerformer.fromJson(toJson());
      case ProcedureFocalDeviceBuilder _:
        ProcedureFocalDevice.fromJson(toJson());
      case ProvenanceBuilder _:
        Provenance.fromJson(toJson());
      case ProvenanceAgentBuilder _:
        ProvenanceAgent.fromJson(toJson());
      case ProvenanceEntityBuilder _:
        ProvenanceEntity.fromJson(toJson());
      case QuestionnaireBuilder _:
        Questionnaire.fromJson(toJson());
      case QuestionnaireItemBuilder _:
        QuestionnaireItem.fromJson(toJson());
      case QuestionnaireEnableWhenBuilder _:
        QuestionnaireEnableWhen.fromJson(toJson());
      case QuestionnaireAnswerOptionBuilder _:
        QuestionnaireAnswerOption.fromJson(toJson());
      case QuestionnaireInitialBuilder _:
        QuestionnaireInitial.fromJson(toJson());
      case QuestionnaireResponseBuilder _:
        QuestionnaireResponse.fromJson(toJson());
      case QuestionnaireResponseItemBuilder _:
        QuestionnaireResponseItem.fromJson(toJson());
      case QuestionnaireResponseAnswerBuilder _:
        QuestionnaireResponseAnswer.fromJson(toJson());
      case RegulatedAuthorizationBuilder _:
        RegulatedAuthorization.fromJson(toJson());
      case RelatedPersonBuilder _:
        RelatedPerson.fromJson(toJson());
      case RelatedPersonCommunicationBuilder _:
        RelatedPersonCommunication.fromJson(toJson());
      case RequestGroupBuilder _:
        RequestGroup.fromJson(toJson());
      case RequestGroupActionBuilder _:
        RequestGroupAction.fromJson(toJson());
      case RequestGroupConditionBuilder _:
        RequestGroupCondition.fromJson(toJson());
      case RequestGroupRelatedActionBuilder _:
        RequestGroupRelatedAction.fromJson(toJson());
      case ResearchDefinitionBuilder _:
        ResearchDefinition.fromJson(toJson());
      case ResearchElementDefinitionBuilder _:
        ResearchElementDefinition.fromJson(toJson());
      case ResearchElementDefinitionCharacteristicBuilder _:
        ResearchElementDefinitionCharacteristic.fromJson(toJson());
      case ResearchStudyBuilder _:
        ResearchStudy.fromJson(toJson());
      case ResearchStudyArmBuilder _:
        ResearchStudyArm.fromJson(toJson());
      case ResearchStudyObjectiveBuilder _:
        ResearchStudyObjective.fromJson(toJson());
      case ResearchSubjectBuilder _:
        ResearchSubject.fromJson(toJson());
      case RiskAssessmentBuilder _:
        RiskAssessment.fromJson(toJson());
      case RiskAssessmentPredictionBuilder _:
        RiskAssessmentPrediction.fromJson(toJson());
      case ScheduleBuilder _:
        Schedule.fromJson(toJson());
      case SearchParameterBuilder _:
        SearchParameter.fromJson(toJson());
      case SearchParameterComponentBuilder _:
        SearchParameterComponent.fromJson(toJson());
      case ServiceRequestBuilder _:
        ServiceRequest.fromJson(toJson());
      case SlotBuilder _:
        Slot.fromJson(toJson());
      case SpecimenBuilder _:
        Specimen.fromJson(toJson());
      case SpecimenCollectionBuilder _:
        SpecimenCollection.fromJson(toJson());
      case SpecimenProcessingBuilder _:
        SpecimenProcessing.fromJson(toJson());
      case SpecimenContainerBuilder _:
        SpecimenContainer.fromJson(toJson());
      case SpecimenDefinitionBuilder _:
        SpecimenDefinition.fromJson(toJson());
      case SpecimenDefinitionTypeTestedBuilder _:
        SpecimenDefinitionTypeTested.fromJson(toJson());
      case SpecimenDefinitionContainerBuilder _:
        SpecimenDefinitionContainer.fromJson(toJson());
      case SpecimenDefinitionAdditiveBuilder _:
        SpecimenDefinitionAdditive.fromJson(toJson());
      case SpecimenDefinitionHandlingBuilder _:
        SpecimenDefinitionHandling.fromJson(toJson());
      case StructureDefinitionBuilder _:
        StructureDefinition.fromJson(toJson());
      case StructureDefinitionMappingBuilder _:
        StructureDefinitionMapping.fromJson(toJson());
      case StructureDefinitionContextBuilder _:
        StructureDefinitionContext.fromJson(toJson());
      case StructureDefinitionSnapshotBuilder _:
        StructureDefinitionSnapshot.fromJson(toJson());
      case StructureDefinitionDifferentialBuilder _:
        StructureDefinitionDifferential.fromJson(toJson());
      case StructureMapBuilder _:
        StructureMap.fromJson(toJson());
      case StructureMapStructureBuilder _:
        StructureMapStructure.fromJson(toJson());
      case StructureMapGroupBuilder _:
        StructureMapGroup.fromJson(toJson());
      case StructureMapInputBuilder _:
        StructureMapInput.fromJson(toJson());
      case StructureMapRuleBuilder _:
        StructureMapRule.fromJson(toJson());
      case StructureMapSourceBuilder _:
        StructureMapSource.fromJson(toJson());
      case StructureMapTargetBuilder _:
        StructureMapTarget.fromJson(toJson());
      case StructureMapParameterBuilder _:
        StructureMapParameter.fromJson(toJson());
      case StructureMapDependentBuilder _:
        StructureMapDependent.fromJson(toJson());
      case SubscriptionBuilder _:
        Subscription.fromJson(toJson());
      case SubscriptionChannelBuilder _:
        SubscriptionChannel.fromJson(toJson());
      case SubscriptionStatusBuilder _:
        SubscriptionStatus.fromJson(toJson());
      case SubscriptionStatusNotificationEventBuilder _:
        SubscriptionStatusNotificationEvent.fromJson(toJson());
      case SubscriptionTopicBuilder _:
        SubscriptionTopic.fromJson(toJson());
      case SubscriptionTopicResourceTriggerBuilder _:
        SubscriptionTopicResourceTrigger.fromJson(toJson());
      case SubscriptionTopicQueryCriteriaBuilder _:
        SubscriptionTopicQueryCriteria.fromJson(toJson());
      case SubscriptionTopicEventTriggerBuilder _:
        SubscriptionTopicEventTrigger.fromJson(toJson());
      case SubscriptionTopicCanFilterByBuilder _:
        SubscriptionTopicCanFilterBy.fromJson(toJson());
      case SubscriptionTopicNotificationShapeBuilder _:
        SubscriptionTopicNotificationShape.fromJson(toJson());
      case SubstanceBuilder _:
        Substance.fromJson(toJson());
      case SubstanceInstanceBuilder _:
        SubstanceInstance.fromJson(toJson());
      case SubstanceIngredientBuilder _:
        SubstanceIngredient.fromJson(toJson());
      case SubstanceDefinitionBuilder _:
        SubstanceDefinition.fromJson(toJson());
      case SubstanceDefinitionMoietyBuilder _:
        SubstanceDefinitionMoiety.fromJson(toJson());
      case SubstanceDefinitionPropertyBuilder _:
        SubstanceDefinitionProperty.fromJson(toJson());
      case SubstanceDefinitionMolecularWeightBuilder _:
        SubstanceDefinitionMolecularWeight.fromJson(toJson());
      case SubstanceDefinitionStructureBuilder _:
        SubstanceDefinitionStructure.fromJson(toJson());
      case SubstanceDefinitionRepresentationBuilder _:
        SubstanceDefinitionRepresentation.fromJson(toJson());
      case SubstanceDefinitionCodeBuilder _:
        SubstanceDefinitionCode.fromJson(toJson());
      case SubstanceDefinitionNameBuilder _:
        SubstanceDefinitionName.fromJson(toJson());
      case SubstanceDefinitionOfficialBuilder _:
        SubstanceDefinitionOfficial.fromJson(toJson());
      case SubstanceDefinitionRelationshipBuilder _:
        SubstanceDefinitionRelationship.fromJson(toJson());
      case SubstanceDefinitionSourceMaterialBuilder _:
        SubstanceDefinitionSourceMaterial.fromJson(toJson());
      case SupplyDeliveryBuilder _:
        SupplyDelivery.fromJson(toJson());
      case SupplyDeliverySuppliedItemBuilder _:
        SupplyDeliverySuppliedItem.fromJson(toJson());
      case SupplyRequestBuilder _:
        SupplyRequest.fromJson(toJson());
      case SupplyRequestParameterBuilder _:
        SupplyRequestParameter.fromJson(toJson());
      case TaskBuilder _:
        Task.fromJson(toJson());
      case TaskRestrictionBuilder _:
        TaskRestriction.fromJson(toJson());
      case TaskInputBuilder _:
        TaskInput.fromJson(toJson());
      case TaskOutputBuilder _:
        TaskOutput.fromJson(toJson());
      case TerminologyCapabilitiesBuilder _:
        TerminologyCapabilities.fromJson(toJson());
      case TerminologyCapabilitiesSoftwareBuilder _:
        TerminologyCapabilitiesSoftware.fromJson(toJson());
      case TerminologyCapabilitiesImplementationBuilder _:
        TerminologyCapabilitiesImplementation.fromJson(toJson());
      case TerminologyCapabilitiesCodeSystemBuilder _:
        TerminologyCapabilitiesCodeSystem.fromJson(toJson());
      case TerminologyCapabilitiesVersionBuilder _:
        TerminologyCapabilitiesVersion.fromJson(toJson());
      case TerminologyCapabilitiesFilterBuilder _:
        TerminologyCapabilitiesFilter.fromJson(toJson());
      case TerminologyCapabilitiesExpansionBuilder _:
        TerminologyCapabilitiesExpansion.fromJson(toJson());
      case TerminologyCapabilitiesParameterBuilder _:
        TerminologyCapabilitiesParameter.fromJson(toJson());
      case TerminologyCapabilitiesValidateCodeBuilder _:
        TerminologyCapabilitiesValidateCode.fromJson(toJson());
      case TerminologyCapabilitiesTranslationBuilder _:
        TerminologyCapabilitiesTranslation.fromJson(toJson());
      case TerminologyCapabilitiesClosureBuilder _:
        TerminologyCapabilitiesClosure.fromJson(toJson());
      case TestReportBuilder _:
        TestReport.fromJson(toJson());
      case TestReportParticipantBuilder _:
        TestReportParticipant.fromJson(toJson());
      case TestReportSetupBuilder _:
        TestReportSetup.fromJson(toJson());
      case TestReportActionBuilder _:
        TestReportAction.fromJson(toJson());
      case TestReportOperationBuilder _:
        TestReportOperation.fromJson(toJson());
      case TestReportAssertBuilder _:
        TestReportAssert.fromJson(toJson());
      case TestReportTestBuilder _:
        TestReportTest.fromJson(toJson());
      case TestReportAction1Builder _:
        TestReportAction1.fromJson(toJson());
      case TestReportTeardownBuilder _:
        TestReportTeardown.fromJson(toJson());
      case TestReportAction2Builder _:
        TestReportAction2.fromJson(toJson());
      case TestScriptBuilder _:
        TestScript.fromJson(toJson());
      case TestScriptOriginBuilder _:
        TestScriptOrigin.fromJson(toJson());
      case TestScriptDestinationBuilder _:
        TestScriptDestination.fromJson(toJson());
      case TestScriptMetadataBuilder _:
        TestScriptMetadata.fromJson(toJson());
      case TestScriptLinkBuilder _:
        TestScriptLink.fromJson(toJson());
      case TestScriptCapabilityBuilder _:
        TestScriptCapability.fromJson(toJson());
      case TestScriptFixtureBuilder _:
        TestScriptFixture.fromJson(toJson());
      case TestScriptVariableBuilder _:
        TestScriptVariable.fromJson(toJson());
      case TestScriptSetupBuilder _:
        TestScriptSetup.fromJson(toJson());
      case TestScriptActionBuilder _:
        TestScriptAction.fromJson(toJson());
      case TestScriptOperationBuilder _:
        TestScriptOperation.fromJson(toJson());
      case TestScriptRequestHeaderBuilder _:
        TestScriptRequestHeader.fromJson(toJson());
      case TestScriptAssertBuilder _:
        TestScriptAssert.fromJson(toJson());
      case TestScriptTestBuilder _:
        TestScriptTest.fromJson(toJson());
      case TestScriptAction1Builder _:
        TestScriptAction1.fromJson(toJson());
      case TestScriptTeardownBuilder _:
        TestScriptTeardown.fromJson(toJson());
      case TestScriptAction2Builder _:
        TestScriptAction2.fromJson(toJson());
      case ValueSetBuilder _:
        ValueSet.fromJson(toJson());
      case ValueSetComposeBuilder _:
        ValueSetCompose.fromJson(toJson());
      case ValueSetIncludeBuilder _:
        ValueSetInclude.fromJson(toJson());
      case ValueSetConceptBuilder _:
        ValueSetConcept.fromJson(toJson());
      case ValueSetDesignationBuilder _:
        ValueSetDesignation.fromJson(toJson());
      case ValueSetFilterBuilder _:
        ValueSetFilter.fromJson(toJson());
      case ValueSetExpansionBuilder _:
        ValueSetExpansion.fromJson(toJson());
      case ValueSetParameterBuilder _:
        ValueSetParameter.fromJson(toJson());
      case ValueSetContainsBuilder _:
        ValueSetContains.fromJson(toJson());
      case VerificationResultBuilder _:
        VerificationResult.fromJson(toJson());
      case VerificationResultPrimarySourceBuilder _:
        VerificationResultPrimarySource.fromJson(toJson());
      case VerificationResultAttestationBuilder _:
        VerificationResultAttestation.fromJson(toJson());
      case VerificationResultValidatorBuilder _:
        VerificationResultValidator.fromJson(toJson());
      case VisionPrescriptionBuilder _:
        VisionPrescription.fromJson(toJson());
      case VisionPrescriptionLensSpecificationBuilder _:
        VisionPrescriptionLensSpecification.fromJson(toJson());
      case VisionPrescriptionPrismBuilder _:
        VisionPrescriptionPrism.fromJson(toJson());
      case AddressBuilder _:
        Address.fromJson(toJson());
      case AnnotationBuilder _:
        Annotation.fromJson(toJson());
      case AttachmentBuilder _:
        Attachment.fromJson(toJson());
      case CodeableConceptBuilder _:
        CodeableConcept.fromJson(toJson());
      case CodeableReferenceBuilder _:
        CodeableReference.fromJson(toJson());
      case CodingBuilder _:
        Coding.fromJson(toJson());
      case ContactDetailBuilder _:
        ContactDetail.fromJson(toJson());
      case ContactPointBuilder _:
        ContactPoint.fromJson(toJson());
      case ContributorBuilder _:
        Contributor.fromJson(toJson());
      case CountBuilder _:
        Count.fromJson(toJson());
      case DataRequirementBuilder _:
        DataRequirement.fromJson(toJson());
      case DataRequirementCodeFilterBuilder _:
        DataRequirementCodeFilter.fromJson(toJson());
      case DataRequirementDateFilterBuilder _:
        DataRequirementDateFilter.fromJson(toJson());
      case DataRequirementSortBuilder _:
        DataRequirementSort.fromJson(toJson());
      case DistanceBuilder _:
        Distance.fromJson(toJson());
      case DosageBuilder _:
        Dosage.fromJson(toJson());
      case DosageDoseAndRateBuilder _:
        DosageDoseAndRate.fromJson(toJson());
      case FhirDurationBuilder _:
        FhirDuration.fromJson(toJson());
      case ElementDefinitionBuilder _:
        ElementDefinition.fromJson(toJson());
      case ElementDefinitionSlicingBuilder _:
        ElementDefinitionSlicing.fromJson(toJson());
      case ElementDefinitionDiscriminatorBuilder _:
        ElementDefinitionDiscriminator.fromJson(toJson());
      case ElementDefinitionBaseBuilder _:
        ElementDefinitionBase.fromJson(toJson());
      case ElementDefinitionTypeBuilder _:
        ElementDefinitionType.fromJson(toJson());
      case ElementDefinitionExampleBuilder _:
        ElementDefinitionExample.fromJson(toJson());
      case ElementDefinitionConstraintBuilder _:
        ElementDefinitionConstraint.fromJson(toJson());
      case ElementDefinitionBindingBuilder _:
        ElementDefinitionBinding.fromJson(toJson());
      case ElementDefinitionMappingBuilder _:
        ElementDefinitionMapping.fromJson(toJson());
      case FhirExpressionBuilder _:
        FhirExpression.fromJson(toJson());
      case FhirExtensionBuilder _:
        FhirExtension.fromJson(toJson());
      case HumanNameBuilder _:
        HumanName.fromJson(toJson());
      case IdentifierBuilder _:
        Identifier.fromJson(toJson());
      case MarketingStatusBuilder _:
        MarketingStatus.fromJson(toJson());
      case FhirMetaBuilder _:
        FhirMeta.fromJson(toJson());
      case MoneyBuilder _:
        Money.fromJson(toJson());
      case NarrativeBuilder _:
        Narrative.fromJson(toJson());
      case ParameterDefinitionBuilder _:
        ParameterDefinition.fromJson(toJson());
      case PeriodBuilder _:
        Period.fromJson(toJson());
      case PopulationBuilder _:
        Population.fromJson(toJson());
      case ProdCharacteristicBuilder _:
        ProdCharacteristic.fromJson(toJson());
      case ProductShelfLifeBuilder _:
        ProductShelfLife.fromJson(toJson());
      case QuantityBuilder _:
        Quantity.fromJson(toJson());
      case RangeBuilder _:
        Range.fromJson(toJson());
      case RatioBuilder _:
        Ratio.fromJson(toJson());
      case RatioRangeBuilder _:
        RatioRange.fromJson(toJson());
      case ReferenceBuilder _:
        Reference.fromJson(toJson());
      case RelatedArtifactBuilder _:
        RelatedArtifact.fromJson(toJson());
      case SampledDataBuilder _:
        SampledData.fromJson(toJson());
      case SignatureBuilder _:
        Signature.fromJson(toJson());
      case TimingBuilder _:
        Timing.fromJson(toJson());
      case TimingRepeatBuilder _:
        TimingRepeat.fromJson(toJson());
      case TriggerDefinitionBuilder _:
        TriggerDefinition.fromJson(toJson());
      case UsageContextBuilder _:
        UsageContext.fromJson(toJson());
    }
    throw ArgumentError('Unknown builder type: $runtimeType');
  }
}
