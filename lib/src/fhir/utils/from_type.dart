import 'package:fhir_r4/fhir_r4.dart';

/// this allows for the conversion of a dynamic value to a FhirBase object
FhirBase? fromType(dynamic value, String type) {
  switch (type) {
    case 'Element':
      return value is! Map<String, dynamic> ? null : Element.fromJson(value);
    case 'Extension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
    case 'Narrative':
      return value is! Map<String, dynamic> ? null : Narrative.fromJson(value);
    case 'Annotation':
      return value is! Map<String, dynamic> ? null : Annotation.fromJson(value);
    case 'Attachment':
      return value is! Map<String, dynamic> ? null : Attachment.fromJson(value);
    case 'Identifier':
      return value is! Map<String, dynamic> ? null : Identifier.fromJson(value);
    case 'CodeableConcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeableConcept.fromJson(value);
    case 'Coding':
      return value is! Map<String, dynamic> ? null : Coding.fromJson(value);
    case 'Quantity':
      return value is! Map<String, dynamic> ? null : Quantity.fromJson(value);
    case 'Distance':
      return value is! Map<String, dynamic> ? null : Distance.fromJson(value);
    case 'Count':
      return value is! Map<String, dynamic> ? null : Count.fromJson(value);
    case 'Money':
      return value is! Map<String, dynamic> ? null : Money.fromJson(value);
    case 'Age':
      return value is! Map<String, dynamic> ? null : Age.fromJson(value);
    case 'Range':
      return value is! Map<String, dynamic> ? null : Range.fromJson(value);
    case 'Period':
      return value is! Map<String, dynamic> ? null : Period.fromJson(value);
    case 'Ratio':
      return value is! Map<String, dynamic> ? null : Ratio.fromJson(value);
    case 'Reference':
      return value is! Map<String, dynamic> ? null : Reference.fromJson(value);
    case 'SampledData':
      return value is! Map<String, dynamic>
          ? null
          : SampledData.fromJson(value);
    case 'Signature':
      return value is! Map<String, dynamic> ? null : Signature.fromJson(value);
    case 'HumanName':
      return value is! Map<String, dynamic> ? null : HumanName.fromJson(value);
    case 'Address':
      return value is! Map<String, dynamic> ? null : Address.fromJson(value);
    case 'ContactPoint':
      return value is! Map<String, dynamic>
          ? null
          : ContactPoint.fromJson(value);
    case 'Timing':
      return value is! Map<String, dynamic> ? null : Timing.fromJson(value);
    case 'TimingRepeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeat.fromJson(value);
    case 'ContactDetail':
      return value is! Map<String, dynamic>
          ? null
          : ContactDetail.fromJson(value);
    case 'Contributor':
      return value is! Map<String, dynamic>
          ? null
          : Contributor.fromJson(value);
    case 'DataRequirement':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirement.fromJson(value);
    case 'DataRequirementCodeFilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilter.fromJson(value);
    case 'DataRequirementDateFilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilter.fromJson(value);
    case 'DataRequirementSort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSort.fromJson(value);
    case 'ParameterDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ParameterDefinition.fromJson(value);
    case 'RelatedArtifact':
      return value is! Map<String, dynamic>
          ? null
          : RelatedArtifact.fromJson(value);
    case 'TriggerDefinition':
      return value is! Map<String, dynamic>
          ? null
          : TriggerDefinition.fromJson(value);
    case 'UsageContext':
      return value is! Map<String, dynamic>
          ? null
          : UsageContext.fromJson(value);
    case 'Dosage':
      return value is! Map<String, dynamic> ? null : Dosage.fromJson(value);
    case 'DosageDoseAndRate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRate.fromJson(value);
    case 'Population':
      return value is! Map<String, dynamic> ? null : Population.fromJson(value);
    case 'ProductShelfLife':
      return value is! Map<String, dynamic>
          ? null
          : ProductShelfLife.fromJson(value);
    case 'ProdCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : ProdCharacteristic.fromJson(value);
    case 'MarketingStatus':
      return value is! Map<String, dynamic>
          ? null
          : MarketingStatus.fromJson(value);
    case 'ElementDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinition.fromJson(value);
    case 'ElementDefinitionSlicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicing.fromJson(value);
    case 'ElementDefinitionDiscriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminator.fromJson(value);
    case 'ElementDefinitionBase':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBase.fromJson(value);
    case 'ElementDefinitionType':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionType.fromJson(value);
    case 'ElementDefinitionExample':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExample.fromJson(value);
    case 'ElementDefinitionBinding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBinding.fromJson(value);
    case 'ElementDefinitionMapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMapping.fromJson(value);
    case 'Account':
      return value is! Map<String, dynamic> ? null : Account.fromJson(value);
    case 'AccountCoverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverage.fromJson(value);
    case 'AccountGuarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantor.fromJson(value);
    case 'ActivityDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinition.fromJson(value);
    case 'ActivityDefinitionParticipant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipant.fromJson(value);
    case 'ActivityDefinitionDynamicValue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValue.fromJson(value);
    case 'AdverseEvent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEvent.fromJson(value);
    case 'AdverseEventSuspectEntity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntity.fromJson(value);
    case 'AdverseEventCausality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausality.fromJson(value);
    case 'AllergyIntolerance':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntolerance.fromJson(value);
    case 'AllergyIntoleranceReaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReaction.fromJson(value);
    case 'Appointment':
      return value is! Map<String, dynamic>
          ? null
          : Appointment.fromJson(value);
    case 'AppointmentParticipant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipant.fromJson(value);
    case 'AppointmentResponse':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentResponse.fromJson(value);
    case 'AuditEvent':
      return value is! Map<String, dynamic> ? null : AuditEvent.fromJson(value);
    case 'AuditEventAgent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgent.fromJson(value);
    case 'AuditEventNetwork':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventNetwork.fromJson(value);
    case 'AuditEventSource':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSource.fromJson(value);
    case 'AuditEventEntity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntity.fromJson(value);
    case 'AuditEventDetail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetail.fromJson(value);
    case 'Basic':
      return value is! Map<String, dynamic> ? null : Basic.fromJson(value);
    case 'Binary':
      return value is! Map<String, dynamic> ? null : Binary.fromJson(value);
    case 'BiologicallyDerivedProduct':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProduct.fromJson(value);
    case 'BiologicallyDerivedProductCollection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollection.fromJson(value);
    case 'BiologicallyDerivedProductProcessing':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProcessing.fromJson(value);
    case 'BiologicallyDerivedProductManipulation':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductManipulation.fromJson(value);
    case 'BiologicallyDerivedProductStorage':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductStorage.fromJson(value);
    case 'BodyStructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructure.fromJson(value);
    case 'Bundle':
      return value is! Map<String, dynamic> ? null : Bundle.fromJson(value);
    case 'BundleLink':
      return value is! Map<String, dynamic> ? null : BundleLink.fromJson(value);
    case 'BundleEntry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntry.fromJson(value);
    case 'BundleSearch':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearch.fromJson(value);
    case 'BundleRequest':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequest.fromJson(value);
    case 'BundleResponse':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponse.fromJson(value);
    case 'CapabilityStatement':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatement.fromJson(value);
    case 'CapabilityStatementSoftware':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftware.fromJson(value);
    case 'CapabilityStatementImplementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementation.fromJson(value);
    case 'CapabilityStatementRest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRest.fromJson(value);
    case 'CapabilityStatementSecurity':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurity.fromJson(value);
    case 'CapabilityStatementResource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResource.fromJson(value);
    case 'CapabilityStatementInteraction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction.fromJson(value);
    case 'CapabilityStatementSearchParam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParam.fromJson(value);
    case 'CapabilityStatementOperation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperation.fromJson(value);
    case 'CapabilityStatementInteraction1':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1.fromJson(value);
    case 'CapabilityStatementMessaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessaging.fromJson(value);
    case 'CapabilityStatementEndpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpoint.fromJson(value);
    case 'CapabilityStatementSupportedMessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessage.fromJson(value);
    case 'CapabilityStatementDocument':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocument.fromJson(value);
    case 'CarePlan':
      return value is! Map<String, dynamic> ? null : CarePlan.fromJson(value);
    case 'CarePlanActivity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivity.fromJson(value);
    case 'CarePlanDetail':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanDetail.fromJson(value);
    case 'CareTeam':
      return value is! Map<String, dynamic> ? null : CareTeam.fromJson(value);
    case 'CareTeamParticipant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipant.fromJson(value);
    case 'CatalogEntry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntry.fromJson(value);
    case 'CatalogEntryRelatedEntry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntryRelatedEntry.fromJson(value);
    case 'ChargeItem':
      return value is! Map<String, dynamic> ? null : ChargeItem.fromJson(value);
    case 'ChargeItemPerformer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformer.fromJson(value);
    case 'ChargeItemDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinition.fromJson(value);
    case 'ChargeItemDefinitionApplicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicability.fromJson(value);
    case 'ChargeItemDefinitionPropertyGroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroup.fromJson(value);
    case 'ChargeItemDefinitionPriceComponent':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPriceComponent.fromJson(value);
    case 'Claim':
      return value is! Map<String, dynamic> ? null : Claim.fromJson(value);
    case 'ClaimRelated':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelated.fromJson(value);
    case 'ClaimPayee':
      return value is! Map<String, dynamic> ? null : ClaimPayee.fromJson(value);
    case 'ClaimCareTeam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeam.fromJson(value);
    case 'ClaimSupportingInfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfo.fromJson(value);
    case 'ClaimDiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosis.fromJson(value);
    case 'ClaimProcedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedure.fromJson(value);
    case 'ClaimInsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsurance.fromJson(value);
    case 'ClaimAccident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccident.fromJson(value);
    case 'ClaimItem':
      return value is! Map<String, dynamic> ? null : ClaimItem.fromJson(value);
    case 'ClaimDetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetail.fromJson(value);
    case 'ClaimSubDetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetail.fromJson(value);
    case 'ClaimResponse':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponse.fromJson(value);
    case 'ClaimResponseItem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItem.fromJson(value);
    case 'ClaimResponseAdjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudication.fromJson(value);
    case 'ClaimResponseDetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail.fromJson(value);
    case 'ClaimResponseSubDetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail.fromJson(value);
    case 'ClaimResponseAddItem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItem.fromJson(value);
    case 'ClaimResponseDetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1.fromJson(value);
    case 'ClaimResponseSubDetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1.fromJson(value);
    case 'ClaimResponseTotal':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotal.fromJson(value);
    case 'ClaimResponsePayment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePayment.fromJson(value);
    case 'ClaimResponseProcessNote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNote.fromJson(value);
    case 'ClaimResponseInsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsurance.fromJson(value);
    case 'ClaimResponseError':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseError.fromJson(value);
    case 'ClinicalImpression':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpression.fromJson(value);
    case 'ClinicalImpressionInvestigation':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionInvestigation.fromJson(value);
    case 'ClinicalImpressionFinding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFinding.fromJson(value);
    case 'CodeSystem':
      return value is! Map<String, dynamic> ? null : CodeSystem.fromJson(value);
    case 'CodeSystemFilter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilter.fromJson(value);
    case 'CodeSystemProperty':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty.fromJson(value);
    case 'CodeSystemConcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConcept.fromJson(value);
    case 'CodeSystemDesignation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignation.fromJson(value);
    case 'CodeSystemProperty1':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1.fromJson(value);
    case 'Communication':
      return value is! Map<String, dynamic>
          ? null
          : Communication.fromJson(value);
    case 'CommunicationPayload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayload.fromJson(value);
    case 'CommunicationRequest':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequest.fromJson(value);
    case 'CommunicationRequestPayload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayload.fromJson(value);
    case 'CompartmentDefinition':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinition.fromJson(value);
    case 'CompartmentDefinitionResource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResource.fromJson(value);
    case 'Composition':
      return value is! Map<String, dynamic>
          ? null
          : Composition.fromJson(value);
    case 'CompositionAttester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttester.fromJson(value);
    case 'CompositionRelatesTo':
      return value is! Map<String, dynamic>
          ? null
          : CompositionRelatesTo.fromJson(value);
    case 'CompositionEvent':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEvent.fromJson(value);
    case 'CompositionSection':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSection.fromJson(value);
    case 'ConceptMap':
      return value is! Map<String, dynamic> ? null : ConceptMap.fromJson(value);
    case 'ConceptMapGroup':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroup.fromJson(value);
    case 'ConceptMapElement':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElement.fromJson(value);
    case 'ConceptMapTarget':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTarget.fromJson(value);
    case 'ConceptMapDependsOn':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOn.fromJson(value);
    case 'ConceptMapUnmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmapped.fromJson(value);
    case 'Condition':
      return value is! Map<String, dynamic> ? null : Condition.fromJson(value);
    case 'ConditionStage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStage.fromJson(value);
    case 'ConditionEvidence':
      return value is! Map<String, dynamic>
          ? null
          : ConditionEvidence.fromJson(value);
    case 'Consent':
      return value is! Map<String, dynamic> ? null : Consent.fromJson(value);
    case 'ConsentPolicy':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicy.fromJson(value);
    case 'ConsentVerification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerification.fromJson(value);
    case 'ConsentProvision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvision.fromJson(value);
    case 'ConsentActor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActor.fromJson(value);
    case 'ConsentData':
      return value is! Map<String, dynamic>
          ? null
          : ConsentData.fromJson(value);
    case 'Contract':
      return value is! Map<String, dynamic> ? null : Contract.fromJson(value);
    case 'ContractContentDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinition.fromJson(value);
    case 'ContractTerm':
      return value is! Map<String, dynamic>
          ? null
          : ContractTerm.fromJson(value);
    case 'ContractSecurityLabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabel.fromJson(value);
    case 'ContractOffer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOffer.fromJson(value);
    case 'ContractParty':
      return value is! Map<String, dynamic>
          ? null
          : ContractParty.fromJson(value);
    case 'ContractAnswer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswer.fromJson(value);
    case 'ContractAsset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAsset.fromJson(value);
    case 'ContractContext':
      return value is! Map<String, dynamic>
          ? null
          : ContractContext.fromJson(value);
    case 'ContractValuedItem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItem.fromJson(value);
    case 'ContractAction':
      return value is! Map<String, dynamic>
          ? null
          : ContractAction.fromJson(value);
    case 'ContractSubject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubject.fromJson(value);
    case 'ContractSigner':
      return value is! Map<String, dynamic>
          ? null
          : ContractSigner.fromJson(value);
    case 'ContractFriendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendly.fromJson(value);
    case 'ContractLegal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegal.fromJson(value);
    case 'ContractRule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRule.fromJson(value);
    case 'Coverage':
      return value is! Map<String, dynamic> ? null : Coverage.fromJson(value);
    case 'CoverageClass':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClass.fromJson(value);
    case 'CoverageCostToBeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiary.fromJson(value);
    case 'CoverageException':
      return value is! Map<String, dynamic>
          ? null
          : CoverageException.fromJson(value);
    case 'CoverageEligibilityRequest':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequest.fromJson(value);
    case 'CoverageEligibilityRequestSupportingInfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfo.fromJson(value);
    case 'CoverageEligibilityRequestInsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsurance.fromJson(value);
    case 'CoverageEligibilityRequestItem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItem.fromJson(value);
    case 'CoverageEligibilityRequestDiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosis.fromJson(value);
    case 'CoverageEligibilityResponse':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponse.fromJson(value);
    case 'CoverageEligibilityResponseInsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsurance.fromJson(value);
    case 'CoverageEligibilityResponseItem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItem.fromJson(value);
    case 'CoverageEligibilityResponseBenefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefit.fromJson(value);
    case 'CoverageEligibilityResponseError':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseError.fromJson(value);
    case 'DetectedIssue':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssue.fromJson(value);
    case 'DetectedIssueEvidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidence.fromJson(value);
    case 'DetectedIssueMitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigation.fromJson(value);
    case 'Device':
      return value is! Map<String, dynamic> ? null : Device.fromJson(value);
    case 'DeviceUdiCarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrier.fromJson(value);
    case 'DeviceDeviceName':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDeviceName.fromJson(value);
    case 'DeviceSpecialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceSpecialization.fromJson(value);
    case 'DeviceVersion':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersion.fromJson(value);
    case 'DeviceProperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceProperty.fromJson(value);
    case 'DeviceDefinition':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinition.fromJson(value);
    case 'DeviceDefinitionUdiDeviceIdentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifier.fromJson(value);
    case 'DeviceDefinitionDeviceName':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceName.fromJson(value);
    case 'DeviceDefinitionSpecialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionSpecialization.fromJson(value);
    case 'DeviceDefinitionCapability':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCapability.fromJson(value);
    case 'DeviceDefinitionProperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionProperty.fromJson(value);
    case 'DeviceDefinitionMaterial':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterial.fromJson(value);
    case 'DeviceMetric':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetric.fromJson(value);
    case 'DeviceMetricCalibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibration.fromJson(value);
    case 'DeviceRequest':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequest.fromJson(value);
    case 'DeviceRequestParameter':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestParameter.fromJson(value);
    case 'DeviceUseStatement':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUseStatement.fromJson(value);
    case 'DiagnosticReport':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReport.fromJson(value);
    case 'DiagnosticReportMedia':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMedia.fromJson(value);
    case 'DocumentManifest':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifest.fromJson(value);
    case 'DocumentManifestRelated':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifestRelated.fromJson(value);
    case 'DocumentReference':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReference.fromJson(value);
    case 'DocumentReferenceRelatesTo':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesTo.fromJson(value);
    case 'DocumentReferenceContent':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContent.fromJson(value);
    case 'DocumentReferenceContext':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContext.fromJson(value);
    case 'Encounter':
      return value is! Map<String, dynamic> ? null : Encounter.fromJson(value);
    case 'EncounterStatusHistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterStatusHistory.fromJson(value);
    case 'EncounterClassHistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterClassHistory.fromJson(value);
    case 'EncounterParticipant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipant.fromJson(value);
    case 'EncounterDiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosis.fromJson(value);
    case 'EncounterHospitalization':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHospitalization.fromJson(value);
    case 'EncounterLocation':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocation.fromJson(value);
    case 'Endpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpoint.fromJson(value);
    case 'EnrollmentRequest':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentRequest.fromJson(value);
    case 'EnrollmentResponse':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentResponse.fromJson(value);
    case 'EpisodeOfCare':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCare.fromJson(value);
    case 'EpisodeOfCareStatusHistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistory.fromJson(value);
    case 'EpisodeOfCareDiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosis.fromJson(value);
    case 'EventDefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinition.fromJson(value);
    case 'Evidence':
      return value is! Map<String, dynamic> ? null : Evidence.fromJson(value);
    case 'EvidenceVariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariable.fromJson(value);
    case 'EvidenceVariableCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristic.fromJson(value);
    case 'ExampleScenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenario.fromJson(value);
    case 'ExampleScenarioActor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActor.fromJson(value);
    case 'ExampleScenarioInstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstance.fromJson(value);
    case 'ExampleScenarioVersion':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersion.fromJson(value);
    case 'ExampleScenarioContainedInstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstance.fromJson(value);
    case 'ExampleScenarioProcess':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcess.fromJson(value);
    case 'ExampleScenarioStep':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStep.fromJson(value);
    case 'ExampleScenarioOperation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperation.fromJson(value);
    case 'ExampleScenarioAlternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternative.fromJson(value);
    case 'ExplanationOfBenefit':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefit.fromJson(value);
    case 'ExplanationOfBenefitRelated':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelated.fromJson(value);
    case 'ExplanationOfBenefitPayee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayee.fromJson(value);
    case 'ExplanationOfBenefitCareTeam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeam.fromJson(value);
    case 'ExplanationOfBenefitSupportingInfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfo.fromJson(value);
    case 'ExplanationOfBenefitDiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosis.fromJson(value);
    case 'ExplanationOfBenefitProcedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedure.fromJson(value);
    case 'ExplanationOfBenefitInsurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsurance.fromJson(value);
    case 'ExplanationOfBenefitAccident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccident.fromJson(value);
    case 'ExplanationOfBenefitItem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItem.fromJson(value);
    case 'ExplanationOfBenefitAdjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudication.fromJson(value);
    case 'ExplanationOfBenefitDetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail.fromJson(value);
    case 'ExplanationOfBenefitSubDetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail.fromJson(value);
    case 'ExplanationOfBenefitAddItem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItem.fromJson(value);
    case 'ExplanationOfBenefitDetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1.fromJson(value);
    case 'ExplanationOfBenefitSubDetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1.fromJson(value);
    case 'ExplanationOfBenefitTotal':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotal.fromJson(value);
    case 'ExplanationOfBenefitPayment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayment.fromJson(value);
    case 'ExplanationOfBenefitProcessNote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNote.fromJson(value);
    case 'ExplanationOfBenefitBenefitBalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalance.fromJson(value);
    case 'ExplanationOfBenefitFinancial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancial.fromJson(value);
    case 'FamilyMemberHistory':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistory.fromJson(value);
    case 'FamilyMemberHistoryCondition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryCondition.fromJson(value);
    case 'Flag':
      return value is! Map<String, dynamic> ? null : Flag.fromJson(value);
    case 'Goal':
      return value is! Map<String, dynamic> ? null : Goal.fromJson(value);
    case 'GoalTarget':
      return value is! Map<String, dynamic> ? null : GoalTarget.fromJson(value);
    case 'GraphDefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinition.fromJson(value);
    case 'GraphDefinitionLink':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLink.fromJson(value);
    case 'GraphDefinitionTarget':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionTarget.fromJson(value);
    case 'GraphDefinitionCompartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartment.fromJson(value);
    case 'Group':
      return value is! Map<String, dynamic> ? null : FhirGroup.fromJson(value);
    case 'GroupCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristic.fromJson(value);
    case 'GroupMember':
      return value is! Map<String, dynamic>
          ? null
          : GroupMember.fromJson(value);
    case 'GuidanceResponse':
      return value is! Map<String, dynamic>
          ? null
          : GuidanceResponse.fromJson(value);
    case 'HealthcareService':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareService.fromJson(value);
    case 'HealthcareServiceEligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibility.fromJson(value);
    case 'HealthcareServiceAvailableTime':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceAvailableTime.fromJson(value);
    case 'HealthcareServiceNotAvailable':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceNotAvailable.fromJson(value);
    case 'ImagingStudy':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudy.fromJson(value);
    case 'ImagingStudySeries':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeries.fromJson(value);
    case 'ImagingStudyPerformer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformer.fromJson(value);
    case 'ImagingStudyInstance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstance.fromJson(value);
    case 'Immunization':
      return value is! Map<String, dynamic>
          ? null
          : Immunization.fromJson(value);
    case 'ImmunizationPerformer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformer.fromJson(value);
    case 'ImmunizationEducation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEducation.fromJson(value);
    case 'ImmunizationReaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReaction.fromJson(value);
    case 'ImmunizationProtocolApplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolApplied.fromJson(value);
    case 'ImmunizationEvaluation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEvaluation.fromJson(value);
    case 'ImmunizationRecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendation.fromJson(value);
    case 'ImmunizationRecommendationRecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendation.fromJson(value);
    case 'ImmunizationRecommendationDateCriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterion.fromJson(value);
    case 'ImplementationGuide':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuide.fromJson(value);
    case 'ImplementationGuideDependsOn':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOn.fromJson(value);
    case 'ImplementationGuideGlobal':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobal.fromJson(value);
    case 'ImplementationGuideDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinition.fromJson(value);
    case 'ImplementationGuideGrouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGrouping.fromJson(value);
    case 'ImplementationGuideResource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource.fromJson(value);
    case 'ImplementationGuidePage':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage.fromJson(value);
    case 'ImplementationGuideParameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameter.fromJson(value);
    case 'ImplementationGuideTemplate':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplate.fromJson(value);
    case 'ImplementationGuideManifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifest.fromJson(value);
    case 'ImplementationGuideResource1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1.fromJson(value);
    case 'ImplementationGuidePage1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1.fromJson(value);
    case 'InsurancePlan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlan.fromJson(value);
    case 'InsurancePlanContact':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanContact.fromJson(value);
    case 'InsurancePlanCoverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverage.fromJson(value);
    case 'InsurancePlanBenefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit.fromJson(value);
    case 'InsurancePlanLimit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimit.fromJson(value);
    case 'InsurancePlanPlan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlan.fromJson(value);
    case 'InsurancePlanGeneralCost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCost.fromJson(value);
    case 'InsurancePlanSpecificCost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCost.fromJson(value);
    case 'InsurancePlanBenefit1':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1.fromJson(value);
    case 'InsurancePlanCost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCost.fromJson(value);
    case 'Invoice':
      return value is! Map<String, dynamic> ? null : Invoice.fromJson(value);
    case 'InvoiceParticipant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipant.fromJson(value);
    case 'InvoiceLineItem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItem.fromJson(value);
    case 'InvoicePriceComponent':
      return value is! Map<String, dynamic>
          ? null
          : InvoicePriceComponent.fromJson(value);
    case 'Library':
      return value is! Map<String, dynamic> ? null : Library.fromJson(value);
    case 'Linkage':
      return value is! Map<String, dynamic> ? null : Linkage.fromJson(value);
    case 'LinkageItem':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItem.fromJson(value);
    case 'List':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'ListEntry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'Location':
      return value is! Map<String, dynamic> ? null : Location.fromJson(value);
    case 'LocationPosition':
      return value is! Map<String, dynamic>
          ? null
          : LocationPosition.fromJson(value);
    case 'LocationHoursOfOperation':
      return value is! Map<String, dynamic>
          ? null
          : LocationHoursOfOperation.fromJson(value);
    case 'Measure':
      return value is! Map<String, dynamic> ? null : Measure.fromJson(value);
    case 'MeasureGroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroup.fromJson(value);
    case 'MeasurePopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulation.fromJson(value);
    case 'MeasureStratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifier.fromJson(value);
    case 'MeasureComponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponent.fromJson(value);
    case 'MeasureSupplementalData':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalData.fromJson(value);
    case 'MeasureReport':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReport.fromJson(value);
    case 'MeasureReportGroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroup.fromJson(value);
    case 'MeasureReportPopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation.fromJson(value);
    case 'MeasureReportStratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifier.fromJson(value);
    case 'MeasureReportStratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratum.fromJson(value);
    case 'MeasureReportComponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponent.fromJson(value);
    case 'MeasureReportPopulation1':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1.fromJson(value);
    case 'Media':
      return value is! Map<String, dynamic> ? null : Media.fromJson(value);
    case 'Medication':
      return value is! Map<String, dynamic> ? null : Medication.fromJson(value);
    case 'MedicationIngredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredient.fromJson(value);
    case 'MedicationBatch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatch.fromJson(value);
    case 'MedicationAdministration':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministration.fromJson(value);
    case 'MedicationAdministrationPerformer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformer.fromJson(value);
    case 'MedicationAdministrationDosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosage.fromJson(value);
    case 'MedicationDispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispense.fromJson(value);
    case 'MedicationDispensePerformer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformer.fromJson(value);
    case 'MedicationDispenseSubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitution.fromJson(value);
    case 'MedicationKnowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledge.fromJson(value);
    case 'MedicationKnowledgeRelatedMedicationKnowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledge.fromJson(value);
    case 'MedicationKnowledgeMonograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonograph.fromJson(value);
    case 'MedicationKnowledgeIngredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredient.fromJson(value);
    case 'MedicationKnowledgeCost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCost.fromJson(value);
    case 'MedicationKnowledgeMonitoringProgram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgram.fromJson(value);
    case 'MedicationKnowledgeAdministrationGuidelines':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeAdministrationGuidelines.fromJson(value);
    case 'MedicationKnowledgeDosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosage.fromJson(value);
    case 'MedicationKnowledgePatientCharacteristics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristics.fromJson(value);
    case 'MedicationKnowledgeMedicineClassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassification.fromJson(value);
    case 'MedicationKnowledgePackaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackaging.fromJson(value);
    case 'MedicationKnowledgeDrugCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristic.fromJson(value);
    case 'MedicationKnowledgeRegulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatory.fromJson(value);
    case 'MedicationKnowledgeSubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitution.fromJson(value);
    case 'MedicationKnowledgeSchedule':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSchedule.fromJson(value);
    case 'MedicationKnowledgeMaxDispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispense.fromJson(value);
    case 'MedicationKnowledgeKinetics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeKinetics.fromJson(value);
    case 'MedicationRequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequest.fromJson(value);
    case 'MedicationRequestDispenseRequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequest.fromJson(value);
    case 'MedicationRequestInitialFill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFill.fromJson(value);
    case 'MedicationRequestSubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitution.fromJson(value);
    case 'MedicationStatement':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatement.fromJson(value);
    case 'MessageDefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinition.fromJson(value);
    case 'MessageDefinitionFocus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocus.fromJson(value);
    case 'MessageDefinitionAllowedResponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponse.fromJson(value);
    case 'MessageHeader':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeader.fromJson(value);
    case 'MessageHeaderDestination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestination.fromJson(value);
    case 'MessageHeaderSource':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSource.fromJson(value);
    case 'MessageHeaderResponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponse.fromJson(value);
    case 'MolecularSequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequence.fromJson(value);
    case 'MolecularSequenceReferenceSeq':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceReferenceSeq.fromJson(value);
    case 'MolecularSequenceVariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceVariant.fromJson(value);
    case 'MolecularSequenceQuality':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceQuality.fromJson(value);
    case 'MolecularSequenceRoc':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRoc.fromJson(value);
    case 'MolecularSequenceRepository':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRepository.fromJson(value);
    case 'MolecularSequenceStructureVariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStructureVariant.fromJson(value);
    case 'MolecularSequenceOuter':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceOuter.fromJson(value);
    case 'MolecularSequenceInner':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceInner.fromJson(value);
    case 'NamingSystem':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystem.fromJson(value);
    case 'NamingSystemUniqueId':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueId.fromJson(value);
    case 'NutritionOrder':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrder.fromJson(value);
    case 'NutritionOrderOralDiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDiet.fromJson(value);
    case 'NutritionOrderNutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrient.fromJson(value);
    case 'NutritionOrderTexture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTexture.fromJson(value);
    case 'NutritionOrderSupplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplement.fromJson(value);
    case 'NutritionOrderEnteralFormula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormula.fromJson(value);
    case 'NutritionOrderAdministration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministration.fromJson(value);
    case 'Observation':
      return value is! Map<String, dynamic>
          ? null
          : Observation.fromJson(value);
    case 'ObservationReferenceRange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRange.fromJson(value);
    case 'ObservationComponent':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponent.fromJson(value);
    case 'ObservationDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinition.fromJson(value);
    case 'ObservationDefinitionQuantitativeDetails':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQuantitativeDetails.fromJson(value);
    case 'ObservationDefinitionQualifiedInterval':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedInterval.fromJson(value);
    case 'OperationDefinition':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinition.fromJson(value);
    case 'OperationDefinitionParameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameter.fromJson(value);
    case 'OperationDefinitionBinding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBinding.fromJson(value);
    case 'OperationDefinitionReferencedFrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFrom.fromJson(value);
    case 'OperationDefinitionOverload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverload.fromJson(value);
    case 'OperationOutcome':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcome.fromJson(value);
    case 'OperationOutcomeIssue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssue.fromJson(value);
    case 'Organization':
      return value is! Map<String, dynamic>
          ? null
          : Organization.fromJson(value);
    case 'OrganizationContact':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationContact.fromJson(value);
    case 'OrganizationAffiliation':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationAffiliation.fromJson(value);
    case 'Parameters':
      return value is! Map<String, dynamic> ? null : Parameters.fromJson(value);
    case 'ParametersParameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameter.fromJson(value);
    case 'Patient':
      return value is! Map<String, dynamic> ? null : Patient.fromJson(value);
    case 'PatientContact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContact.fromJson(value);
    case 'PatientCommunication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunication.fromJson(value);
    case 'PatientLink':
      return value is! Map<String, dynamic>
          ? null
          : PatientLink.fromJson(value);
    case 'PaymentNotice':
      return value is! Map<String, dynamic>
          ? null
          : PaymentNotice.fromJson(value);
    case 'PaymentReconciliation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliation.fromJson(value);
    case 'PaymentReconciliationDetail':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationDetail.fromJson(value);
    case 'PaymentReconciliationProcessNote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNote.fromJson(value);
    case 'Person':
      return value is! Map<String, dynamic> ? null : Person.fromJson(value);
    case 'PersonLink':
      return value is! Map<String, dynamic> ? null : PersonLink.fromJson(value);
    case 'PlanDefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinition.fromJson(value);
    case 'PlanDefinitionGoal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoal.fromJson(value);
    case 'PlanDefinitionTarget':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTarget.fromJson(value);
    case 'PlanDefinitionAction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionAction.fromJson(value);
    case 'PlanDefinitionCondition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionCondition.fromJson(value);
    case 'PlanDefinitionRelatedAction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedAction.fromJson(value);
    case 'PlanDefinitionParticipant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipant.fromJson(value);
    case 'PlanDefinitionDynamicValue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValue.fromJson(value);
    case 'Practitioner':
      return value is! Map<String, dynamic>
          ? null
          : Practitioner.fromJson(value);
    case 'PractitionerQualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualification.fromJson(value);
    case 'PractitionerRole':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRole.fromJson(value);
    case 'PractitionerRoleAvailableTime':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleAvailableTime.fromJson(value);
    case 'PractitionerRoleNotAvailable':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleNotAvailable.fromJson(value);
    case 'Procedure':
      return value is! Map<String, dynamic> ? null : Procedure.fromJson(value);
    case 'ProcedurePerformer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformer.fromJson(value);
    case 'ProcedureFocalDevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDevice.fromJson(value);
    case 'Provenance':
      return value is! Map<String, dynamic> ? null : Provenance.fromJson(value);
    case 'ProvenanceAgent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgent.fromJson(value);
    case 'ProvenanceEntity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntity.fromJson(value);
    case 'Questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : Questionnaire.fromJson(value);
    case 'QuestionnaireItem':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItem.fromJson(value);
    case 'QuestionnaireEnableWhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhen.fromJson(value);
    case 'QuestionnaireAnswerOption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOption.fromJson(value);
    case 'QuestionnaireInitial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitial.fromJson(value);
    case 'QuestionnaireResponse':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponse.fromJson(value);
    case 'QuestionnaireResponseItem':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItem.fromJson(value);
    case 'QuestionnaireResponseAnswer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswer.fromJson(value);
    case 'RelatedPerson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPerson.fromJson(value);
    case 'RelatedPersonCommunication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunication.fromJson(value);
    case 'RequestGroup':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroup.fromJson(value);
    case 'RequestGroupAction':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupAction.fromJson(value);
    case 'RequestGroupCondition':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupCondition.fromJson(value);
    case 'RequestGroupRelatedAction':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupRelatedAction.fromJson(value);
    case 'ResearchDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ResearchDefinition.fromJson(value);
    case 'ResearchElementDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinition.fromJson(value);
    case 'ResearchElementDefinitionCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinitionCharacteristic.fromJson(value);
    case 'ResearchStudy':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudy.fromJson(value);
    case 'ResearchStudyArm':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyArm.fromJson(value);
    case 'ResearchStudyObjective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjective.fromJson(value);
    case 'ResearchSubject':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubject.fromJson(value);
    case 'RiskAssessment':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessment.fromJson(value);
    case 'RiskAssessmentPrediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPrediction.fromJson(value);
    case 'Schedule':
      return value is! Map<String, dynamic> ? null : Schedule.fromJson(value);
    case 'SearchParameter':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameter.fromJson(value);
    case 'SearchParameterComponent':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterComponent.fromJson(value);
    case 'ServiceRequest':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequest.fromJson(value);
    case 'Slot':
      return value is! Map<String, dynamic> ? null : Slot.fromJson(value);
    case 'Specimen':
      return value is! Map<String, dynamic> ? null : Specimen.fromJson(value);
    case 'SpecimenCollection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollection.fromJson(value);
    case 'SpecimenProcessing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessing.fromJson(value);
    case 'SpecimenContainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainer.fromJson(value);
    case 'SpecimenDefinition':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinition.fromJson(value);
    case 'SpecimenDefinitionTypeTested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTested.fromJson(value);
    case 'SpecimenDefinitionContainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainer.fromJson(value);
    case 'SpecimenDefinitionAdditive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditive.fromJson(value);
    case 'SpecimenDefinitionHandling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandling.fromJson(value);
    case 'StructureDefinition':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinition.fromJson(value);
    case 'StructureDefinitionMapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMapping.fromJson(value);
    case 'StructureDefinitionContext':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContext.fromJson(value);
    case 'StructureDefinitionSnapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshot.fromJson(value);
    case 'StructureDefinitionDifferential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferential.fromJson(value);
    case 'StructureMap':
      return value is! Map<String, dynamic>
          ? null
          : StructureMap.fromJson(value);
    case 'StructureMapStructure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructure.fromJson(value);
    case 'StructureMapGroup':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroup.fromJson(value);
    case 'StructureMapInput':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInput.fromJson(value);
    case 'StructureMapRule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRule.fromJson(value);
    case 'StructureMapSource':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSource.fromJson(value);
    case 'StructureMapTarget':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTarget.fromJson(value);
    case 'StructureMapParameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameter.fromJson(value);
    case 'StructureMapDependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependent.fromJson(value);
    case 'Subscription':
      return value is! Map<String, dynamic>
          ? null
          : Subscription.fromJson(value);
    case 'SubscriptionChannel':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionChannel.fromJson(value);
    case 'Substance':
      return value is! Map<String, dynamic> ? null : Substance.fromJson(value);
    case 'SubstanceInstance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceInstance.fromJson(value);
    case 'SubstanceIngredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredient.fromJson(value);
    case 'SupplyDelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDelivery.fromJson(value);
    case 'SupplyDeliverySuppliedItem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItem.fromJson(value);
    case 'SupplyRequest':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequest.fromJson(value);
    case 'SupplyRequestParameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameter.fromJson(value);
    case 'Task':
      return value is! Map<String, dynamic> ? null : Task.fromJson(value);
    case 'TaskRestriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestriction.fromJson(value);
    case 'TaskInput':
      return value is! Map<String, dynamic> ? null : TaskInput.fromJson(value);
    case 'TaskOutput':
      return value is! Map<String, dynamic> ? null : TaskOutput.fromJson(value);
    case 'TerminologyCapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilities.fromJson(value);
    case 'TerminologyCapabilitiesSoftware':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(value);
    case 'TerminologyCapabilitiesImplementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(value);
    case 'TerminologyCapabilitiesCodeSystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystem.fromJson(value);
    case 'TerminologyCapabilitiesVersion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersion.fromJson(value);
    case 'TerminologyCapabilitiesFilter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilter.fromJson(value);
    case 'TerminologyCapabilitiesExpansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(value);
    case 'TerminologyCapabilitiesParameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameter.fromJson(value);
    case 'TerminologyCapabilitiesValidateCode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(value);
    case 'TerminologyCapabilitiesTranslation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(value);
    case 'TerminologyCapabilitiesClosure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosure.fromJson(value);
    case 'TestReport':
      return value is! Map<String, dynamic> ? null : TestReport.fromJson(value);
    case 'TestReportParticipant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipant.fromJson(value);
    case 'TestReportSetup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetup.fromJson(value);
    case 'TestReportAction':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction.fromJson(value);
    case 'TestReportOperation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperation.fromJson(value);
    case 'TestReportAssert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssert.fromJson(value);
    case 'TestReportTest':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTest.fromJson(value);
    case 'TestReportAction1':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1.fromJson(value);
    case 'TestReportTeardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardown.fromJson(value);
    case 'TestReportAction2':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2.fromJson(value);
    case 'TestScript':
      return value is! Map<String, dynamic> ? null : TestScript.fromJson(value);
    case 'TestScriptOrigin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOrigin.fromJson(value);
    case 'TestScriptDestination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestination.fromJson(value);
    case 'TestScriptMetadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadata.fromJson(value);
    case 'TestScriptLink':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLink.fromJson(value);
    case 'TestScriptCapability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapability.fromJson(value);
    case 'TestScriptFixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixture.fromJson(value);
    case 'TestScriptVariable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariable.fromJson(value);
    case 'TestScriptSetup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetup.fromJson(value);
    case 'TestScriptAction':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction.fromJson(value);
    case 'TestScriptOperation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperation.fromJson(value);
    case 'TestScriptRequestHeader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeader.fromJson(value);
    case 'TestScriptAssert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssert.fromJson(value);
    case 'TestScriptTest':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTest.fromJson(value);
    case 'TestScriptAction1':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1.fromJson(value);
    case 'TestScriptTeardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardown.fromJson(value);
    case 'TestScriptAction2':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2.fromJson(value);
    case 'ValueSet':
      return value is! Map<String, dynamic> ? null : ValueSet.fromJson(value);
    case 'ValueSetCompose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetCompose.fromJson(value);
    case 'ValueSetInclude':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetInclude.fromJson(value);
    case 'ValueSetConcept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConcept.fromJson(value);
    case 'ValueSetDesignation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignation.fromJson(value);
    case 'ValueSetFilter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilter.fromJson(value);
    case 'ValueSetExpansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansion.fromJson(value);
    case 'ValueSetParameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameter.fromJson(value);
    case 'ValueSetContains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContains.fromJson(value);
    case 'VerificationResult':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResult.fromJson(value);
    case 'VerificationResultPrimarySource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySource.fromJson(value);
    case 'VerificationResultAttestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestation.fromJson(value);
    case 'VerificationResultValidator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidator.fromJson(value);
    case 'VisionPrescription':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescription.fromJson(value);
    case 'VisionPrescriptionLensSpecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecification.fromJson(value);
    case 'VisionPrescriptionPrism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrism.fromJson(value);
    case 'BackboneElement':
      return value is! Map<String, dynamic>
          ? null
          : BackboneElement.fromJson(value);
    case 'Resource':
      return value is! Map<String, dynamic> ? null : Resource.fromJson(value);
    case 'base64Binary':
      return FhirBase64Binary.fromJson(value);
    case 'boolean':
      return FhirBoolean.fromJson(value);
    case 'canonical':
      return FhirCanonical.fromJson(value);
    case 'code':
      return FhirCode.fromJson(value);
    case 'date':
      return value is! String ? null : FhirDate.fromJson(value);
    case 'dateTime':
      return value is! String ? null : FhirDateTime.fromJson(value);
    case 'decimal':
      return FhirDecimal.fromJson(value);
    case 'id':
      return FhirId.fromJson(value);
    case 'instant':
      return value is! String ? null : FhirInstant.fromJson(value);
    case 'integer':
      return FhirInteger.fromJson(value);
    case 'integer64':
      return FhirInteger64.fromJson(value);
    case 'markdown':
      return FhirMarkdown.fromJson(value);
    case 'oid':
      return FhirOid.fromJson(value);
    case 'positiveInt':
      return FhirPositiveInt.fromJson(value);
// case 'string': return value;
    case 'time':
      return FhirTime.fromJson(value);
    case 'unsignedInt':
      return FhirUnsignedInt.fromJson(value);
    case 'uri':
      return FhirUri.fromJson(value);
    case 'url':
      return FhirUrl.fromJson(value);
    case 'uuid':
      return FhirUuid.fromJson(value);
    case 'BackboneType':
      return value is! Map<String, dynamic>
          ? null
          : BackboneType.fromJson(value);
    case 'CodeableReference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReference.fromJson(value);
    case 'DataType':
      return value is! Map<String, dynamic> ? null : DataType.fromJson(value);
    case 'Duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    case 'Expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpression.fromJson(value);
    case 'Meta':
      return value is! Map<String, dynamic> ? null : FhirMeta.fromJson(value);
    case 'RatioRange':
      return value is! Map<String, dynamic> ? null : RatioRange.fromJson(value);
    case 'AdministrableProductDefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinition.fromJson(value);
    case 'Citation':
      return value is! Map<String, dynamic> ? null : Citation.fromJson(value);
    case 'ClinicalUseDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinition.fromJson(value);
    case 'EvidenceReport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReport.fromJson(value);
    case 'Ingredient':
      return value is! Map<String, dynamic> ? null : Ingredient.fromJson(value);
    case 'ManufacturedItemDefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinition.fromJson(value);
    case 'MedicinalProductDefinition':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinition.fromJson(value);
    case 'NutritionProduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProduct.fromJson(value);
    case 'PackagedProductDefinition':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinition.fromJson(value);
    case 'RegulatedAuthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorization.fromJson(value);
    case 'SubscriptionStatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatus.fromJson(value);
    case 'SubscriptionTopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopic.fromJson(value);
    case 'SubstanceDefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinition.fromJson(value);
    case 'SubscriptionStatusNotificationEvent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEvent.fromJson(value);
    case 'SubscriptionTopicResourceTrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTrigger.fromJson(value);
    case 'SubscriptionTopicQueryCriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteria.fromJson(value);
    case 'SubscriptionTopicEventTrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTrigger.fromJson(value);
    case 'SubscriptionTopicCanFilterBy':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterBy.fromJson(value);
    case 'SubscriptionTopicNotificationShape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShape.fromJson(value);
    case 'NutritionProductNutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrient.fromJson(value);
    case 'NutritionProductIngredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredient.fromJson(value);
    case 'NutritionProductProductCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductProductCharacteristic.fromJson(value);
    case 'NutritionProductInstance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstance.fromJson(value);
    case 'FhirList':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'FhirListEntry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'AdministrableProductDefinitionRouteOfAdministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministration.fromJson(value);
    case 'AdministrableProductDefinitionProperty':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionProperty.fromJson(value);
    case 'AdministrableProductDefinitionTargetSpecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpecies.fromJson(value);
    case 'AdministrableProductDefinitionWithdrawalPeriod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriod.fromJson(value);
    case 'IngredientManufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturer.fromJson(value);
    case 'IngredientSubstance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstance.fromJson(value);
    case 'IngredientStrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrength.fromJson(value);
    case 'IngredientReferenceStrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrength.fromJson(value);
    case 'ClinicalUseDefinitionContraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(value);
    case 'ClinicalUseDefinitionOtherTherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapy.fromJson(value);
    case 'ClinicalUseDefinitionIndication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndication.fromJson(value);
    case 'ClinicalUseDefinitionInteraction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(value);
    case 'ClinicalUseDefinitionInteractant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractant.fromJson(value);
    case 'ClinicalUseDefinitionUndesirableEffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(value);
    case 'ClinicalUseDefinitionWarning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarning.fromJson(value);
    case 'ManufacturedItemDefinitionProperty':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionProperty.fromJson(value);
    case 'MedicinalProductDefinitionContact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContact.fromJson(value);
    case 'MedicinalProductDefinitionName':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionName.fromJson(value);
    case 'MedicinalProductDefinitionNamePart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNamePart.fromJson(value);
    case 'MedicinalProductDefinitionCountryLanguage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCountryLanguage.fromJson(value);
    case 'MedicinalProductDefinitionCrossReference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReference.fromJson(value);
    case 'MedicinalProductDefinitionOperation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperation.fromJson(value);
    case 'MedicinalProductDefinitionCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristic.fromJson(value);
    case 'PackagedProductDefinitionLegalStatusOfSupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupply.fromJson(value);
    case 'PackagedProductDefinitionPackage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackage.fromJson(value);
    case 'PackagedProductDefinitionShelfLifeStorage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionShelfLifeStorage.fromJson(value);
    case 'PackagedProductDefinitionProperty':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionProperty.fromJson(value);
    case 'PackagedProductDefinitionContainedItem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItem.fromJson(value);
    case 'RegulatedAuthorizationCase':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCase.fromJson(value);
    case 'SubstanceDefinitionMoiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoiety.fromJson(value);
    case 'SubstanceDefinitionProperty':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionProperty.fromJson(value);
    case 'SubstanceDefinitionMolecularWeight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(value);
    case 'SubstanceDefinitionStructure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructure.fromJson(value);
    case 'SubstanceDefinitionRepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentation.fromJson(value);
    case 'SubstanceDefinitionCode':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCode.fromJson(value);
    case 'SubstanceDefinitionName':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionName.fromJson(value);
    case 'SubstanceDefinitionOfficial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficial.fromJson(value);
    case 'SubstanceDefinitionRelationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationship.fromJson(value);
    case 'SubstanceDefinitionSourceMaterial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(value);
    case 'CitationSummary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary.fromJson(value);
    case 'CitationClassification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification.fromJson(value);
    case 'CitationStatusDate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate.fromJson(value);
    case 'CitationRelatesTo':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo.fromJson(value);
    case 'CitationCitedArtifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifact.fromJson(value);
    case 'CitationVersion':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersion.fromJson(value);
    case 'CitationStatusDate1':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1.fromJson(value);
    case 'CitationTitle':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitle.fromJson(value);
    case 'CitationAbstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstract.fromJson(value);
    case 'CitationPart':
      return value is! Map<String, dynamic>
          ? null
          : CitationPart.fromJson(value);
    case 'CitationRelatesTo1':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo1.fromJson(value);
    case 'CitationPublicationForm':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationForm.fromJson(value);
    case 'CitationPublishedIn':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedIn.fromJson(value);
    case 'CitationPeriodicRelease':
      return value is! Map<String, dynamic>
          ? null
          : CitationPeriodicRelease.fromJson(value);
    case 'CitationDateOfPublication':
      return value is! Map<String, dynamic>
          ? null
          : CitationDateOfPublication.fromJson(value);
    case 'CitationWebLocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocation.fromJson(value);
    case 'CitationClassification1':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1.fromJson(value);
    case 'CitationWhoClassified':
      return value is! Map<String, dynamic>
          ? null
          : CitationWhoClassified.fromJson(value);
    case 'CitationContributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorship.fromJson(value);
    case 'CitationEntry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntry.fromJson(value);
    case 'CitationAffiliationInfo':
      return value is! Map<String, dynamic>
          ? null
          : CitationAffiliationInfo.fromJson(value);
    case 'CitationContributionInstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstance.fromJson(value);
    case 'CitationSummary1':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1.fromJson(value);
    case 'EvidenceVariableDefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinition.fromJson(value);
    case 'EvidenceStatistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatistic.fromJson(value);
    case 'EvidenceSampleSize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSize.fromJson(value);
    case 'EvidenceAttributeEstimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimate.fromJson(value);
    case 'EvidenceModelCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristic.fromJson(value);
    case 'EvidenceCertainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertainty.fromJson(value);
    case 'EvidenceReportSubject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubject.fromJson(value);
    case 'EvidenceReportCharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristic.fromJson(value);
    case 'EvidenceReportRelatesTo':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesTo.fromJson(value);
    case 'EvidenceReportSection':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSection.fromJson(value);
    case 'EvidenceVariableTimeFromStart':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromStart.fromJson(value);
    case 'EvidenceVariableCategory':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategory.fromJson(value);
    case 'FhirExtension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
    case 'FhirDuration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    default:
      return null;
  }
}
