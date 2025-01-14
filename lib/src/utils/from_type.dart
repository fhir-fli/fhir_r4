import 'package:fhir_r4/fhir_r4.dart';

/// this allows for the conversion of a dynamic value to a FhirBase object
FhirBase? fromType(dynamic value, String type) {
  switch (type) {
    case 'element':
      return value is! Map<String, dynamic> ? null : Element.fromJson(value);
    case 'extension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
    case 'narrative':
      return value is! Map<String, dynamic> ? null : Narrative.fromJson(value);
    case 'annotation':
      return value is! Map<String, dynamic> ? null : Annotation.fromJson(value);
    case 'attachment':
      return value is! Map<String, dynamic> ? null : Attachment.fromJson(value);
    case 'identifier':
      return value is! Map<String, dynamic> ? null : Identifier.fromJson(value);
    case 'codeableconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeableConcept.fromJson(value);
    case 'coding':
      return value is! Map<String, dynamic> ? null : Coding.fromJson(value);
    case 'quantity':
      return value is! Map<String, dynamic> ? null : Quantity.fromJson(value);
    case 'distance':
      return value is! Map<String, dynamic> ? null : Distance.fromJson(value);
    case 'count':
      return value is! Map<String, dynamic> ? null : Count.fromJson(value);
    case 'money':
      return value is! Map<String, dynamic> ? null : Money.fromJson(value);
    case 'age':
      return value is! Map<String, dynamic> ? null : Age.fromJson(value);
    case 'range':
      return value is! Map<String, dynamic> ? null : Range.fromJson(value);
    case 'period':
      return value is! Map<String, dynamic> ? null : Period.fromJson(value);
    case 'ratio':
      return value is! Map<String, dynamic> ? null : Ratio.fromJson(value);
    case 'reference':
      return value is! Map<String, dynamic> ? null : Reference.fromJson(value);
    case 'sampleddata':
      return value is! Map<String, dynamic>
          ? null
          : SampledData.fromJson(value);
    case 'signature':
      return value is! Map<String, dynamic> ? null : Signature.fromJson(value);
    case 'humanname':
      return value is! Map<String, dynamic> ? null : HumanName.fromJson(value);
    case 'address':
      return value is! Map<String, dynamic> ? null : Address.fromJson(value);
    case 'contactpoint':
      return value is! Map<String, dynamic>
          ? null
          : ContactPoint.fromJson(value);
    case 'timing':
      return value is! Map<String, dynamic> ? null : Timing.fromJson(value);
    case 'timingrepeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeat.fromJson(value);
    case 'contactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ContactDetail.fromJson(value);
    case 'contributor':
      return value is! Map<String, dynamic>
          ? null
          : Contributor.fromJson(value);
    case 'datarequirement':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirement.fromJson(value);
    case 'datarequirementcodefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilter.fromJson(value);
    case 'datarequirementdatefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilter.fromJson(value);
    case 'datarequirementsort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSort.fromJson(value);
    case 'parameterdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ParameterDefinition.fromJson(value);
    case 'relatedartifact':
      return value is! Map<String, dynamic>
          ? null
          : RelatedArtifact.fromJson(value);
    case 'triggerdefinition':
      return value is! Map<String, dynamic>
          ? null
          : TriggerDefinition.fromJson(value);
    case 'usagecontext':
      return value is! Map<String, dynamic>
          ? null
          : UsageContext.fromJson(value);
    case 'dosage':
      return value is! Map<String, dynamic> ? null : Dosage.fromJson(value);
    case 'dosagedoseandrate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRate.fromJson(value);
    case 'population':
      return value is! Map<String, dynamic> ? null : Population.fromJson(value);
    case 'productshelflife':
      return value is! Map<String, dynamic>
          ? null
          : ProductShelfLife.fromJson(value);
    case 'prodcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : ProdCharacteristic.fromJson(value);
    case 'marketingstatus':
      return value is! Map<String, dynamic>
          ? null
          : MarketingStatus.fromJson(value);
    case 'elementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinition.fromJson(value);
    case 'elementdefinitionslicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicing.fromJson(value);
    case 'elementdefinitiondiscriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminator.fromJson(value);
    case 'elementdefinitionbase':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBase.fromJson(value);
    case 'elementdefinitiontype':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionType.fromJson(value);
    case 'elementdefinitionexample':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExample.fromJson(value);
    case 'elementdefinitionbinding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBinding.fromJson(value);
    case 'elementdefinitionmapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMapping.fromJson(value);
    case 'account':
      return value is! Map<String, dynamic> ? null : Account.fromJson(value);
    case 'accountcoverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverage.fromJson(value);
    case 'accountguarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantor.fromJson(value);
    case 'activitydefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinition.fromJson(value);
    case 'activitydefinitionparticipant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipant.fromJson(value);
    case 'activitydefinitiondynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValue.fromJson(value);
    case 'adverseevent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEvent.fromJson(value);
    case 'adverseeventsuspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntity.fromJson(value);
    case 'adverseeventcausality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausality.fromJson(value);
    case 'allergyintolerance':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntolerance.fromJson(value);
    case 'allergyintolerancereaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReaction.fromJson(value);
    case 'appointment':
      return value is! Map<String, dynamic>
          ? null
          : Appointment.fromJson(value);
    case 'appointmentparticipant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipant.fromJson(value);
    case 'appointmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentResponse.fromJson(value);
    case 'auditevent':
      return value is! Map<String, dynamic> ? null : AuditEvent.fromJson(value);
    case 'auditeventagent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgent.fromJson(value);
    case 'auditeventnetwork':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventNetwork.fromJson(value);
    case 'auditeventsource':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSource.fromJson(value);
    case 'auditevententity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntity.fromJson(value);
    case 'auditeventdetail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetail.fromJson(value);
    case 'basic':
      return value is! Map<String, dynamic> ? null : Basic.fromJson(value);
    case 'binary':
      return value is! Map<String, dynamic> ? null : Binary.fromJson(value);
    case 'biologicallyderivedproduct':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProduct.fromJson(value);
    case 'biologicallyderivedproductcollection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollection.fromJson(value);
    case 'biologicallyderivedproductprocessing':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProcessing.fromJson(value);
    case 'biologicallyderivedproductmanipulation':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductManipulation.fromJson(value);
    case 'biologicallyderivedproductstorage':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductStorage.fromJson(value);
    case 'bodystructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructure.fromJson(value);
    case 'bundle':
      return value is! Map<String, dynamic> ? null : Bundle.fromJson(value);
    case 'bundlelink':
      return value is! Map<String, dynamic> ? null : BundleLink.fromJson(value);
    case 'bundleentry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntry.fromJson(value);
    case 'bundlesearch':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearch.fromJson(value);
    case 'bundlerequest':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequest.fromJson(value);
    case 'bundleresponse':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponse.fromJson(value);
    case 'capabilitystatement':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatement.fromJson(value);
    case 'capabilitystatementsoftware':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftware.fromJson(value);
    case 'capabilitystatementimplementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementation.fromJson(value);
    case 'capabilitystatementrest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRest.fromJson(value);
    case 'capabilitystatementsecurity':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurity.fromJson(value);
    case 'capabilitystatementresource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResource.fromJson(value);
    case 'capabilitystatementinteraction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction.fromJson(value);
    case 'capabilitystatementsearchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParam.fromJson(value);
    case 'capabilitystatementoperation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperation.fromJson(value);
    case 'capabilitystatementinteraction1':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1.fromJson(value);
    case 'capabilitystatementmessaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessaging.fromJson(value);
    case 'capabilitystatementendpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpoint.fromJson(value);
    case 'capabilitystatementsupportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessage.fromJson(value);
    case 'capabilitystatementdocument':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocument.fromJson(value);
    case 'careplan':
      return value is! Map<String, dynamic> ? null : CarePlan.fromJson(value);
    case 'careplanactivity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivity.fromJson(value);
    case 'careplandetail':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanDetail.fromJson(value);
    case 'careteam':
      return value is! Map<String, dynamic> ? null : CareTeam.fromJson(value);
    case 'careteamparticipant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipant.fromJson(value);
    case 'catalogentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntry.fromJson(value);
    case 'catalogentryrelatedentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntryRelatedEntry.fromJson(value);
    case 'chargeitem':
      return value is! Map<String, dynamic> ? null : ChargeItem.fromJson(value);
    case 'chargeitemperformer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformer.fromJson(value);
    case 'chargeitemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinition.fromJson(value);
    case 'chargeitemdefinitionapplicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicability.fromJson(value);
    case 'chargeitemdefinitionpropertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroup.fromJson(value);
    case 'chargeitemdefinitionpricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPriceComponent.fromJson(value);
    case 'claim':
      return value is! Map<String, dynamic> ? null : Claim.fromJson(value);
    case 'claimrelated':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelated.fromJson(value);
    case 'claimpayee':
      return value is! Map<String, dynamic> ? null : ClaimPayee.fromJson(value);
    case 'claimcareteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeam.fromJson(value);
    case 'claimsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfo.fromJson(value);
    case 'claimdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosis.fromJson(value);
    case 'claimprocedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedure.fromJson(value);
    case 'claiminsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsurance.fromJson(value);
    case 'claimaccident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccident.fromJson(value);
    case 'claimitem':
      return value is! Map<String, dynamic> ? null : ClaimItem.fromJson(value);
    case 'claimdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetail.fromJson(value);
    case 'claimsubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetail.fromJson(value);
    case 'claimresponse':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponse.fromJson(value);
    case 'claimresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItem.fromJson(value);
    case 'claimresponseadjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudication.fromJson(value);
    case 'claimresponsedetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail.fromJson(value);
    case 'claimresponsesubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail.fromJson(value);
    case 'claimresponseadditem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItem.fromJson(value);
    case 'claimresponsedetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1.fromJson(value);
    case 'claimresponsesubdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1.fromJson(value);
    case 'claimresponsetotal':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotal.fromJson(value);
    case 'claimresponsepayment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePayment.fromJson(value);
    case 'claimresponseprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNote.fromJson(value);
    case 'claimresponseinsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsurance.fromJson(value);
    case 'claimresponseerror':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseError.fromJson(value);
    case 'clinicalimpression':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpression.fromJson(value);
    case 'clinicalimpressioninvestigation':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionInvestigation.fromJson(value);
    case 'clinicalimpressionfinding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFinding.fromJson(value);
    case 'codesystem':
      return value is! Map<String, dynamic> ? null : CodeSystem.fromJson(value);
    case 'codesystemfilter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilter.fromJson(value);
    case 'codesystemproperty':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty.fromJson(value);
    case 'codesystemconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConcept.fromJson(value);
    case 'codesystemdesignation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignation.fromJson(value);
    case 'codesystemproperty1':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1.fromJson(value);
    case 'communication':
      return value is! Map<String, dynamic>
          ? null
          : Communication.fromJson(value);
    case 'communicationpayload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayload.fromJson(value);
    case 'communicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequest.fromJson(value);
    case 'communicationrequestpayload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayload.fromJson(value);
    case 'compartmentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinition.fromJson(value);
    case 'compartmentdefinitionresource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResource.fromJson(value);
    case 'composition':
      return value is! Map<String, dynamic>
          ? null
          : Composition.fromJson(value);
    case 'compositionattester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttester.fromJson(value);
    case 'compositionrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : CompositionRelatesTo.fromJson(value);
    case 'compositionevent':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEvent.fromJson(value);
    case 'compositionsection':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSection.fromJson(value);
    case 'conceptmap':
      return value is! Map<String, dynamic> ? null : ConceptMap.fromJson(value);
    case 'conceptmapgroup':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroup.fromJson(value);
    case 'conceptmapelement':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElement.fromJson(value);
    case 'conceptmaptarget':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTarget.fromJson(value);
    case 'conceptmapdependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOn.fromJson(value);
    case 'conceptmapunmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmapped.fromJson(value);
    case 'condition':
      return value is! Map<String, dynamic> ? null : Condition.fromJson(value);
    case 'conditionstage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStage.fromJson(value);
    case 'conditionevidence':
      return value is! Map<String, dynamic>
          ? null
          : ConditionEvidence.fromJson(value);
    case 'consent':
      return value is! Map<String, dynamic> ? null : Consent.fromJson(value);
    case 'consentpolicy':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicy.fromJson(value);
    case 'consentverification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerification.fromJson(value);
    case 'consentprovision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvision.fromJson(value);
    case 'consentactor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActor.fromJson(value);
    case 'consentdata':
      return value is! Map<String, dynamic>
          ? null
          : ConsentData.fromJson(value);
    case 'contract':
      return value is! Map<String, dynamic> ? null : Contract.fromJson(value);
    case 'contractcontentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinition.fromJson(value);
    case 'contractterm':
      return value is! Map<String, dynamic>
          ? null
          : ContractTerm.fromJson(value);
    case 'contractsecuritylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabel.fromJson(value);
    case 'contractoffer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOffer.fromJson(value);
    case 'contractparty':
      return value is! Map<String, dynamic>
          ? null
          : ContractParty.fromJson(value);
    case 'contractanswer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswer.fromJson(value);
    case 'contractasset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAsset.fromJson(value);
    case 'contractcontext':
      return value is! Map<String, dynamic>
          ? null
          : ContractContext.fromJson(value);
    case 'contractvalueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItem.fromJson(value);
    case 'contractaction':
      return value is! Map<String, dynamic>
          ? null
          : ContractAction.fromJson(value);
    case 'contractsubject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubject.fromJson(value);
    case 'contractsigner':
      return value is! Map<String, dynamic>
          ? null
          : ContractSigner.fromJson(value);
    case 'contractfriendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendly.fromJson(value);
    case 'contractlegal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegal.fromJson(value);
    case 'contractrule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRule.fromJson(value);
    case 'coverage':
      return value is! Map<String, dynamic> ? null : Coverage.fromJson(value);
    case 'coverageclass':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClass.fromJson(value);
    case 'coveragecosttobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiary.fromJson(value);
    case 'coverageexception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageException.fromJson(value);
    case 'coverageeligibilityrequest':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequest.fromJson(value);
    case 'coverageeligibilityrequestsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfo.fromJson(value);
    case 'coverageeligibilityrequestinsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsurance.fromJson(value);
    case 'coverageeligibilityrequestitem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItem.fromJson(value);
    case 'coverageeligibilityrequestdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosis.fromJson(value);
    case 'coverageeligibilityresponse':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponse.fromJson(value);
    case 'coverageeligibilityresponseinsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsurance.fromJson(value);
    case 'coverageeligibilityresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItem.fromJson(value);
    case 'coverageeligibilityresponsebenefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefit.fromJson(value);
    case 'coverageeligibilityresponseerror':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseError.fromJson(value);
    case 'detectedissue':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssue.fromJson(value);
    case 'detectedissueevidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidence.fromJson(value);
    case 'detectedissuemitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigation.fromJson(value);
    case 'device':
      return value is! Map<String, dynamic> ? null : Device.fromJson(value);
    case 'deviceudicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrier.fromJson(value);
    case 'devicedevicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDeviceName.fromJson(value);
    case 'devicespecialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceSpecialization.fromJson(value);
    case 'deviceversion':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersion.fromJson(value);
    case 'deviceproperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceProperty.fromJson(value);
    case 'devicedefinition':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinition.fromJson(value);
    case 'devicedefinitionudideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifier.fromJson(value);
    case 'devicedefinitiondevicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceName.fromJson(value);
    case 'devicedefinitionspecialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionSpecialization.fromJson(value);
    case 'devicedefinitioncapability':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCapability.fromJson(value);
    case 'devicedefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionProperty.fromJson(value);
    case 'devicedefinitionmaterial':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterial.fromJson(value);
    case 'devicemetric':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetric.fromJson(value);
    case 'devicemetriccalibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibration.fromJson(value);
    case 'devicerequest':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequest.fromJson(value);
    case 'devicerequestparameter':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestParameter.fromJson(value);
    case 'deviceusestatement':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUseStatement.fromJson(value);
    case 'diagnosticreport':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReport.fromJson(value);
    case 'diagnosticreportmedia':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMedia.fromJson(value);
    case 'documentmanifest':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifest.fromJson(value);
    case 'documentmanifestrelated':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifestRelated.fromJson(value);
    case 'documentreference':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReference.fromJson(value);
    case 'documentreferencerelatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesTo.fromJson(value);
    case 'documentreferencecontent':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContent.fromJson(value);
    case 'documentreferencecontext':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContext.fromJson(value);
    case 'encounter':
      return value is! Map<String, dynamic> ? null : Encounter.fromJson(value);
    case 'encounterstatushistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterStatusHistory.fromJson(value);
    case 'encounterclasshistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterClassHistory.fromJson(value);
    case 'encounterparticipant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipant.fromJson(value);
    case 'encounterdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosis.fromJson(value);
    case 'encounterhospitalization':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHospitalization.fromJson(value);
    case 'encounterlocation':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocation.fromJson(value);
    case 'endpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpoint.fromJson(value);
    case 'enrollmentrequest':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentRequest.fromJson(value);
    case 'enrollmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentResponse.fromJson(value);
    case 'episodeofcare':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCare.fromJson(value);
    case 'episodeofcarestatushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistory.fromJson(value);
    case 'episodeofcarediagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosis.fromJson(value);
    case 'eventdefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinition.fromJson(value);
    case 'evidence':
      return value is! Map<String, dynamic> ? null : Evidence.fromJson(value);
    case 'evidencevariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariable.fromJson(value);
    case 'evidencevariablecharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristic.fromJson(value);
    case 'examplescenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenario.fromJson(value);
    case 'examplescenarioactor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActor.fromJson(value);
    case 'examplescenarioinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstance.fromJson(value);
    case 'examplescenarioversion':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersion.fromJson(value);
    case 'examplescenariocontainedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstance.fromJson(value);
    case 'examplescenarioprocess':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcess.fromJson(value);
    case 'examplescenariostep':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStep.fromJson(value);
    case 'examplescenariooperation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperation.fromJson(value);
    case 'examplescenarioalternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternative.fromJson(value);
    case 'explanationofbenefit':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefit.fromJson(value);
    case 'explanationofbenefitrelated':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelated.fromJson(value);
    case 'explanationofbenefitpayee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayee.fromJson(value);
    case 'explanationofbenefitcareteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeam.fromJson(value);
    case 'explanationofbenefitsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfo.fromJson(value);
    case 'explanationofbenefitdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosis.fromJson(value);
    case 'explanationofbenefitprocedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedure.fromJson(value);
    case 'explanationofbenefitinsurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsurance.fromJson(value);
    case 'explanationofbenefitaccident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccident.fromJson(value);
    case 'explanationofbenefititem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItem.fromJson(value);
    case 'explanationofbenefitadjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudication.fromJson(value);
    case 'explanationofbenefitdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail.fromJson(value);
    case 'explanationofbenefitsubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail.fromJson(value);
    case 'explanationofbenefitadditem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItem.fromJson(value);
    case 'explanationofbenefitdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1.fromJson(value);
    case 'explanationofbenefitsubdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1.fromJson(value);
    case 'explanationofbenefittotal':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotal.fromJson(value);
    case 'explanationofbenefitpayment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayment.fromJson(value);
    case 'explanationofbenefitprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNote.fromJson(value);
    case 'explanationofbenefitbenefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalance.fromJson(value);
    case 'explanationofbenefitfinancial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancial.fromJson(value);
    case 'familymemberhistory':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistory.fromJson(value);
    case 'familymemberhistorycondition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryCondition.fromJson(value);
    case 'flag':
      return value is! Map<String, dynamic> ? null : Flag.fromJson(value);
    case 'goal':
      return value is! Map<String, dynamic> ? null : Goal.fromJson(value);
    case 'goaltarget':
      return value is! Map<String, dynamic> ? null : GoalTarget.fromJson(value);
    case 'graphdefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinition.fromJson(value);
    case 'graphdefinitionlink':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLink.fromJson(value);
    case 'graphdefinitiontarget':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionTarget.fromJson(value);
    case 'graphdefinitioncompartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartment.fromJson(value);
    case 'group':
      return value is! Map<String, dynamic> ? null : FhirGroup.fromJson(value);
    case 'groupcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristic.fromJson(value);
    case 'groupmember':
      return value is! Map<String, dynamic>
          ? null
          : GroupMember.fromJson(value);
    case 'guidanceresponse':
      return value is! Map<String, dynamic>
          ? null
          : GuidanceResponse.fromJson(value);
    case 'healthcareservice':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareService.fromJson(value);
    case 'healthcareserviceeligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibility.fromJson(value);
    case 'healthcareserviceavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceAvailableTime.fromJson(value);
    case 'healthcareservicenotavailable':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceNotAvailable.fromJson(value);
    case 'imagingstudy':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudy.fromJson(value);
    case 'imagingstudyseries':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeries.fromJson(value);
    case 'imagingstudyperformer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformer.fromJson(value);
    case 'imagingstudyinstance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstance.fromJson(value);
    case 'immunization':
      return value is! Map<String, dynamic>
          ? null
          : Immunization.fromJson(value);
    case 'immunizationperformer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformer.fromJson(value);
    case 'immunizationeducation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEducation.fromJson(value);
    case 'immunizationreaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReaction.fromJson(value);
    case 'immunizationprotocolapplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolApplied.fromJson(value);
    case 'immunizationevaluation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEvaluation.fromJson(value);
    case 'immunizationrecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendation.fromJson(value);
    case 'immunizationrecommendationrecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendation.fromJson(value);
    case 'immunizationrecommendationdatecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterion.fromJson(value);
    case 'implementationguide':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuide.fromJson(value);
    case 'implementationguidedependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOn.fromJson(value);
    case 'implementationguideglobal':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobal.fromJson(value);
    case 'implementationguidedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinition.fromJson(value);
    case 'implementationguidegrouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGrouping.fromJson(value);
    case 'implementationguideresource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource.fromJson(value);
    case 'implementationguidepage':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage.fromJson(value);
    case 'implementationguideparameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameter.fromJson(value);
    case 'implementationguidetemplate':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplate.fromJson(value);
    case 'implementationguidemanifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifest.fromJson(value);
    case 'implementationguideresource1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1.fromJson(value);
    case 'implementationguidepage1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1.fromJson(value);
    case 'insuranceplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlan.fromJson(value);
    case 'insuranceplancontact':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanContact.fromJson(value);
    case 'insuranceplancoverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverage.fromJson(value);
    case 'insuranceplanbenefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit.fromJson(value);
    case 'insuranceplanlimit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimit.fromJson(value);
    case 'insuranceplanplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlan.fromJson(value);
    case 'insuranceplangeneralcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCost.fromJson(value);
    case 'insuranceplanspecificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCost.fromJson(value);
    case 'insuranceplanbenefit1':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1.fromJson(value);
    case 'insuranceplancost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCost.fromJson(value);
    case 'invoice':
      return value is! Map<String, dynamic> ? null : Invoice.fromJson(value);
    case 'invoiceparticipant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipant.fromJson(value);
    case 'invoicelineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItem.fromJson(value);
    case 'invoicepricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : InvoicePriceComponent.fromJson(value);
    case 'library':
      return value is! Map<String, dynamic> ? null : Library.fromJson(value);
    case 'linkage':
      return value is! Map<String, dynamic> ? null : Linkage.fromJson(value);
    case 'linkageitem':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItem.fromJson(value);
    case 'list':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'listentry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'location':
      return value is! Map<String, dynamic> ? null : Location.fromJson(value);
    case 'locationposition':
      return value is! Map<String, dynamic>
          ? null
          : LocationPosition.fromJson(value);
    case 'locationhoursofoperation':
      return value is! Map<String, dynamic>
          ? null
          : LocationHoursOfOperation.fromJson(value);
    case 'measure':
      return value is! Map<String, dynamic> ? null : Measure.fromJson(value);
    case 'measuregroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroup.fromJson(value);
    case 'measurepopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulation.fromJson(value);
    case 'measurestratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifier.fromJson(value);
    case 'measurecomponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponent.fromJson(value);
    case 'measuresupplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalData.fromJson(value);
    case 'measurereport':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReport.fromJson(value);
    case 'measurereportgroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroup.fromJson(value);
    case 'measurereportpopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation.fromJson(value);
    case 'measurereportstratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifier.fromJson(value);
    case 'measurereportstratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratum.fromJson(value);
    case 'measurereportcomponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponent.fromJson(value);
    case 'measurereportpopulation1':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1.fromJson(value);
    case 'media':
      return value is! Map<String, dynamic> ? null : Media.fromJson(value);
    case 'medication':
      return value is! Map<String, dynamic> ? null : Medication.fromJson(value);
    case 'medicationingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredient.fromJson(value);
    case 'medicationbatch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatch.fromJson(value);
    case 'medicationadministration':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministration.fromJson(value);
    case 'medicationadministrationperformer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformer.fromJson(value);
    case 'medicationadministrationdosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosage.fromJson(value);
    case 'medicationdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispense.fromJson(value);
    case 'medicationdispenseperformer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformer.fromJson(value);
    case 'medicationdispensesubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitution.fromJson(value);
    case 'medicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledge.fromJson(value);
    case 'medicationknowledgerelatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledge.fromJson(value);
    case 'medicationknowledgemonograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonograph.fromJson(value);
    case 'medicationknowledgeingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredient.fromJson(value);
    case 'medicationknowledgecost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCost.fromJson(value);
    case 'medicationknowledgemonitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgram.fromJson(value);
    case 'medicationknowledgeadministrationguidelines':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeAdministrationGuidelines.fromJson(value);
    case 'medicationknowledgedosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosage.fromJson(value);
    case 'medicationknowledgepatientcharacteristics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristics.fromJson(value);
    case 'medicationknowledgemedicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassification.fromJson(value);
    case 'medicationknowledgepackaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackaging.fromJson(value);
    case 'medicationknowledgedrugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristic.fromJson(value);
    case 'medicationknowledgeregulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatory.fromJson(value);
    case 'medicationknowledgesubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitution.fromJson(value);
    case 'medicationknowledgeschedule':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSchedule.fromJson(value);
    case 'medicationknowledgemaxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispense.fromJson(value);
    case 'medicationknowledgekinetics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeKinetics.fromJson(value);
    case 'medicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequest.fromJson(value);
    case 'medicationrequestdispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequest.fromJson(value);
    case 'medicationrequestinitialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFill.fromJson(value);
    case 'medicationrequestsubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitution.fromJson(value);
    case 'medicationstatement':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatement.fromJson(value);
    case 'messagedefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinition.fromJson(value);
    case 'messagedefinitionfocus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocus.fromJson(value);
    case 'messagedefinitionallowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponse.fromJson(value);
    case 'messageheader':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeader.fromJson(value);
    case 'messageheaderdestination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestination.fromJson(value);
    case 'messageheadersource':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSource.fromJson(value);
    case 'messageheaderresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponse.fromJson(value);
    case 'molecularsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequence.fromJson(value);
    case 'molecularsequencereferenceseq':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceReferenceSeq.fromJson(value);
    case 'molecularsequencevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceVariant.fromJson(value);
    case 'molecularsequencequality':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceQuality.fromJson(value);
    case 'molecularsequenceroc':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRoc.fromJson(value);
    case 'molecularsequencerepository':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRepository.fromJson(value);
    case 'molecularsequencestructurevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStructureVariant.fromJson(value);
    case 'molecularsequenceouter':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceOuter.fromJson(value);
    case 'molecularsequenceinner':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceInner.fromJson(value);
    case 'namingsystem':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystem.fromJson(value);
    case 'namingsystemuniqueid':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueId.fromJson(value);
    case 'nutritionorder':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrder.fromJson(value);
    case 'nutritionorderoraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDiet.fromJson(value);
    case 'nutritionordernutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrient.fromJson(value);
    case 'nutritionordertexture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTexture.fromJson(value);
    case 'nutritionordersupplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplement.fromJson(value);
    case 'nutritionorderenteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormula.fromJson(value);
    case 'nutritionorderadministration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministration.fromJson(value);
    case 'observation':
      return value is! Map<String, dynamic>
          ? null
          : Observation.fromJson(value);
    case 'observationreferencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRange.fromJson(value);
    case 'observationcomponent':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponent.fromJson(value);
    case 'observationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinition.fromJson(value);
    case 'observationdefinitionquantitativedetails':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQuantitativeDetails.fromJson(value);
    case 'observationdefinitionqualifiedinterval':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedInterval.fromJson(value);
    case 'operationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinition.fromJson(value);
    case 'operationdefinitionparameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameter.fromJson(value);
    case 'operationdefinitionbinding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBinding.fromJson(value);
    case 'operationdefinitionreferencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFrom.fromJson(value);
    case 'operationdefinitionoverload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverload.fromJson(value);
    case 'operationoutcome':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcome.fromJson(value);
    case 'operationoutcomeissue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssue.fromJson(value);
    case 'organization':
      return value is! Map<String, dynamic>
          ? null
          : Organization.fromJson(value);
    case 'organizationcontact':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationContact.fromJson(value);
    case 'organizationaffiliation':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationAffiliation.fromJson(value);
    case 'parameters':
      return value is! Map<String, dynamic> ? null : Parameters.fromJson(value);
    case 'parametersparameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameter.fromJson(value);
    case 'patient':
      return value is! Map<String, dynamic> ? null : Patient.fromJson(value);
    case 'patientcontact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContact.fromJson(value);
    case 'patientcommunication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunication.fromJson(value);
    case 'patientlink':
      return value is! Map<String, dynamic>
          ? null
          : PatientLink.fromJson(value);
    case 'paymentnotice':
      return value is! Map<String, dynamic>
          ? null
          : PaymentNotice.fromJson(value);
    case 'paymentreconciliation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliation.fromJson(value);
    case 'paymentreconciliationdetail':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationDetail.fromJson(value);
    case 'paymentreconciliationprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNote.fromJson(value);
    case 'person':
      return value is! Map<String, dynamic> ? null : Person.fromJson(value);
    case 'personlink':
      return value is! Map<String, dynamic> ? null : PersonLink.fromJson(value);
    case 'plandefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinition.fromJson(value);
    case 'plandefinitiongoal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoal.fromJson(value);
    case 'plandefinitiontarget':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTarget.fromJson(value);
    case 'plandefinitionaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionAction.fromJson(value);
    case 'plandefinitioncondition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionCondition.fromJson(value);
    case 'plandefinitionrelatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedAction.fromJson(value);
    case 'plandefinitionparticipant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipant.fromJson(value);
    case 'plandefinitiondynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValue.fromJson(value);
    case 'practitioner':
      return value is! Map<String, dynamic>
          ? null
          : Practitioner.fromJson(value);
    case 'practitionerqualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualification.fromJson(value);
    case 'practitionerrole':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRole.fromJson(value);
    case 'practitionerroleavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleAvailableTime.fromJson(value);
    case 'practitionerrolenotavailable':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleNotAvailable.fromJson(value);
    case 'procedure':
      return value is! Map<String, dynamic> ? null : Procedure.fromJson(value);
    case 'procedureperformer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformer.fromJson(value);
    case 'procedurefocaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDevice.fromJson(value);
    case 'provenance':
      return value is! Map<String, dynamic> ? null : Provenance.fromJson(value);
    case 'provenanceagent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgent.fromJson(value);
    case 'provenanceentity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntity.fromJson(value);
    case 'questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : Questionnaire.fromJson(value);
    case 'questionnaireitem':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItem.fromJson(value);
    case 'questionnaireenablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhen.fromJson(value);
    case 'questionnaireansweroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOption.fromJson(value);
    case 'questionnaireinitial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitial.fromJson(value);
    case 'questionnaireresponse':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponse.fromJson(value);
    case 'questionnaireresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItem.fromJson(value);
    case 'questionnaireresponseanswer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswer.fromJson(value);
    case 'relatedperson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPerson.fromJson(value);
    case 'relatedpersoncommunication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunication.fromJson(value);
    case 'requestgroup':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroup.fromJson(value);
    case 'requestgroupaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupAction.fromJson(value);
    case 'requestgroupcondition':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupCondition.fromJson(value);
    case 'requestgrouprelatedaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupRelatedAction.fromJson(value);
    case 'researchdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ResearchDefinition.fromJson(value);
    case 'researchelementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinition.fromJson(value);
    case 'researchelementdefinitioncharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinitionCharacteristic.fromJson(value);
    case 'researchstudy':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudy.fromJson(value);
    case 'researchstudyarm':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyArm.fromJson(value);
    case 'researchstudyobjective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjective.fromJson(value);
    case 'researchsubject':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubject.fromJson(value);
    case 'riskassessment':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessment.fromJson(value);
    case 'riskassessmentprediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPrediction.fromJson(value);
    case 'schedule':
      return value is! Map<String, dynamic> ? null : Schedule.fromJson(value);
    case 'searchparameter':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameter.fromJson(value);
    case 'searchparametercomponent':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterComponent.fromJson(value);
    case 'servicerequest':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequest.fromJson(value);
    case 'slot':
      return value is! Map<String, dynamic> ? null : Slot.fromJson(value);
    case 'specimen':
      return value is! Map<String, dynamic> ? null : Specimen.fromJson(value);
    case 'specimencollection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollection.fromJson(value);
    case 'specimenprocessing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessing.fromJson(value);
    case 'specimencontainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainer.fromJson(value);
    case 'specimendefinition':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinition.fromJson(value);
    case 'specimendefinitiontypetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTested.fromJson(value);
    case 'specimendefinitioncontainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainer.fromJson(value);
    case 'specimendefinitionadditive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditive.fromJson(value);
    case 'specimendefinitionhandling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandling.fromJson(value);
    case 'structuredefinition':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinition.fromJson(value);
    case 'structuredefinitionmapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMapping.fromJson(value);
    case 'structuredefinitioncontext':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContext.fromJson(value);
    case 'structuredefinitionsnapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshot.fromJson(value);
    case 'structuredefinitiondifferential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferential.fromJson(value);
    case 'structuremap':
      return value is! Map<String, dynamic>
          ? null
          : StructureMap.fromJson(value);
    case 'structuremapstructure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructure.fromJson(value);
    case 'structuremapgroup':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroup.fromJson(value);
    case 'structuremapinput':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInput.fromJson(value);
    case 'structuremaprule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRule.fromJson(value);
    case 'structuremapsource':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSource.fromJson(value);
    case 'structuremaptarget':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTarget.fromJson(value);
    case 'structuremapparameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameter.fromJson(value);
    case 'structuremapdependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependent.fromJson(value);
    case 'subscription':
      return value is! Map<String, dynamic>
          ? null
          : Subscription.fromJson(value);
    case 'subscriptionchannel':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionChannel.fromJson(value);
    case 'substance':
      return value is! Map<String, dynamic> ? null : Substance.fromJson(value);
    case 'substanceinstance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceInstance.fromJson(value);
    case 'substanceingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredient.fromJson(value);
    case 'supplydelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDelivery.fromJson(value);
    case 'supplydeliverysupplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItem.fromJson(value);
    case 'supplyrequest':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequest.fromJson(value);
    case 'supplyrequestparameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameter.fromJson(value);
    case 'task':
      return value is! Map<String, dynamic> ? null : Task.fromJson(value);
    case 'taskrestriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestriction.fromJson(value);
    case 'taskinput':
      return value is! Map<String, dynamic> ? null : TaskInput.fromJson(value);
    case 'taskoutput':
      return value is! Map<String, dynamic> ? null : TaskOutput.fromJson(value);
    case 'terminologycapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilities.fromJson(value);
    case 'terminologycapabilitiessoftware':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(value);
    case 'terminologycapabilitiesimplementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(value);
    case 'terminologycapabilitiescodesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystem.fromJson(value);
    case 'terminologycapabilitiesversion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersion.fromJson(value);
    case 'terminologycapabilitiesfilter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilter.fromJson(value);
    case 'terminologycapabilitiesexpansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(value);
    case 'terminologycapabilitiesparameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameter.fromJson(value);
    case 'terminologycapabilitiesvalidatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(value);
    case 'terminologycapabilitiestranslation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(value);
    case 'terminologycapabilitiesclosure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosure.fromJson(value);
    case 'testreport':
      return value is! Map<String, dynamic> ? null : TestReport.fromJson(value);
    case 'testreportparticipant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipant.fromJson(value);
    case 'testreportsetup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetup.fromJson(value);
    case 'testreportaction':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction.fromJson(value);
    case 'testreportoperation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperation.fromJson(value);
    case 'testreportassert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssert.fromJson(value);
    case 'testreporttest':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTest.fromJson(value);
    case 'testreportaction1':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1.fromJson(value);
    case 'testreportteardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardown.fromJson(value);
    case 'testreportaction2':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2.fromJson(value);
    case 'testscript':
      return value is! Map<String, dynamic> ? null : TestScript.fromJson(value);
    case 'testscriptorigin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOrigin.fromJson(value);
    case 'testscriptdestination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestination.fromJson(value);
    case 'testscriptmetadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadata.fromJson(value);
    case 'testscriptlink':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLink.fromJson(value);
    case 'testscriptcapability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapability.fromJson(value);
    case 'testscriptfixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixture.fromJson(value);
    case 'testscriptvariable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariable.fromJson(value);
    case 'testscriptsetup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetup.fromJson(value);
    case 'testscriptaction':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction.fromJson(value);
    case 'testscriptoperation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperation.fromJson(value);
    case 'testscriptrequestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeader.fromJson(value);
    case 'testscriptassert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssert.fromJson(value);
    case 'testscripttest':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTest.fromJson(value);
    case 'testscriptaction1':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1.fromJson(value);
    case 'testscriptteardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardown.fromJson(value);
    case 'testscriptaction2':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2.fromJson(value);
    case 'valueset':
      return value is! Map<String, dynamic> ? null : ValueSet.fromJson(value);
    case 'valuesetcompose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetCompose.fromJson(value);
    case 'valuesetinclude':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetInclude.fromJson(value);
    case 'valuesetconcept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConcept.fromJson(value);
    case 'valuesetdesignation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignation.fromJson(value);
    case 'valuesetfilter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilter.fromJson(value);
    case 'valuesetexpansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansion.fromJson(value);
    case 'valuesetparameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameter.fromJson(value);
    case 'valuesetcontains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContains.fromJson(value);
    case 'verificationresult':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResult.fromJson(value);
    case 'verificationresultprimarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySource.fromJson(value);
    case 'verificationresultattestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestation.fromJson(value);
    case 'verificationresultvalidator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidator.fromJson(value);
    case 'visionprescription':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescription.fromJson(value);
    case 'visionprescriptionlensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecification.fromJson(value);
    case 'visionprescriptionprism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrism.fromJson(value);
    case 'backboneelement':
      return value is! Map<String, dynamic>
          ? null
          : BackboneElement.fromJson(value);
    case 'resource':
      return value is! Map<String, dynamic> ? null : Resource.fromJson(value);
    case 'base64binary':
      return value is! Map<String, dynamic>
          ? null
          : FhirBase64Binary.fromJson({'value': value});
    case 'boolean':
      return value is! Map<String, dynamic>
          ? null
          : FhirBoolean.fromJson({'value': value});
    case 'canonical':
      return value is! Map<String, dynamic>
          ? null
          : FhirCanonical.fromJson({'value': value});
    case 'code':
      return value is! Map<String, dynamic>
          ? null
          : FhirCode.fromJson({'value': value});
    case 'date':
      return value is! Map<String, dynamic>
          ? null
          : FhirDate.fromJson({'value': value});
    case 'datetime':
      return value is! Map<String, dynamic>
          ? null
          : FhirDateTime.fromJson({'value': value});
    case 'decimal':
      return value is! Map<String, dynamic>
          ? null
          : FhirDecimal.fromJson({'value': value});
    case 'id':
      return value is! Map<String, dynamic>
          ? null
          : FhirId.fromJson({'value': value});
    case 'instant':
      return value is! Map<String, dynamic>
          ? null
          : FhirInstant.fromJson({'value': value});
    case 'integer':
      return value is! Map<String, dynamic>
          ? null
          : FhirInteger.fromJson({'value': value});
    case 'integer64':
      return value is! Map<String, dynamic>
          ? null
          : FhirInteger64.fromJson({'value': value});
    case 'markdown':
      return value is! Map<String, dynamic>
          ? null
          : FhirMarkdown.fromJson({'value': value});
    case 'oid':
      return value is! Map<String, dynamic>
          ? null
          : FhirOid.fromJson({'value': value});
    case 'positiveint':
      return value is! Map<String, dynamic>
          ? null
          : FhirPositiveInt.fromJson({'value': value});
    case 'string':
      return value is! Map<String, dynamic>
          ? null
          : FhirString.fromJson({'value': value});
    case 'time':
      return value is! Map<String, dynamic>
          ? null
          : FhirTime.fromJson({'value': value});
    case 'unsignedint':
      return value is! Map<String, dynamic>
          ? null
          : FhirUnsignedInt.fromJson({'value': value});
    case 'uri':
      return value is! Map<String, dynamic>
          ? null
          : FhirUri.fromJson({'value': value});
    case 'url':
      return value is! Map<String, dynamic>
          ? null
          : FhirUrl.fromJson({'value': value});
    case 'uuid':
      return value is! Map<String, dynamic>
          ? null
          : FhirUuid.fromJson({'value': value});
    case 'backbonetype':
      return value is! Map<String, dynamic>
          ? null
          : BackboneType.fromJson(value);
    case 'codeablereference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReference.fromJson(value);
    case 'datatype':
      return value is! Map<String, dynamic> ? null : DataType.fromJson(value);
    case 'duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    case 'expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpression.fromJson(value);
    case 'meta':
      return value is! Map<String, dynamic> ? null : FhirMeta.fromJson(value);
    case 'ratiorange':
      return value is! Map<String, dynamic> ? null : RatioRange.fromJson(value);
    case 'administrableproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinition.fromJson(value);
    case 'citation':
      return value is! Map<String, dynamic> ? null : Citation.fromJson(value);
    case 'clinicalusedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinition.fromJson(value);
    case 'evidencereport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReport.fromJson(value);
    case 'ingredient':
      return value is! Map<String, dynamic> ? null : Ingredient.fromJson(value);
    case 'manufactureditemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinition.fromJson(value);
    case 'medicinalproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinition.fromJson(value);
    case 'nutritionproduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProduct.fromJson(value);
    case 'packagedproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinition.fromJson(value);
    case 'regulatedauthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorization.fromJson(value);
    case 'subscriptionstatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatus.fromJson(value);
    case 'subscriptiontopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopic.fromJson(value);
    case 'substancedefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinition.fromJson(value);
    case 'subscriptionstatusnotificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEvent.fromJson(value);
    case 'subscriptiontopicresourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTrigger.fromJson(value);
    case 'subscriptiontopicquerycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteria.fromJson(value);
    case 'subscriptiontopiceventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTrigger.fromJson(value);
    case 'subscriptiontopiccanfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterBy.fromJson(value);
    case 'subscriptiontopicnotificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShape.fromJson(value);
    case 'nutritionproductnutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrient.fromJson(value);
    case 'nutritionproductingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredient.fromJson(value);
    case 'nutritionproductproductcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductProductCharacteristic.fromJson(value);
    case 'nutritionproductinstance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstance.fromJson(value);
    case 'fhirlist':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'fhirlistentry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'administrableproductdefinitionrouteofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministration.fromJson(value);
    case 'administrableproductdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionProperty.fromJson(value);
    case 'administrableproductdefinitiontargetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpecies.fromJson(value);
    case 'administrableproductdefinitionwithdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriod.fromJson(value);
    case 'ingredientmanufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturer.fromJson(value);
    case 'ingredientsubstance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstance.fromJson(value);
    case 'ingredientstrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrength.fromJson(value);
    case 'ingredientreferencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrength.fromJson(value);
    case 'clinicalusedefinitioncontraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(value);
    case 'clinicalusedefinitionothertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapy.fromJson(value);
    case 'clinicalusedefinitionindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndication.fromJson(value);
    case 'clinicalusedefinitioninteraction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(value);
    case 'clinicalusedefinitioninteractant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractant.fromJson(value);
    case 'clinicalusedefinitionundesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(value);
    case 'clinicalusedefinitionwarning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarning.fromJson(value);
    case 'manufactureditemdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionProperty.fromJson(value);
    case 'medicinalproductdefinitioncontact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContact.fromJson(value);
    case 'medicinalproductdefinitionname':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionName.fromJson(value);
    case 'medicinalproductdefinitionnamepart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNamePart.fromJson(value);
    case 'medicinalproductdefinitioncountrylanguage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCountryLanguage.fromJson(value);
    case 'medicinalproductdefinitioncrossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReference.fromJson(value);
    case 'medicinalproductdefinitionoperation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperation.fromJson(value);
    case 'medicinalproductdefinitioncharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristic.fromJson(value);
    case 'packagedproductdefinitionlegalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupply.fromJson(value);
    case 'packagedproductdefinitionpackage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackage.fromJson(value);
    case 'packagedproductdefinitionshelflifestorage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionShelfLifeStorage.fromJson(value);
    case 'packagedproductdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionProperty.fromJson(value);
    case 'packagedproductdefinitioncontaineditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItem.fromJson(value);
    case 'regulatedauthorizationcase':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCase.fromJson(value);
    case 'substancedefinitionmoiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoiety.fromJson(value);
    case 'substancedefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionProperty.fromJson(value);
    case 'substancedefinitionmolecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(value);
    case 'substancedefinitionstructure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructure.fromJson(value);
    case 'substancedefinitionrepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentation.fromJson(value);
    case 'substancedefinitioncode':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCode.fromJson(value);
    case 'substancedefinitionname':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionName.fromJson(value);
    case 'substancedefinitionofficial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficial.fromJson(value);
    case 'substancedefinitionrelationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationship.fromJson(value);
    case 'substancedefinitionsourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(value);
    case 'citationsummary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary.fromJson(value);
    case 'citationclassification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification.fromJson(value);
    case 'citationstatusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate.fromJson(value);
    case 'citationrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo.fromJson(value);
    case 'citationcitedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifact.fromJson(value);
    case 'citationversion':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersion.fromJson(value);
    case 'citationstatusdate1':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1.fromJson(value);
    case 'citationtitle':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitle.fromJson(value);
    case 'citationabstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstract.fromJson(value);
    case 'citationpart':
      return value is! Map<String, dynamic>
          ? null
          : CitationPart.fromJson(value);
    case 'citationrelatesto1':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo1.fromJson(value);
    case 'citationpublicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationForm.fromJson(value);
    case 'citationpublishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedIn.fromJson(value);
    case 'citationperiodicrelease':
      return value is! Map<String, dynamic>
          ? null
          : CitationPeriodicRelease.fromJson(value);
    case 'citationdateofpublication':
      return value is! Map<String, dynamic>
          ? null
          : CitationDateOfPublication.fromJson(value);
    case 'citationweblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocation.fromJson(value);
    case 'citationclassification1':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1.fromJson(value);
    case 'citationwhoclassified':
      return value is! Map<String, dynamic>
          ? null
          : CitationWhoClassified.fromJson(value);
    case 'citationcontributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorship.fromJson(value);
    case 'citationentry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntry.fromJson(value);
    case 'citationaffiliationinfo':
      return value is! Map<String, dynamic>
          ? null
          : CitationAffiliationInfo.fromJson(value);
    case 'citationcontributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstance.fromJson(value);
    case 'citationsummary1':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1.fromJson(value);
    case 'evidencevariabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinition.fromJson(value);
    case 'evidencestatistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatistic.fromJson(value);
    case 'evidencesamplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSize.fromJson(value);
    case 'evidenceattributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimate.fromJson(value);
    case 'evidencemodelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristic.fromJson(value);
    case 'evidencecertainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertainty.fromJson(value);
    case 'evidencereportsubject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubject.fromJson(value);
    case 'evidencereportcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristic.fromJson(value);
    case 'evidencereportrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesTo.fromJson(value);
    case 'evidencereportsection':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSection.fromJson(value);
    case 'evidencevariabletimefromstart':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromStart.fromJson(value);
    case 'evidencevariablecategory':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategory.fromJson(value);
    case 'fhirextension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
    case 'fhirduration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    default:
      return null;
  }
}
