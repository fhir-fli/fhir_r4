// ignore_for_file: lines_longer_than_80_chars

import 'package:fhir_r4/fhir_r4.dart';

/// This function accepts a String path and a dynamic value
/// and attempts to create a FhirType from that value
FhirBase? fromPath(String? path, dynamic value) {
  if (path == null || value == null) return null;
  final lowercasePath = path.toLowerCase();
  switch (lowercasePath) {
    case 'account':
      return value is! Map<String, dynamic> ? null : Account.fromJson(value);
    case 'account.coverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverage.fromJson(value);
    case 'account.guarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantor.fromJson(value);
    case 'activitydefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinition.fromJson(value);
    case 'activitydefinition.participant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipant.fromJson(value);
    case 'activitydefinition.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValue.fromJson(value);
    case 'administrableproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinition.fromJson(value);
    case 'administrableproductdefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionProperty.fromJson(value);
    case 'administrableproductdefinition.routeofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministration.fromJson(value);
    case 'administrableproductdefinition.routeofadministration.targetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpecies.fromJson(value);
    case 'administrableproductdefinition.routeofadministration.targetspecies.withdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriod.fromJson(value);
    case 'adverseevent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEvent.fromJson(value);
    case 'adverseevent.suspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntity.fromJson(value);
    case 'adverseevent.suspectentity.causality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausality.fromJson(value);
    case 'allergyintolerance':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntolerance.fromJson(value);
    case 'allergyintolerance.reaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReaction.fromJson(value);
    case 'appointment':
      return value is! Map<String, dynamic>
          ? null
          : Appointment.fromJson(value);
    case 'appointment.participant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipant.fromJson(value);
    case 'appointmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentResponse.fromJson(value);
    case 'auditevent':
      return value is! Map<String, dynamic> ? null : AuditEvent.fromJson(value);
    case 'auditevent.agent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgent.fromJson(value);
    case 'auditevent.agent.network':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventNetwork.fromJson(value);
    case 'auditevent.source':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSource.fromJson(value);
    case 'auditevent.entity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntity.fromJson(value);
    case 'auditevent.entity.detail':
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
    case 'biologicallyderivedproduct.collection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollection.fromJson(value);
    case 'biologicallyderivedproduct.processing':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProcessing.fromJson(value);
    case 'biologicallyderivedproduct.manipulation':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductManipulation.fromJson(value);
    case 'biologicallyderivedproduct.storage':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductStorage.fromJson(value);
    case 'bodystructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructure.fromJson(value);
    case 'bundle':
      return value is! Map<String, dynamic> ? null : Bundle.fromJson(value);
    case 'bundle.link':
      return value is! Map<String, dynamic> ? null : BundleLink.fromJson(value);
    case 'bundle.entry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntry.fromJson(value);
    case 'bundle.entry.search':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearch.fromJson(value);
    case 'bundle.entry.request':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequest.fromJson(value);
    case 'bundle.entry.response':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponse.fromJson(value);
    case 'capabilitystatement':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatement.fromJson(value);
    case 'capabilitystatement.software':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftware.fromJson(value);
    case 'capabilitystatement.implementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementation.fromJson(value);
    case 'capabilitystatement.rest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRest.fromJson(value);
    case 'capabilitystatement.rest.security':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurity.fromJson(value);
    case 'capabilitystatement.rest.resource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResource.fromJson(value);
    case 'capabilitystatement.rest.resource.interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction.fromJson(value);
    case 'capabilitystatement.rest.resource.searchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParam.fromJson(value);
    case 'capabilitystatement.rest.resource.operation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperation.fromJson(value);
    case 'capabilitystatement.rest.interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1.fromJson(value);
    case 'capabilitystatement.messaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessaging.fromJson(value);
    case 'capabilitystatement.messaging.endpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpoint.fromJson(value);
    case 'capabilitystatement.messaging.supportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessage.fromJson(value);
    case 'capabilitystatement.document':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocument.fromJson(value);
    case 'careplan':
      return value is! Map<String, dynamic> ? null : CarePlan.fromJson(value);
    case 'careplan.activity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivity.fromJson(value);
    case 'careplan.activity.detail':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanDetail.fromJson(value);
    case 'careteam':
      return value is! Map<String, dynamic> ? null : CareTeam.fromJson(value);
    case 'careteam.participant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipant.fromJson(value);
    case 'catalogentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntry.fromJson(value);
    case 'catalogentry.relatedentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntryRelatedEntry.fromJson(value);
    case 'chargeitem':
      return value is! Map<String, dynamic> ? null : ChargeItem.fromJson(value);
    case 'chargeitem.performer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformer.fromJson(value);
    case 'chargeitemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinition.fromJson(value);
    case 'chargeitemdefinition.applicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicability.fromJson(value);
    case 'chargeitemdefinition.propertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroup.fromJson(value);
    case 'chargeitemdefinition.propertygroup.pricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPriceComponent.fromJson(value);
    case 'citation':
      return value is! Map<String, dynamic> ? null : Citation.fromJson(value);
    case 'citation.summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary.fromJson(value);
    case 'citation.classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification.fromJson(value);
    case 'citation.statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate.fromJson(value);
    case 'citation.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo.fromJson(value);
    case 'citation.citedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifact.fromJson(value);
    case 'citation.citedartifact.version':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersion.fromJson(value);
    case 'citation.citedartifact.statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1.fromJson(value);
    case 'citation.citedartifact.title':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitle.fromJson(value);
    case 'citation.citedartifact.abstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstract.fromJson(value);
    case 'citation.citedartifact.part':
      return value is! Map<String, dynamic>
          ? null
          : CitationPart.fromJson(value);
    case 'citation.citedartifact.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo1.fromJson(value);
    case 'citation.citedartifact.publicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationForm.fromJson(value);
    case 'citation.citedartifact.publicationform.publishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedIn.fromJson(value);
    case 'citation.citedartifact.publicationform.periodicrelease':
      return value is! Map<String, dynamic>
          ? null
          : CitationPeriodicRelease.fromJson(value);
    case 'citation.citedartifact.publicationform.periodicrelease.dateofpublication':
      return value is! Map<String, dynamic>
          ? null
          : CitationDateOfPublication.fromJson(value);
    case 'citation.citedartifact.weblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocation.fromJson(value);
    case 'citation.citedartifact.classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1.fromJson(value);
    case 'citation.citedartifact.classification.whoclassified':
      return value is! Map<String, dynamic>
          ? null
          : CitationWhoClassified.fromJson(value);
    case 'citation.citedartifact.contributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorship.fromJson(value);
    case 'citation.citedartifact.contributorship.entry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntry.fromJson(value);
    case 'citation.citedartifact.contributorship.entry.affiliationinfo':
      return value is! Map<String, dynamic>
          ? null
          : CitationAffiliationInfo.fromJson(value);
    case 'citation.citedartifact.contributorship.entry.contributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstance.fromJson(value);
    case 'citation.citedartifact.contributorship.summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1.fromJson(value);
    case 'claim':
      return value is! Map<String, dynamic> ? null : Claim.fromJson(value);
    case 'claim.related':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelated.fromJson(value);
    case 'claim.payee':
      return value is! Map<String, dynamic> ? null : ClaimPayee.fromJson(value);
    case 'claim.careteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeam.fromJson(value);
    case 'claim.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfo.fromJson(value);
    case 'claim.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosis.fromJson(value);
    case 'claim.procedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedure.fromJson(value);
    case 'claim.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsurance.fromJson(value);
    case 'claim.accident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccident.fromJson(value);
    case 'claim.item':
      return value is! Map<String, dynamic> ? null : ClaimItem.fromJson(value);
    case 'claim.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetail.fromJson(value);
    case 'claim.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetail.fromJson(value);
    case 'claimresponse':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponse.fromJson(value);
    case 'claimresponse.item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItem.fromJson(value);
    case 'claimresponse.item.adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudication.fromJson(value);
    case 'claimresponse.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail.fromJson(value);
    case 'claimresponse.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail.fromJson(value);
    case 'claimresponse.additem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItem.fromJson(value);
    case 'claimresponse.additem.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1.fromJson(value);
    case 'claimresponse.additem.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1.fromJson(value);
    case 'claimresponse.total':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotal.fromJson(value);
    case 'claimresponse.payment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePayment.fromJson(value);
    case 'claimresponse.processnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNote.fromJson(value);
    case 'claimresponse.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsurance.fromJson(value);
    case 'claimresponse.error':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseError.fromJson(value);
    case 'clinicalimpression':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpression.fromJson(value);
    case 'clinicalimpression.investigation':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionInvestigation.fromJson(value);
    case 'clinicalimpression.finding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFinding.fromJson(value);
    case 'clinicalusedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinition.fromJson(value);
    case 'clinicalusedefinition.contraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(value);
    case 'clinicalusedefinition.contraindication.othertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapy.fromJson(value);
    case 'clinicalusedefinition.indication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndication.fromJson(value);
    case 'clinicalusedefinition.interaction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(value);
    case 'clinicalusedefinition.interaction.interactant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractant.fromJson(value);
    case 'clinicalusedefinition.undesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(value);
    case 'clinicalusedefinition.warning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarning.fromJson(value);
    case 'codesystem':
      return value is! Map<String, dynamic> ? null : CodeSystem.fromJson(value);
    case 'codesystem.filter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilter.fromJson(value);
    case 'codesystem.property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty.fromJson(value);
    case 'codesystem.concept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConcept.fromJson(value);
    case 'codesystem.concept.designation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignation.fromJson(value);
    case 'codesystem.concept.property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1.fromJson(value);
    case 'communication':
      return value is! Map<String, dynamic>
          ? null
          : Communication.fromJson(value);
    case 'communication.payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayload.fromJson(value);
    case 'communicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequest.fromJson(value);
    case 'communicationrequest.payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayload.fromJson(value);
    case 'compartmentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinition.fromJson(value);
    case 'compartmentdefinition.resource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResource.fromJson(value);
    case 'composition':
      return value is! Map<String, dynamic>
          ? null
          : Composition.fromJson(value);
    case 'composition.attester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttester.fromJson(value);
    case 'composition.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CompositionRelatesTo.fromJson(value);
    case 'composition.event':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEvent.fromJson(value);
    case 'composition.section':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSection.fromJson(value);
    case 'conceptmap':
      return value is! Map<String, dynamic> ? null : ConceptMap.fromJson(value);
    case 'conceptmap.group':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroup.fromJson(value);
    case 'conceptmap.group.element':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElement.fromJson(value);
    case 'conceptmap.group.element.target':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTarget.fromJson(value);
    case 'conceptmap.group.element.target.dependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOn.fromJson(value);
    case 'conceptmap.group.unmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmapped.fromJson(value);
    case 'condition':
      return value is! Map<String, dynamic> ? null : Condition.fromJson(value);
    case 'condition.stage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStage.fromJson(value);
    case 'condition.evidence':
      return value is! Map<String, dynamic>
          ? null
          : ConditionEvidence.fromJson(value);
    case 'consent':
      return value is! Map<String, dynamic> ? null : Consent.fromJson(value);
    case 'consent.policy':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicy.fromJson(value);
    case 'consent.verification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerification.fromJson(value);
    case 'consent.provision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvision.fromJson(value);
    case 'consent.provision.actor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActor.fromJson(value);
    case 'consent.provision.data':
      return value is! Map<String, dynamic>
          ? null
          : ConsentData.fromJson(value);
    case 'contract':
      return value is! Map<String, dynamic> ? null : Contract.fromJson(value);
    case 'contract.contentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinition.fromJson(value);
    case 'contract.term':
      return value is! Map<String, dynamic>
          ? null
          : ContractTerm.fromJson(value);
    case 'contract.term.securitylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabel.fromJson(value);
    case 'contract.term.offer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOffer.fromJson(value);
    case 'contract.term.offer.party':
      return value is! Map<String, dynamic>
          ? null
          : ContractParty.fromJson(value);
    case 'contract.term.offer.answer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswer.fromJson(value);
    case 'contract.term.asset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAsset.fromJson(value);
    case 'contract.term.asset.context':
      return value is! Map<String, dynamic>
          ? null
          : ContractContext.fromJson(value);
    case 'contract.term.asset.valueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItem.fromJson(value);
    case 'contract.term.action':
      return value is! Map<String, dynamic>
          ? null
          : ContractAction.fromJson(value);
    case 'contract.term.action.subject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubject.fromJson(value);
    case 'contract.signer':
      return value is! Map<String, dynamic>
          ? null
          : ContractSigner.fromJson(value);
    case 'contract.friendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendly.fromJson(value);
    case 'contract.legal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegal.fromJson(value);
    case 'contract.rule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRule.fromJson(value);
    case 'coverage':
      return value is! Map<String, dynamic> ? null : Coverage.fromJson(value);
    case 'coverage.class':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClass.fromJson(value);
    case 'coverage.costtobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiary.fromJson(value);
    case 'coverage.costtobeneficiary.exception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageException.fromJson(value);
    case 'coverageeligibilityrequest':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequest.fromJson(value);
    case 'coverageeligibilityrequest.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfo.fromJson(value);
    case 'coverageeligibilityrequest.insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsurance.fromJson(value);
    case 'coverageeligibilityrequest.item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItem.fromJson(value);
    case 'coverageeligibilityrequest.item.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosis.fromJson(value);
    case 'coverageeligibilityresponse':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponse.fromJson(value);
    case 'coverageeligibilityresponse.insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsurance.fromJson(value);
    case 'coverageeligibilityresponse.insurance.item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItem.fromJson(value);
    case 'coverageeligibilityresponse.insurance.item.benefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefit.fromJson(value);
    case 'coverageeligibilityresponse.error':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseError.fromJson(value);
    case 'detectedissue':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssue.fromJson(value);
    case 'detectedissue.evidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidence.fromJson(value);
    case 'detectedissue.mitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigation.fromJson(value);
    case 'device':
      return value is! Map<String, dynamic> ? null : Device.fromJson(value);
    case 'device.udicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrier.fromJson(value);
    case 'device.devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDeviceName.fromJson(value);
    case 'device.specialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceSpecialization.fromJson(value);
    case 'device.version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersion.fromJson(value);
    case 'device.property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceProperty.fromJson(value);
    case 'devicedefinition':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinition.fromJson(value);
    case 'devicedefinition.udideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifier.fromJson(value);
    case 'devicedefinition.devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceName.fromJson(value);
    case 'devicedefinition.specialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionSpecialization.fromJson(value);
    case 'devicedefinition.capability':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCapability.fromJson(value);
    case 'devicedefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionProperty.fromJson(value);
    case 'devicedefinition.material':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterial.fromJson(value);
    case 'devicemetric':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetric.fromJson(value);
    case 'devicemetric.calibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibration.fromJson(value);
    case 'devicerequest':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequest.fromJson(value);
    case 'devicerequest.parameter':
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
    case 'diagnosticreport.media':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMedia.fromJson(value);
    case 'documentmanifest':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifest.fromJson(value);
    case 'documentmanifest.related':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifestRelated.fromJson(value);
    case 'documentreference':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReference.fromJson(value);
    case 'documentreference.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesTo.fromJson(value);
    case 'documentreference.content':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContent.fromJson(value);
    case 'documentreference.context':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContext.fromJson(value);
    case 'encounter':
      return value is! Map<String, dynamic> ? null : Encounter.fromJson(value);
    case 'encounter.statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterStatusHistory.fromJson(value);
    case 'encounter.classhistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterClassHistory.fromJson(value);
    case 'encounter.participant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipant.fromJson(value);
    case 'encounter.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosis.fromJson(value);
    case 'encounter.hospitalization':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHospitalization.fromJson(value);
    case 'encounter.location':
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
    case 'episodeofcare.statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistory.fromJson(value);
    case 'episodeofcare.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosis.fromJson(value);
    case 'eventdefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinition.fromJson(value);
    case 'evidence':
      return value is! Map<String, dynamic> ? null : Evidence.fromJson(value);
    case 'evidence.variabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinition.fromJson(value);
    case 'evidence.statistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatistic.fromJson(value);
    case 'evidence.statistic.samplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSize.fromJson(value);
    case 'evidence.statistic.attributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimate.fromJson(value);
    case 'evidence.statistic.modelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristic.fromJson(value);
    case 'evidence.statistic.modelcharacteristic.variable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariable.fromJson(value);
    case 'evidence.certainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertainty.fromJson(value);
    case 'evidencereport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReport.fromJson(value);
    case 'evidencereport.subject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubject.fromJson(value);
    case 'evidencereport.subject.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristic.fromJson(value);
    case 'evidencereport.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesTo.fromJson(value);
    case 'evidencereport.section':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSection.fromJson(value);
    case 'evidencevariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariable.fromJson(value);
    case 'evidencevariable.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristic.fromJson(value);
    case 'evidencevariable.characteristic.timefromstart':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromStart.fromJson(value);
    case 'evidencevariable.category':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategory.fromJson(value);
    case 'examplescenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenario.fromJson(value);
    case 'examplescenario.actor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActor.fromJson(value);
    case 'examplescenario.instance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstance.fromJson(value);
    case 'examplescenario.instance.version':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersion.fromJson(value);
    case 'examplescenario.instance.containedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstance.fromJson(value);
    case 'examplescenario.process':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcess.fromJson(value);
    case 'examplescenario.process.step':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStep.fromJson(value);
    case 'examplescenario.process.step.operation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperation.fromJson(value);
    case 'examplescenario.process.step.alternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternative.fromJson(value);
    case 'explanationofbenefit':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefit.fromJson(value);
    case 'explanationofbenefit.related':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelated.fromJson(value);
    case 'explanationofbenefit.payee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayee.fromJson(value);
    case 'explanationofbenefit.careteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeam.fromJson(value);
    case 'explanationofbenefit.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfo.fromJson(value);
    case 'explanationofbenefit.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosis.fromJson(value);
    case 'explanationofbenefit.procedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedure.fromJson(value);
    case 'explanationofbenefit.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsurance.fromJson(value);
    case 'explanationofbenefit.accident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccident.fromJson(value);
    case 'explanationofbenefit.item':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItem.fromJson(value);
    case 'explanationofbenefit.item.adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudication.fromJson(value);
    case 'explanationofbenefit.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail.fromJson(value);
    case 'explanationofbenefit.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail.fromJson(value);
    case 'explanationofbenefit.additem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItem.fromJson(value);
    case 'explanationofbenefit.additem.detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1.fromJson(value);
    case 'explanationofbenefit.additem.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1.fromJson(value);
    case 'explanationofbenefit.total':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotal.fromJson(value);
    case 'explanationofbenefit.payment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayment.fromJson(value);
    case 'explanationofbenefit.processnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNote.fromJson(value);
    case 'explanationofbenefit.benefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalance.fromJson(value);
    case 'explanationofbenefit.benefitbalance.financial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancial.fromJson(value);
    case 'familymemberhistory':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistory.fromJson(value);
    case 'familymemberhistory.condition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryCondition.fromJson(value);
    case 'flag':
      return value is! Map<String, dynamic> ? null : Flag.fromJson(value);
    case 'goal':
      return value is! Map<String, dynamic> ? null : Goal.fromJson(value);
    case 'goal.target':
      return value is! Map<String, dynamic> ? null : GoalTarget.fromJson(value);
    case 'graphdefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinition.fromJson(value);
    case 'graphdefinition.link':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLink.fromJson(value);
    case 'graphdefinition.link.target':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionTarget.fromJson(value);
    case 'graphdefinition.link.target.compartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartment.fromJson(value);
    case 'group':
      return value is! Map<String, dynamic> ? null : FhirGroup.fromJson(value);
    case 'group.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristic.fromJson(value);
    case 'group.member':
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
    case 'healthcareservice.eligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibility.fromJson(value);
    case 'healthcareservice.availabletime':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceAvailableTime.fromJson(value);
    case 'healthcareservice.notavailable':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceNotAvailable.fromJson(value);
    case 'imagingstudy':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudy.fromJson(value);
    case 'imagingstudy.series':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeries.fromJson(value);
    case 'imagingstudy.series.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformer.fromJson(value);
    case 'imagingstudy.series.instance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstance.fromJson(value);
    case 'immunization':
      return value is! Map<String, dynamic>
          ? null
          : Immunization.fromJson(value);
    case 'immunization.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformer.fromJson(value);
    case 'immunization.education':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEducation.fromJson(value);
    case 'immunization.reaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReaction.fromJson(value);
    case 'immunization.protocolapplied':
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
    case 'immunizationrecommendation.recommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendation.fromJson(value);
    case 'immunizationrecommendation.recommendation.datecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterion.fromJson(value);
    case 'implementationguide':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuide.fromJson(value);
    case 'implementationguide.dependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOn.fromJson(value);
    case 'implementationguide.global':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobal.fromJson(value);
    case 'implementationguide.definition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinition.fromJson(value);
    case 'implementationguide.definition.grouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGrouping.fromJson(value);
    case 'implementationguide.definition.resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource.fromJson(value);
    case 'implementationguide.definition.page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage.fromJson(value);
    case 'implementationguide.definition.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameter.fromJson(value);
    case 'implementationguide.definition.template':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplate.fromJson(value);
    case 'implementationguide.manifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifest.fromJson(value);
    case 'implementationguide.manifest.resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1.fromJson(value);
    case 'implementationguide.manifest.page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1.fromJson(value);
    case 'ingredient':
      return value is! Map<String, dynamic> ? null : Ingredient.fromJson(value);
    case 'ingredient.manufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturer.fromJson(value);
    case 'ingredient.substance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstance.fromJson(value);
    case 'ingredient.substance.strength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrength.fromJson(value);
    case 'ingredient.substance.strength.referencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrength.fromJson(value);
    case 'insuranceplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlan.fromJson(value);
    case 'insuranceplan.contact':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanContact.fromJson(value);
    case 'insuranceplan.coverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverage.fromJson(value);
    case 'insuranceplan.coverage.benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit.fromJson(value);
    case 'insuranceplan.coverage.benefit.limit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimit.fromJson(value);
    case 'insuranceplan.plan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlan.fromJson(value);
    case 'insuranceplan.plan.generalcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCost.fromJson(value);
    case 'insuranceplan.plan.specificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCost.fromJson(value);
    case 'insuranceplan.plan.specificcost.benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1.fromJson(value);
    case 'insuranceplan.plan.specificcost.benefit.cost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCost.fromJson(value);
    case 'invoice':
      return value is! Map<String, dynamic> ? null : Invoice.fromJson(value);
    case 'invoice.participant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipant.fromJson(value);
    case 'invoice.lineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItem.fromJson(value);
    case 'invoice.lineitem.pricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : InvoicePriceComponent.fromJson(value);
    case 'library':
      return value is! Map<String, dynamic> ? null : Library.fromJson(value);
    case 'linkage':
      return value is! Map<String, dynamic> ? null : Linkage.fromJson(value);
    case 'linkage.item':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItem.fromJson(value);
    case 'list':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'list.entry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'location':
      return value is! Map<String, dynamic> ? null : Location.fromJson(value);
    case 'location.position':
      return value is! Map<String, dynamic>
          ? null
          : LocationPosition.fromJson(value);
    case 'location.hoursofoperation':
      return value is! Map<String, dynamic>
          ? null
          : LocationHoursOfOperation.fromJson(value);
    case 'manufactureditemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinition.fromJson(value);
    case 'manufactureditemdefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionProperty.fromJson(value);
    case 'measure':
      return value is! Map<String, dynamic> ? null : Measure.fromJson(value);
    case 'measure.group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroup.fromJson(value);
    case 'measure.group.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulation.fromJson(value);
    case 'measure.group.stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifier.fromJson(value);
    case 'measure.group.stratifier.component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponent.fromJson(value);
    case 'measure.supplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalData.fromJson(value);
    case 'measurereport':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReport.fromJson(value);
    case 'measurereport.group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroup.fromJson(value);
    case 'measurereport.group.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation.fromJson(value);
    case 'measurereport.group.stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifier.fromJson(value);
    case 'measurereport.group.stratifier.stratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratum.fromJson(value);
    case 'measurereport.group.stratifier.stratum.component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponent.fromJson(value);
    case 'measurereport.group.stratifier.stratum.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1.fromJson(value);
    case 'media':
      return value is! Map<String, dynamic> ? null : Media.fromJson(value);
    case 'medication':
      return value is! Map<String, dynamic> ? null : Medication.fromJson(value);
    case 'medication.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredient.fromJson(value);
    case 'medication.batch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatch.fromJson(value);
    case 'medicationadministration':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministration.fromJson(value);
    case 'medicationadministration.performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformer.fromJson(value);
    case 'medicationadministration.dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosage.fromJson(value);
    case 'medicationdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispense.fromJson(value);
    case 'medicationdispense.performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformer.fromJson(value);
    case 'medicationdispense.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitution.fromJson(value);
    case 'medicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledge.fromJson(value);
    case 'medicationknowledge.relatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledge.fromJson(value);
    case 'medicationknowledge.monograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonograph.fromJson(value);
    case 'medicationknowledge.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredient.fromJson(value);
    case 'medicationknowledge.cost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCost.fromJson(value);
    case 'medicationknowledge.monitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgram.fromJson(value);
    case 'medicationknowledge.administrationguidelines':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeAdministrationGuidelines.fromJson(value);
    case 'medicationknowledge.administrationguidelines.dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosage.fromJson(value);
    case 'medicationknowledge.administrationguidelines.patientcharacteristics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristics.fromJson(value);
    case 'medicationknowledge.medicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassification.fromJson(value);
    case 'medicationknowledge.packaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackaging.fromJson(value);
    case 'medicationknowledge.drugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristic.fromJson(value);
    case 'medicationknowledge.regulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatory.fromJson(value);
    case 'medicationknowledge.regulatory.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitution.fromJson(value);
    case 'medicationknowledge.regulatory.schedule':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSchedule.fromJson(value);
    case 'medicationknowledge.regulatory.maxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispense.fromJson(value);
    case 'medicationknowledge.kinetics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeKinetics.fromJson(value);
    case 'medicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequest.fromJson(value);
    case 'medicationrequest.dispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequest.fromJson(value);
    case 'medicationrequest.dispenserequest.initialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFill.fromJson(value);
    case 'medicationrequest.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitution.fromJson(value);
    case 'medicationstatement':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatement.fromJson(value);
    case 'medicinalproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinition.fromJson(value);
    case 'medicinalproductdefinition.contact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContact.fromJson(value);
    case 'medicinalproductdefinition.name':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionName.fromJson(value);
    case 'medicinalproductdefinition.name.namepart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNamePart.fromJson(value);
    case 'medicinalproductdefinition.name.countrylanguage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCountryLanguage.fromJson(value);
    case 'medicinalproductdefinition.crossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReference.fromJson(value);
    case 'medicinalproductdefinition.operation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperation.fromJson(value);
    case 'medicinalproductdefinition.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristic.fromJson(value);
    case 'messagedefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinition.fromJson(value);
    case 'messagedefinition.focus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocus.fromJson(value);
    case 'messagedefinition.allowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponse.fromJson(value);
    case 'messageheader':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeader.fromJson(value);
    case 'messageheader.destination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestination.fromJson(value);
    case 'messageheader.source':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSource.fromJson(value);
    case 'messageheader.response':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponse.fromJson(value);
    case 'molecularsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequence.fromJson(value);
    case 'molecularsequence.referenceseq':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceReferenceSeq.fromJson(value);
    case 'molecularsequence.variant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceVariant.fromJson(value);
    case 'molecularsequence.quality':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceQuality.fromJson(value);
    case 'molecularsequence.quality.roc':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRoc.fromJson(value);
    case 'molecularsequence.repository':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRepository.fromJson(value);
    case 'molecularsequence.structurevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStructureVariant.fromJson(value);
    case 'molecularsequence.structurevariant.outer':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceOuter.fromJson(value);
    case 'molecularsequence.structurevariant.inner':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceInner.fromJson(value);
    case 'namingsystem':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystem.fromJson(value);
    case 'namingsystem.uniqueid':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueId.fromJson(value);
    case 'nutritionorder':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrder.fromJson(value);
    case 'nutritionorder.oraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDiet.fromJson(value);
    case 'nutritionorder.oraldiet.nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrient.fromJson(value);
    case 'nutritionorder.oraldiet.texture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTexture.fromJson(value);
    case 'nutritionorder.supplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplement.fromJson(value);
    case 'nutritionorder.enteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormula.fromJson(value);
    case 'nutritionorder.enteralformula.administration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministration.fromJson(value);
    case 'nutritionproduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProduct.fromJson(value);
    case 'nutritionproduct.nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrient.fromJson(value);
    case 'nutritionproduct.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredient.fromJson(value);
    case 'nutritionproduct.productcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductProductCharacteristic.fromJson(value);
    case 'nutritionproduct.instance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstance.fromJson(value);
    case 'observation':
      return value is! Map<String, dynamic>
          ? null
          : Observation.fromJson(value);
    case 'observation.referencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRange.fromJson(value);
    case 'observation.component':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponent.fromJson(value);
    case 'observationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinition.fromJson(value);
    case 'observationdefinition.quantitativedetails':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQuantitativeDetails.fromJson(value);
    case 'observationdefinition.qualifiedinterval':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedInterval.fromJson(value);
    case 'operationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinition.fromJson(value);
    case 'operationdefinition.parameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameter.fromJson(value);
    case 'operationdefinition.parameter.binding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBinding.fromJson(value);
    case 'operationdefinition.parameter.referencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFrom.fromJson(value);
    case 'operationdefinition.overload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverload.fromJson(value);
    case 'operationoutcome':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcome.fromJson(value);
    case 'operationoutcome.issue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssue.fromJson(value);
    case 'organization':
      return value is! Map<String, dynamic>
          ? null
          : Organization.fromJson(value);
    case 'organization.contact':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationContact.fromJson(value);
    case 'organizationaffiliation':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationAffiliation.fromJson(value);
    case 'packagedproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinition.fromJson(value);
    case 'packagedproductdefinition.legalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupply.fromJson(value);
    case 'packagedproductdefinition.package':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackage.fromJson(value);
    case 'packagedproductdefinition.package.shelflifestorage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionShelfLifeStorage.fromJson(value);
    case 'packagedproductdefinition.package.property':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionProperty.fromJson(value);
    case 'packagedproductdefinition.package.containeditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItem.fromJson(value);
    case 'parameters':
      return value is! Map<String, dynamic> ? null : Parameters.fromJson(value);
    case 'parameters.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameter.fromJson(value);
    case 'patient':
      return value is! Map<String, dynamic> ? null : Patient.fromJson(value);
    case 'patient.contact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContact.fromJson(value);
    case 'patient.communication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunication.fromJson(value);
    case 'patient.link':
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
    case 'paymentreconciliation.detail':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationDetail.fromJson(value);
    case 'paymentreconciliation.processnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNote.fromJson(value);
    case 'person':
      return value is! Map<String, dynamic> ? null : Person.fromJson(value);
    case 'person.link':
      return value is! Map<String, dynamic> ? null : PersonLink.fromJson(value);
    case 'plandefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinition.fromJson(value);
    case 'plandefinition.goal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoal.fromJson(value);
    case 'plandefinition.goal.target':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTarget.fromJson(value);
    case 'plandefinition.action':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionAction.fromJson(value);
    case 'plandefinition.action.condition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionCondition.fromJson(value);
    case 'plandefinition.action.relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedAction.fromJson(value);
    case 'plandefinition.action.participant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipant.fromJson(value);
    case 'plandefinition.action.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValue.fromJson(value);
    case 'practitioner':
      return value is! Map<String, dynamic>
          ? null
          : Practitioner.fromJson(value);
    case 'practitioner.qualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualification.fromJson(value);
    case 'practitionerrole':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRole.fromJson(value);
    case 'practitionerrole.availabletime':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleAvailableTime.fromJson(value);
    case 'practitionerrole.notavailable':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleNotAvailable.fromJson(value);
    case 'procedure':
      return value is! Map<String, dynamic> ? null : Procedure.fromJson(value);
    case 'procedure.performer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformer.fromJson(value);
    case 'procedure.focaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDevice.fromJson(value);
    case 'provenance':
      return value is! Map<String, dynamic> ? null : Provenance.fromJson(value);
    case 'provenance.agent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgent.fromJson(value);
    case 'provenance.entity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntity.fromJson(value);
    case 'questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : Questionnaire.fromJson(value);
    case 'questionnaire.item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItem.fromJson(value);
    case 'questionnaire.item.enablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhen.fromJson(value);
    case 'questionnaire.item.answeroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOption.fromJson(value);
    case 'questionnaire.item.initial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitial.fromJson(value);
    case 'questionnaireresponse':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponse.fromJson(value);
    case 'questionnaireresponse.item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItem.fromJson(value);
    case 'questionnaireresponse.item.answer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswer.fromJson(value);
    case 'regulatedauthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorization.fromJson(value);
    case 'regulatedauthorization.case':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCase.fromJson(value);
    case 'relatedperson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPerson.fromJson(value);
    case 'relatedperson.communication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunication.fromJson(value);
    case 'requestgroup':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroup.fromJson(value);
    case 'requestgroup.action':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupAction.fromJson(value);
    case 'requestgroup.action.condition':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupCondition.fromJson(value);
    case 'requestgroup.action.relatedaction':
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
    case 'researchelementdefinition.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinitionCharacteristic.fromJson(value);
    case 'researchstudy':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudy.fromJson(value);
    case 'researchstudy.arm':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyArm.fromJson(value);
    case 'researchstudy.objective':
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
    case 'riskassessment.prediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPrediction.fromJson(value);
    case 'schedule':
      return value is! Map<String, dynamic> ? null : Schedule.fromJson(value);
    case 'searchparameter':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameter.fromJson(value);
    case 'searchparameter.component':
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
    case 'specimen.collection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollection.fromJson(value);
    case 'specimen.processing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessing.fromJson(value);
    case 'specimen.container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainer.fromJson(value);
    case 'specimendefinition':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinition.fromJson(value);
    case 'specimendefinition.typetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTested.fromJson(value);
    case 'specimendefinition.typetested.container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainer.fromJson(value);
    case 'specimendefinition.typetested.container.additive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditive.fromJson(value);
    case 'specimendefinition.typetested.handling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandling.fromJson(value);
    case 'structuredefinition':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinition.fromJson(value);
    case 'structuredefinition.mapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMapping.fromJson(value);
    case 'structuredefinition.context':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContext.fromJson(value);
    case 'structuredefinition.snapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshot.fromJson(value);
    case 'structuredefinition.differential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferential.fromJson(value);
    case 'structuremap':
      return value is! Map<String, dynamic>
          ? null
          : StructureMap.fromJson(value);
    case 'structuremap.structure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructure.fromJson(value);
    case 'structuremap.group':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroup.fromJson(value);
    case 'structuremap.group.input':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInput.fromJson(value);
    case 'structuremap.group.rule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRule.fromJson(value);
    case 'structuremap.group.rule.source':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSource.fromJson(value);
    case 'structuremap.group.rule.target':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTarget.fromJson(value);
    case 'structuremap.group.rule.target.parameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameter.fromJson(value);
    case 'structuremap.group.rule.dependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependent.fromJson(value);
    case 'subscription':
      return value is! Map<String, dynamic>
          ? null
          : Subscription.fromJson(value);
    case 'subscription.channel':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionChannel.fromJson(value);
    case 'subscriptionstatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatus.fromJson(value);
    case 'subscriptionstatus.notificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEvent.fromJson(value);
    case 'subscriptiontopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopic.fromJson(value);
    case 'subscriptiontopic.resourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTrigger.fromJson(value);
    case 'subscriptiontopic.resourcetrigger.querycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteria.fromJson(value);
    case 'subscriptiontopic.eventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTrigger.fromJson(value);
    case 'subscriptiontopic.canfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterBy.fromJson(value);
    case 'subscriptiontopic.notificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShape.fromJson(value);
    case 'substance':
      return value is! Map<String, dynamic> ? null : Substance.fromJson(value);
    case 'substance.instance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceInstance.fromJson(value);
    case 'substance.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredient.fromJson(value);
    case 'substancedefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinition.fromJson(value);
    case 'substancedefinition.moiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoiety.fromJson(value);
    case 'substancedefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionProperty.fromJson(value);
    case 'substancedefinition.molecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(value);
    case 'substancedefinition.structure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructure.fromJson(value);
    case 'substancedefinition.structure.representation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentation.fromJson(value);
    case 'substancedefinition.code':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCode.fromJson(value);
    case 'substancedefinition.name':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionName.fromJson(value);
    case 'substancedefinition.name.official':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficial.fromJson(value);
    case 'substancedefinition.relationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationship.fromJson(value);
    case 'substancedefinition.sourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(value);
    case 'supplydelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDelivery.fromJson(value);
    case 'supplydelivery.supplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItem.fromJson(value);
    case 'supplyrequest':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequest.fromJson(value);
    case 'supplyrequest.parameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameter.fromJson(value);
    case 'task':
      return value is! Map<String, dynamic> ? null : Task.fromJson(value);
    case 'task.restriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestriction.fromJson(value);
    case 'task.input':
      return value is! Map<String, dynamic> ? null : TaskInput.fromJson(value);
    case 'task.output':
      return value is! Map<String, dynamic> ? null : TaskOutput.fromJson(value);
    case 'terminologycapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilities.fromJson(value);
    case 'terminologycapabilities.software':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(value);
    case 'terminologycapabilities.implementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(value);
    case 'terminologycapabilities.codesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystem.fromJson(value);
    case 'terminologycapabilities.codesystem.version':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersion.fromJson(value);
    case 'terminologycapabilities.codesystem.version.filter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilter.fromJson(value);
    case 'terminologycapabilities.expansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(value);
    case 'terminologycapabilities.expansion.parameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameter.fromJson(value);
    case 'terminologycapabilities.validatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(value);
    case 'terminologycapabilities.translation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(value);
    case 'terminologycapabilities.closure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosure.fromJson(value);
    case 'testreport':
      return value is! Map<String, dynamic> ? null : TestReport.fromJson(value);
    case 'testreport.participant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipant.fromJson(value);
    case 'testreport.setup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetup.fromJson(value);
    case 'testreport.setup.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction.fromJson(value);
    case 'testreport.setup.action.operation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperation.fromJson(value);
    case 'testreport.setup.action.assert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssert.fromJson(value);
    case 'testreport.test':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTest.fromJson(value);
    case 'testreport.test.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1.fromJson(value);
    case 'testreport.teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardown.fromJson(value);
    case 'testreport.teardown.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2.fromJson(value);
    case 'testscript':
      return value is! Map<String, dynamic> ? null : TestScript.fromJson(value);
    case 'testscript.origin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOrigin.fromJson(value);
    case 'testscript.destination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestination.fromJson(value);
    case 'testscript.metadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadata.fromJson(value);
    case 'testscript.metadata.link':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLink.fromJson(value);
    case 'testscript.metadata.capability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapability.fromJson(value);
    case 'testscript.fixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixture.fromJson(value);
    case 'testscript.variable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariable.fromJson(value);
    case 'testscript.setup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetup.fromJson(value);
    case 'testscript.setup.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction.fromJson(value);
    case 'testscript.setup.action.operation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperation.fromJson(value);
    case 'testscript.setup.action.operation.requestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeader.fromJson(value);
    case 'testscript.setup.action.assert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssert.fromJson(value);
    case 'testscript.test':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTest.fromJson(value);
    case 'testscript.test.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1.fromJson(value);
    case 'testscript.teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardown.fromJson(value);
    case 'testscript.teardown.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2.fromJson(value);
    case 'valueset':
      return value is! Map<String, dynamic> ? null : ValueSet.fromJson(value);
    case 'valueset.compose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetCompose.fromJson(value);
    case 'valueset.compose.include':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetInclude.fromJson(value);
    case 'valueset.compose.include.concept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConcept.fromJson(value);
    case 'valueset.compose.include.concept.designation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignation.fromJson(value);
    case 'valueset.compose.include.filter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilter.fromJson(value);
    case 'valueset.expansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansion.fromJson(value);
    case 'valueset.expansion.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameter.fromJson(value);
    case 'valueset.expansion.contains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContains.fromJson(value);
    case 'verificationresult':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResult.fromJson(value);
    case 'verificationresult.primarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySource.fromJson(value);
    case 'verificationresult.attestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestation.fromJson(value);
    case 'verificationresult.validator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidator.fromJson(value);
    case 'visionprescription':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescription.fromJson(value);
    case 'visionprescription.lensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecification.fromJson(value);
    case 'visionprescription.lensspecification.prism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrism.fromJson(value);
    case 'address':
      return value is! Map<String, dynamic> ? null : Address.fromJson(value);
    case 'age':
      return value is! Map<String, dynamic> ? null : Age.fromJson(value);
    case 'annotation':
      return value is! Map<String, dynamic> ? null : Annotation.fromJson(value);
    case 'attachment':
      return value is! Map<String, dynamic> ? null : Attachment.fromJson(value);
    case 'codeableconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeableConcept.fromJson(value);
    case 'codeablereference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReference.fromJson(value);
    case 'coding':
      return value is! Map<String, dynamic> ? null : Coding.fromJson(value);
    case 'contactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ContactDetail.fromJson(value);
    case 'contactpoint':
      return value is! Map<String, dynamic>
          ? null
          : ContactPoint.fromJson(value);
    case 'contributor':
      return value is! Map<String, dynamic>
          ? null
          : Contributor.fromJson(value);
    case 'count':
      return value is! Map<String, dynamic> ? null : Count.fromJson(value);
    case 'datarequirement':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirement.fromJson(value);
    case 'datarequirement.codefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilter.fromJson(value);
    case 'datarequirement.datefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilter.fromJson(value);
    case 'datarequirement.sort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSort.fromJson(value);
    case 'distance':
      return value is! Map<String, dynamic> ? null : Distance.fromJson(value);
    case 'dosage':
      return value is! Map<String, dynamic> ? null : Dosage.fromJson(value);
    case 'dosage.doseandrate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRate.fromJson(value);
    case 'duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    case 'elementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinition.fromJson(value);
    case 'elementdefinition.slicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicing.fromJson(value);
    case 'elementdefinition.slicing.discriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminator.fromJson(value);
    case 'elementdefinition.base':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBase.fromJson(value);
    case 'elementdefinition.type':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionType.fromJson(value);
    case 'elementdefinition.example':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExample.fromJson(value);
    case 'elementdefinition.constraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraint.fromJson(value);
    case 'elementdefinition.binding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBinding.fromJson(value);
    case 'elementdefinition.mapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMapping.fromJson(value);
    case 'expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpression.fromJson(value);
    case 'extension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
    case 'humanname':
      return value is! Map<String, dynamic> ? null : HumanName.fromJson(value);
    case 'identifier':
      return value is! Map<String, dynamic> ? null : Identifier.fromJson(value);
    case 'marketingstatus':
      return value is! Map<String, dynamic>
          ? null
          : MarketingStatus.fromJson(value);
    case 'meta':
      return value is! Map<String, dynamic> ? null : FhirMeta.fromJson(value);
    case 'money':
      return value is! Map<String, dynamic> ? null : Money.fromJson(value);
    case 'narrative':
      return value is! Map<String, dynamic> ? null : Narrative.fromJson(value);
    case 'parameterdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ParameterDefinition.fromJson(value);
    case 'period':
      return value is! Map<String, dynamic> ? null : Period.fromJson(value);
    case 'population':
      return value is! Map<String, dynamic> ? null : Population.fromJson(value);
    case 'prodcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : ProdCharacteristic.fromJson(value);
    case 'productshelflife':
      return value is! Map<String, dynamic>
          ? null
          : ProductShelfLife.fromJson(value);
    case 'quantity':
      return value is! Map<String, dynamic> ? null : Quantity.fromJson(value);
    case 'range':
      return value is! Map<String, dynamic> ? null : Range.fromJson(value);
    case 'ratio':
      return value is! Map<String, dynamic> ? null : Ratio.fromJson(value);
    case 'ratiorange':
      return value is! Map<String, dynamic> ? null : RatioRange.fromJson(value);
    case 'reference':
      return value is! Map<String, dynamic> ? null : Reference.fromJson(value);
    case 'relatedartifact':
      return value is! Map<String, dynamic>
          ? null
          : RelatedArtifact.fromJson(value);
    case 'sampleddata':
      return value is! Map<String, dynamic>
          ? null
          : SampledData.fromJson(value);
    case 'signature':
      return value is! Map<String, dynamic> ? null : Signature.fromJson(value);
    case 'timing':
      return value is! Map<String, dynamic> ? null : Timing.fromJson(value);
    case 'timing.repeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeat.fromJson(value);
    case 'triggerdefinition':
      return value is! Map<String, dynamic>
          ? null
          : TriggerDefinition.fromJson(value);
    case 'usagecontext':
      return value is! Map<String, dynamic>
          ? null
          : UsageContext.fromJson(value);
    default:
      return null;
  }
}

/// This function accepts a String path and attempts to
/// return that paths's FhirType - mostly needed for BackboneElements
String? typeFromPath(String? path) {
  if (path == null) return null;
  final lowercasePath = path.toLowerCase();
  switch (lowercasePath) {
    case 'account':
      return 'Account';
    case 'account.coverage':
      return 'AccountCoverage';
    case 'account.guarantor':
      return 'AccountGuarantor';
    case 'activitydefinition':
      return 'ActivityDefinition';
    case 'activitydefinition.participant':
      return 'ActivityDefinitionParticipant';
    case 'activitydefinition.dynamicvalue':
      return 'ActivityDefinitionDynamicValue';
    case 'administrableproductdefinition':
      return 'AdministrableProductDefinition';
    case 'administrableproductdefinition.property':
      return 'AdministrableProductDefinitionProperty';
    case 'administrableproductdefinition.routeofadministration':
      return 'AdministrableProductDefinitionRouteOfAdministration';
    case 'administrableproductdefinition.routeofadministration.targetspecies':
      return 'AdministrableProductDefinitionTargetSpecies';
    case 'administrableproductdefinition.routeofadministration.targetspecies.withdrawalperiod':
      return 'AdministrableProductDefinitionWithdrawalPeriod';
    case 'adverseevent':
      return 'AdverseEvent';
    case 'adverseevent.suspectentity':
      return 'AdverseEventSuspectEntity';
    case 'adverseevent.suspectentity.causality':
      return 'AdverseEventCausality';
    case 'allergyintolerance':
      return 'AllergyIntolerance';
    case 'allergyintolerance.reaction':
      return 'AllergyIntoleranceReaction';
    case 'appointment':
      return 'Appointment';
    case 'appointment.participant':
      return 'AppointmentParticipant';
    case 'appointmentresponse':
      return 'AppointmentResponse';
    case 'auditevent':
      return 'AuditEvent';
    case 'auditevent.agent':
      return 'AuditEventAgent';
    case 'auditevent.agent.network':
      return 'AuditEventNetwork';
    case 'auditevent.source':
      return 'AuditEventSource';
    case 'auditevent.entity':
      return 'AuditEventEntity';
    case 'auditevent.entity.detail':
      return 'AuditEventDetail';
    case 'basic':
      return 'Basic';
    case 'binary':
      return 'Binary';
    case 'biologicallyderivedproduct':
      return 'BiologicallyDerivedProduct';
    case 'biologicallyderivedproduct.collection':
      return 'BiologicallyDerivedProductCollection';
    case 'biologicallyderivedproduct.processing':
      return 'BiologicallyDerivedProductProcessing';
    case 'biologicallyderivedproduct.manipulation':
      return 'BiologicallyDerivedProductManipulation';
    case 'biologicallyderivedproduct.storage':
      return 'BiologicallyDerivedProductStorage';
    case 'bodystructure':
      return 'BodyStructure';
    case 'bundle':
      return 'Bundle';
    case 'bundle.link':
      return 'BundleLink';
    case 'bundle.entry':
      return 'BundleEntry';
    case 'bundle.entry.search':
      return 'BundleSearch';
    case 'bundle.entry.request':
      return 'BundleRequest';
    case 'bundle.entry.response':
      return 'BundleResponse';
    case 'capabilitystatement':
      return 'CapabilityStatement';
    case 'capabilitystatement.software':
      return 'CapabilityStatementSoftware';
    case 'capabilitystatement.implementation':
      return 'CapabilityStatementImplementation';
    case 'capabilitystatement.rest':
      return 'CapabilityStatementRest';
    case 'capabilitystatement.rest.security':
      return 'CapabilityStatementSecurity';
    case 'capabilitystatement.rest.resource':
      return 'CapabilityStatementResource';
    case 'capabilitystatement.rest.resource.interaction':
      return 'CapabilityStatementInteraction';
    case 'capabilitystatement.rest.resource.searchparam':
      return 'CapabilityStatementSearchParam';
    case 'capabilitystatement.rest.resource.operation':
      return 'CapabilityStatementOperation';
    case 'capabilitystatement.rest.interaction':
      return 'CapabilityStatementInteraction1';
    case 'capabilitystatement.messaging':
      return 'CapabilityStatementMessaging';
    case 'capabilitystatement.messaging.endpoint':
      return 'CapabilityStatementEndpoint';
    case 'capabilitystatement.messaging.supportedmessage':
      return 'CapabilityStatementSupportedMessage';
    case 'capabilitystatement.document':
      return 'CapabilityStatementDocument';
    case 'careplan':
      return 'CarePlan';
    case 'careplan.activity':
      return 'CarePlanActivity';
    case 'careplan.activity.detail':
      return 'CarePlanDetail';
    case 'careteam':
      return 'CareTeam';
    case 'careteam.participant':
      return 'CareTeamParticipant';
    case 'catalogentry':
      return 'CatalogEntry';
    case 'catalogentry.relatedentry':
      return 'CatalogEntryRelatedEntry';
    case 'chargeitem':
      return 'ChargeItem';
    case 'chargeitem.performer':
      return 'ChargeItemPerformer';
    case 'chargeitemdefinition':
      return 'ChargeItemDefinition';
    case 'chargeitemdefinition.applicability':
      return 'ChargeItemDefinitionApplicability';
    case 'chargeitemdefinition.propertygroup':
      return 'ChargeItemDefinitionPropertyGroup';
    case 'chargeitemdefinition.propertygroup.pricecomponent':
      return 'ChargeItemDefinitionPriceComponent';
    case 'citation':
      return 'Citation';
    case 'citation.summary':
      return 'CitationSummary';
    case 'citation.classification':
      return 'CitationClassification';
    case 'citation.statusdate':
      return 'CitationStatusDate';
    case 'citation.relatesto':
      return 'CitationRelatesTo';
    case 'citation.citedartifact':
      return 'CitationCitedArtifact';
    case 'citation.citedartifact.version':
      return 'CitationVersion';
    case 'citation.citedartifact.statusdate':
      return 'CitationStatusDate1';
    case 'citation.citedartifact.title':
      return 'CitationTitle';
    case 'citation.citedartifact.abstract':
      return 'CitationAbstract';
    case 'citation.citedartifact.part':
      return 'CitationPart';
    case 'citation.citedartifact.relatesto':
      return 'CitationRelatesTo1';
    case 'citation.citedartifact.publicationform':
      return 'CitationPublicationForm';
    case 'citation.citedartifact.publicationform.publishedin':
      return 'CitationPublishedIn';
    case 'citation.citedartifact.publicationform.periodicrelease':
      return 'CitationPeriodicRelease';
    case 'citation.citedartifact.publicationform.periodicrelease.dateofpublication':
      return 'CitationDateOfPublication';
    case 'citation.citedartifact.weblocation':
      return 'CitationWebLocation';
    case 'citation.citedartifact.classification':
      return 'CitationClassification1';
    case 'citation.citedartifact.classification.whoclassified':
      return 'CitationWhoClassified';
    case 'citation.citedartifact.contributorship':
      return 'CitationContributorship';
    case 'citation.citedartifact.contributorship.entry':
      return 'CitationEntry';
    case 'citation.citedartifact.contributorship.entry.affiliationinfo':
      return 'CitationAffiliationInfo';
    case 'citation.citedartifact.contributorship.entry.contributioninstance':
      return 'CitationContributionInstance';
    case 'citation.citedartifact.contributorship.summary':
      return 'CitationSummary1';
    case 'claim':
      return 'Claim';
    case 'claim.related':
      return 'ClaimRelated';
    case 'claim.payee':
      return 'ClaimPayee';
    case 'claim.careteam':
      return 'ClaimCareTeam';
    case 'claim.supportinginfo':
      return 'ClaimSupportingInfo';
    case 'claim.diagnosis':
      return 'ClaimDiagnosis';
    case 'claim.procedure':
      return 'ClaimProcedure';
    case 'claim.insurance':
      return 'ClaimInsurance';
    case 'claim.accident':
      return 'ClaimAccident';
    case 'claim.item':
      return 'ClaimItem';
    case 'claim.item.detail':
      return 'ClaimDetail';
    case 'claim.item.detail.subdetail':
      return 'ClaimSubDetail';
    case 'claimresponse':
      return 'ClaimResponse';
    case 'claimresponse.item':
      return 'ClaimResponseItem';
    case 'claimresponse.item.adjudication':
      return 'ClaimResponseAdjudication';
    case 'claimresponse.item.detail':
      return 'ClaimResponseDetail';
    case 'claimresponse.item.detail.subdetail':
      return 'ClaimResponseSubDetail';
    case 'claimresponse.additem':
      return 'ClaimResponseAddItem';
    case 'claimresponse.additem.detail':
      return 'ClaimResponseDetail1';
    case 'claimresponse.additem.detail.subdetail':
      return 'ClaimResponseSubDetail1';
    case 'claimresponse.total':
      return 'ClaimResponseTotal';
    case 'claimresponse.payment':
      return 'ClaimResponsePayment';
    case 'claimresponse.processnote':
      return 'ClaimResponseProcessNote';
    case 'claimresponse.insurance':
      return 'ClaimResponseInsurance';
    case 'claimresponse.error':
      return 'ClaimResponseError';
    case 'clinicalimpression':
      return 'ClinicalImpression';
    case 'clinicalimpression.investigation':
      return 'ClinicalImpressionInvestigation';
    case 'clinicalimpression.finding':
      return 'ClinicalImpressionFinding';
    case 'clinicalusedefinition':
      return 'ClinicalUseDefinition';
    case 'clinicalusedefinition.contraindication':
      return 'ClinicalUseDefinitionContraindication';
    case 'clinicalusedefinition.contraindication.othertherapy':
      return 'ClinicalUseDefinitionOtherTherapy';
    case 'clinicalusedefinition.indication':
      return 'ClinicalUseDefinitionIndication';
    case 'clinicalusedefinition.interaction':
      return 'ClinicalUseDefinitionInteraction';
    case 'clinicalusedefinition.interaction.interactant':
      return 'ClinicalUseDefinitionInteractant';
    case 'clinicalusedefinition.undesirableeffect':
      return 'ClinicalUseDefinitionUndesirableEffect';
    case 'clinicalusedefinition.warning':
      return 'ClinicalUseDefinitionWarning';
    case 'codesystem':
      return 'CodeSystem';
    case 'codesystem.filter':
      return 'CodeSystemFilter';
    case 'codesystem.property':
      return 'CodeSystemProperty';
    case 'codesystem.concept':
      return 'CodeSystemConcept';
    case 'codesystem.concept.designation':
      return 'CodeSystemDesignation';
    case 'codesystem.concept.property':
      return 'CodeSystemProperty1';
    case 'communication':
      return 'Communication';
    case 'communication.payload':
      return 'CommunicationPayload';
    case 'communicationrequest':
      return 'CommunicationRequest';
    case 'communicationrequest.payload':
      return 'CommunicationRequestPayload';
    case 'compartmentdefinition':
      return 'CompartmentDefinition';
    case 'compartmentdefinition.resource':
      return 'CompartmentDefinitionResource';
    case 'composition':
      return 'Composition';
    case 'composition.attester':
      return 'CompositionAttester';
    case 'composition.relatesto':
      return 'CompositionRelatesTo';
    case 'composition.event':
      return 'CompositionEvent';
    case 'composition.section':
      return 'CompositionSection';
    case 'conceptmap':
      return 'ConceptMap';
    case 'conceptmap.group':
      return 'ConceptMapGroup';
    case 'conceptmap.group.element':
      return 'ConceptMapElement';
    case 'conceptmap.group.element.target':
      return 'ConceptMapTarget';
    case 'conceptmap.group.element.target.dependson':
      return 'ConceptMapDependsOn';
    case 'conceptmap.group.unmapped':
      return 'ConceptMapUnmapped';
    case 'condition':
      return 'Condition';
    case 'condition.stage':
      return 'ConditionStage';
    case 'condition.evidence':
      return 'ConditionEvidence';
    case 'consent':
      return 'Consent';
    case 'consent.policy':
      return 'ConsentPolicy';
    case 'consent.verification':
      return 'ConsentVerification';
    case 'consent.provision':
      return 'ConsentProvision';
    case 'consent.provision.actor':
      return 'ConsentActor';
    case 'consent.provision.data':
      return 'ConsentData';
    case 'contract':
      return 'Contract';
    case 'contract.contentdefinition':
      return 'ContractContentDefinition';
    case 'contract.term':
      return 'ContractTerm';
    case 'contract.term.securitylabel':
      return 'ContractSecurityLabel';
    case 'contract.term.offer':
      return 'ContractOffer';
    case 'contract.term.offer.party':
      return 'ContractParty';
    case 'contract.term.offer.answer':
      return 'ContractAnswer';
    case 'contract.term.asset':
      return 'ContractAsset';
    case 'contract.term.asset.context':
      return 'ContractContext';
    case 'contract.term.asset.valueditem':
      return 'ContractValuedItem';
    case 'contract.term.action':
      return 'ContractAction';
    case 'contract.term.action.subject':
      return 'ContractSubject';
    case 'contract.signer':
      return 'ContractSigner';
    case 'contract.friendly':
      return 'ContractFriendly';
    case 'contract.legal':
      return 'ContractLegal';
    case 'contract.rule':
      return 'ContractRule';
    case 'coverage':
      return 'Coverage';
    case 'coverage.class':
      return 'CoverageClass';
    case 'coverage.costtobeneficiary':
      return 'CoverageCostToBeneficiary';
    case 'coverage.costtobeneficiary.exception':
      return 'CoverageException';
    case 'coverageeligibilityrequest':
      return 'CoverageEligibilityRequest';
    case 'coverageeligibilityrequest.supportinginfo':
      return 'CoverageEligibilityRequestSupportingInfo';
    case 'coverageeligibilityrequest.insurance':
      return 'CoverageEligibilityRequestInsurance';
    case 'coverageeligibilityrequest.item':
      return 'CoverageEligibilityRequestItem';
    case 'coverageeligibilityrequest.item.diagnosis':
      return 'CoverageEligibilityRequestDiagnosis';
    case 'coverageeligibilityresponse':
      return 'CoverageEligibilityResponse';
    case 'coverageeligibilityresponse.insurance':
      return 'CoverageEligibilityResponseInsurance';
    case 'coverageeligibilityresponse.insurance.item':
      return 'CoverageEligibilityResponseItem';
    case 'coverageeligibilityresponse.insurance.item.benefit':
      return 'CoverageEligibilityResponseBenefit';
    case 'coverageeligibilityresponse.error':
      return 'CoverageEligibilityResponseError';
    case 'detectedissue':
      return 'DetectedIssue';
    case 'detectedissue.evidence':
      return 'DetectedIssueEvidence';
    case 'detectedissue.mitigation':
      return 'DetectedIssueMitigation';
    case 'device':
      return 'Device';
    case 'device.udicarrier':
      return 'DeviceUdiCarrier';
    case 'device.devicename':
      return 'DeviceDeviceName';
    case 'device.specialization':
      return 'DeviceSpecialization';
    case 'device.version':
      return 'DeviceVersion';
    case 'device.property':
      return 'DeviceProperty';
    case 'devicedefinition':
      return 'DeviceDefinition';
    case 'devicedefinition.udideviceidentifier':
      return 'DeviceDefinitionUdiDeviceIdentifier';
    case 'devicedefinition.devicename':
      return 'DeviceDefinitionDeviceName';
    case 'devicedefinition.specialization':
      return 'DeviceDefinitionSpecialization';
    case 'devicedefinition.capability':
      return 'DeviceDefinitionCapability';
    case 'devicedefinition.property':
      return 'DeviceDefinitionProperty';
    case 'devicedefinition.material':
      return 'DeviceDefinitionMaterial';
    case 'devicemetric':
      return 'DeviceMetric';
    case 'devicemetric.calibration':
      return 'DeviceMetricCalibration';
    case 'devicerequest':
      return 'DeviceRequest';
    case 'devicerequest.parameter':
      return 'DeviceRequestParameter';
    case 'deviceusestatement':
      return 'DeviceUseStatement';
    case 'diagnosticreport':
      return 'DiagnosticReport';
    case 'diagnosticreport.media':
      return 'DiagnosticReportMedia';
    case 'documentmanifest':
      return 'DocumentManifest';
    case 'documentmanifest.related':
      return 'DocumentManifestRelated';
    case 'documentreference':
      return 'DocumentReference';
    case 'documentreference.relatesto':
      return 'DocumentReferenceRelatesTo';
    case 'documentreference.content':
      return 'DocumentReferenceContent';
    case 'documentreference.context':
      return 'DocumentReferenceContext';
    case 'encounter':
      return 'Encounter';
    case 'encounter.statushistory':
      return 'EncounterStatusHistory';
    case 'encounter.classhistory':
      return 'EncounterClassHistory';
    case 'encounter.participant':
      return 'EncounterParticipant';
    case 'encounter.diagnosis':
      return 'EncounterDiagnosis';
    case 'encounter.hospitalization':
      return 'EncounterHospitalization';
    case 'encounter.location':
      return 'EncounterLocation';
    case 'endpoint':
      return 'FhirEndpoint';
    case 'enrollmentrequest':
      return 'EnrollmentRequest';
    case 'enrollmentresponse':
      return 'EnrollmentResponse';
    case 'episodeofcare':
      return 'EpisodeOfCare';
    case 'episodeofcare.statushistory':
      return 'EpisodeOfCareStatusHistory';
    case 'episodeofcare.diagnosis':
      return 'EpisodeOfCareDiagnosis';
    case 'eventdefinition':
      return 'EventDefinition';
    case 'evidence':
      return 'Evidence';
    case 'evidence.variabledefinition':
      return 'EvidenceVariableDefinition';
    case 'evidence.statistic':
      return 'EvidenceStatistic';
    case 'evidence.statistic.samplesize':
      return 'EvidenceSampleSize';
    case 'evidence.statistic.attributeestimate':
      return 'EvidenceAttributeEstimate';
    case 'evidence.statistic.modelcharacteristic':
      return 'EvidenceModelCharacteristic';
    case 'evidence.statistic.modelcharacteristic.variable':
      return 'EvidenceModelCharacteristicVariable';
    case 'evidence.certainty':
      return 'EvidenceCertainty';
    case 'evidencereport':
      return 'EvidenceReport';
    case 'evidencereport.subject':
      return 'EvidenceReportSubject';
    case 'evidencereport.subject.characteristic':
      return 'EvidenceReportCharacteristic';
    case 'evidencereport.relatesto':
      return 'EvidenceReportRelatesTo';
    case 'evidencereport.section':
      return 'EvidenceReportSection';
    case 'evidencevariable':
      return 'EvidenceVariable';
    case 'evidencevariable.characteristic':
      return 'EvidenceVariableCharacteristic';
    case 'evidencevariable.characteristic.timefromstart':
      return 'EvidenceVariableTimeFromStart';
    case 'evidencevariable.category':
      return 'EvidenceVariableCategory';
    case 'examplescenario':
      return 'ExampleScenario';
    case 'examplescenario.actor':
      return 'ExampleScenarioActor';
    case 'examplescenario.instance':
      return 'ExampleScenarioInstance';
    case 'examplescenario.instance.version':
      return 'ExampleScenarioVersion';
    case 'examplescenario.instance.containedinstance':
      return 'ExampleScenarioContainedInstance';
    case 'examplescenario.process':
      return 'ExampleScenarioProcess';
    case 'examplescenario.process.step':
      return 'ExampleScenarioStep';
    case 'examplescenario.process.step.operation':
      return 'ExampleScenarioOperation';
    case 'examplescenario.process.step.alternative':
      return 'ExampleScenarioAlternative';
    case 'explanationofbenefit':
      return 'ExplanationOfBenefit';
    case 'explanationofbenefit.related':
      return 'ExplanationOfBenefitRelated';
    case 'explanationofbenefit.payee':
      return 'ExplanationOfBenefitPayee';
    case 'explanationofbenefit.careteam':
      return 'ExplanationOfBenefitCareTeam';
    case 'explanationofbenefit.supportinginfo':
      return 'ExplanationOfBenefitSupportingInfo';
    case 'explanationofbenefit.diagnosis':
      return 'ExplanationOfBenefitDiagnosis';
    case 'explanationofbenefit.procedure':
      return 'ExplanationOfBenefitProcedure';
    case 'explanationofbenefit.insurance':
      return 'ExplanationOfBenefitInsurance';
    case 'explanationofbenefit.accident':
      return 'ExplanationOfBenefitAccident';
    case 'explanationofbenefit.item':
      return 'ExplanationOfBenefitItem';
    case 'explanationofbenefit.item.adjudication':
      return 'ExplanationOfBenefitAdjudication';
    case 'explanationofbenefit.item.detail':
      return 'ExplanationOfBenefitDetail';
    case 'explanationofbenefit.item.detail.subdetail':
      return 'ExplanationOfBenefitSubDetail';
    case 'explanationofbenefit.additem':
      return 'ExplanationOfBenefitAddItem';
    case 'explanationofbenefit.additem.detail':
      return 'ExplanationOfBenefitDetail1';
    case 'explanationofbenefit.additem.detail.subdetail':
      return 'ExplanationOfBenefitSubDetail1';
    case 'explanationofbenefit.total':
      return 'ExplanationOfBenefitTotal';
    case 'explanationofbenefit.payment':
      return 'ExplanationOfBenefitPayment';
    case 'explanationofbenefit.processnote':
      return 'ExplanationOfBenefitProcessNote';
    case 'explanationofbenefit.benefitbalance':
      return 'ExplanationOfBenefitBenefitBalance';
    case 'explanationofbenefit.benefitbalance.financial':
      return 'ExplanationOfBenefitFinancial';
    case 'familymemberhistory':
      return 'FamilyMemberHistory';
    case 'familymemberhistory.condition':
      return 'FamilyMemberHistoryCondition';
    case 'flag':
      return 'Flag';
    case 'goal':
      return 'Goal';
    case 'goal.target':
      return 'GoalTarget';
    case 'graphdefinition':
      return 'GraphDefinition';
    case 'graphdefinition.link':
      return 'GraphDefinitionLink';
    case 'graphdefinition.link.target':
      return 'GraphDefinitionTarget';
    case 'graphdefinition.link.target.compartment':
      return 'GraphDefinitionCompartment';
    case 'group':
      return 'FhirGroup';
    case 'group.characteristic':
      return 'GroupCharacteristic';
    case 'group.member':
      return 'GroupMember';
    case 'guidanceresponse':
      return 'GuidanceResponse';
    case 'healthcareservice':
      return 'HealthcareService';
    case 'healthcareservice.eligibility':
      return 'HealthcareServiceEligibility';
    case 'healthcareservice.availabletime':
      return 'HealthcareServiceAvailableTime';
    case 'healthcareservice.notavailable':
      return 'HealthcareServiceNotAvailable';
    case 'imagingstudy':
      return 'ImagingStudy';
    case 'imagingstudy.series':
      return 'ImagingStudySeries';
    case 'imagingstudy.series.performer':
      return 'ImagingStudyPerformer';
    case 'imagingstudy.series.instance':
      return 'ImagingStudyInstance';
    case 'immunization':
      return 'Immunization';
    case 'immunization.performer':
      return 'ImmunizationPerformer';
    case 'immunization.education':
      return 'ImmunizationEducation';
    case 'immunization.reaction':
      return 'ImmunizationReaction';
    case 'immunization.protocolapplied':
      return 'ImmunizationProtocolApplied';
    case 'immunizationevaluation':
      return 'ImmunizationEvaluation';
    case 'immunizationrecommendation':
      return 'ImmunizationRecommendation';
    case 'immunizationrecommendation.recommendation':
      return 'ImmunizationRecommendationRecommendation';
    case 'immunizationrecommendation.recommendation.datecriterion':
      return 'ImmunizationRecommendationDateCriterion';
    case 'implementationguide':
      return 'ImplementationGuide';
    case 'implementationguide.dependson':
      return 'ImplementationGuideDependsOn';
    case 'implementationguide.global':
      return 'ImplementationGuideGlobal';
    case 'implementationguide.definition':
      return 'ImplementationGuideDefinition';
    case 'implementationguide.definition.grouping':
      return 'ImplementationGuideGrouping';
    case 'implementationguide.definition.resource':
      return 'ImplementationGuideResource';
    case 'implementationguide.definition.page':
      return 'ImplementationGuidePage';
    case 'implementationguide.definition.parameter':
      return 'ImplementationGuideParameter';
    case 'implementationguide.definition.template':
      return 'ImplementationGuideTemplate';
    case 'implementationguide.manifest':
      return 'ImplementationGuideManifest';
    case 'implementationguide.manifest.resource':
      return 'ImplementationGuideResource1';
    case 'implementationguide.manifest.page':
      return 'ImplementationGuidePage1';
    case 'ingredient':
      return 'Ingredient';
    case 'ingredient.manufacturer':
      return 'IngredientManufacturer';
    case 'ingredient.substance':
      return 'IngredientSubstance';
    case 'ingredient.substance.strength':
      return 'IngredientStrength';
    case 'ingredient.substance.strength.referencestrength':
      return 'IngredientReferenceStrength';
    case 'insuranceplan':
      return 'InsurancePlan';
    case 'insuranceplan.contact':
      return 'InsurancePlanContact';
    case 'insuranceplan.coverage':
      return 'InsurancePlanCoverage';
    case 'insuranceplan.coverage.benefit':
      return 'InsurancePlanBenefit';
    case 'insuranceplan.coverage.benefit.limit':
      return 'InsurancePlanLimit';
    case 'insuranceplan.plan':
      return 'InsurancePlanPlan';
    case 'insuranceplan.plan.generalcost':
      return 'InsurancePlanGeneralCost';
    case 'insuranceplan.plan.specificcost':
      return 'InsurancePlanSpecificCost';
    case 'insuranceplan.plan.specificcost.benefit':
      return 'InsurancePlanBenefit1';
    case 'insuranceplan.plan.specificcost.benefit.cost':
      return 'InsurancePlanCost';
    case 'invoice':
      return 'Invoice';
    case 'invoice.participant':
      return 'InvoiceParticipant';
    case 'invoice.lineitem':
      return 'InvoiceLineItem';
    case 'invoice.lineitem.pricecomponent':
      return 'InvoicePriceComponent';
    case 'library':
      return 'Library';
    case 'linkage':
      return 'Linkage';
    case 'linkage.item':
      return 'LinkageItem';
    case 'list':
      return 'FhirList';
    case 'list.entry':
      return 'ListEntry';
    case 'location':
      return 'Location';
    case 'location.position':
      return 'LocationPosition';
    case 'location.hoursofoperation':
      return 'LocationHoursOfOperation';
    case 'manufactureditemdefinition':
      return 'ManufacturedItemDefinition';
    case 'manufactureditemdefinition.property':
      return 'ManufacturedItemDefinitionProperty';
    case 'measure':
      return 'Measure';
    case 'measure.group':
      return 'MeasureGroup';
    case 'measure.group.population':
      return 'MeasurePopulation';
    case 'measure.group.stratifier':
      return 'MeasureStratifier';
    case 'measure.group.stratifier.component':
      return 'MeasureComponent';
    case 'measure.supplementaldata':
      return 'MeasureSupplementalData';
    case 'measurereport':
      return 'MeasureReport';
    case 'measurereport.group':
      return 'MeasureReportGroup';
    case 'measurereport.group.population':
      return 'MeasureReportPopulation';
    case 'measurereport.group.stratifier':
      return 'MeasureReportStratifier';
    case 'measurereport.group.stratifier.stratum':
      return 'MeasureReportStratum';
    case 'measurereport.group.stratifier.stratum.component':
      return 'MeasureReportComponent';
    case 'measurereport.group.stratifier.stratum.population':
      return 'MeasureReportPopulation1';
    case 'media':
      return 'Media';
    case 'medication':
      return 'Medication';
    case 'medication.ingredient':
      return 'MedicationIngredient';
    case 'medication.batch':
      return 'MedicationBatch';
    case 'medicationadministration':
      return 'MedicationAdministration';
    case 'medicationadministration.performer':
      return 'MedicationAdministrationPerformer';
    case 'medicationadministration.dosage':
      return 'MedicationAdministrationDosage';
    case 'medicationdispense':
      return 'MedicationDispense';
    case 'medicationdispense.performer':
      return 'MedicationDispensePerformer';
    case 'medicationdispense.substitution':
      return 'MedicationDispenseSubstitution';
    case 'medicationknowledge':
      return 'MedicationKnowledge';
    case 'medicationknowledge.relatedmedicationknowledge':
      return 'MedicationKnowledgeRelatedMedicationKnowledge';
    case 'medicationknowledge.monograph':
      return 'MedicationKnowledgeMonograph';
    case 'medicationknowledge.ingredient':
      return 'MedicationKnowledgeIngredient';
    case 'medicationknowledge.cost':
      return 'MedicationKnowledgeCost';
    case 'medicationknowledge.monitoringprogram':
      return 'MedicationKnowledgeMonitoringProgram';
    case 'medicationknowledge.administrationguidelines':
      return 'MedicationKnowledgeAdministrationGuidelines';
    case 'medicationknowledge.administrationguidelines.dosage':
      return 'MedicationKnowledgeDosage';
    case 'medicationknowledge.administrationguidelines.patientcharacteristics':
      return 'MedicationKnowledgePatientCharacteristics';
    case 'medicationknowledge.medicineclassification':
      return 'MedicationKnowledgeMedicineClassification';
    case 'medicationknowledge.packaging':
      return 'MedicationKnowledgePackaging';
    case 'medicationknowledge.drugcharacteristic':
      return 'MedicationKnowledgeDrugCharacteristic';
    case 'medicationknowledge.regulatory':
      return 'MedicationKnowledgeRegulatory';
    case 'medicationknowledge.regulatory.substitution':
      return 'MedicationKnowledgeSubstitution';
    case 'medicationknowledge.regulatory.schedule':
      return 'MedicationKnowledgeSchedule';
    case 'medicationknowledge.regulatory.maxdispense':
      return 'MedicationKnowledgeMaxDispense';
    case 'medicationknowledge.kinetics':
      return 'MedicationKnowledgeKinetics';
    case 'medicationrequest':
      return 'MedicationRequest';
    case 'medicationrequest.dispenserequest':
      return 'MedicationRequestDispenseRequest';
    case 'medicationrequest.dispenserequest.initialfill':
      return 'MedicationRequestInitialFill';
    case 'medicationrequest.substitution':
      return 'MedicationRequestSubstitution';
    case 'medicationstatement':
      return 'MedicationStatement';
    case 'medicinalproductdefinition':
      return 'MedicinalProductDefinition';
    case 'medicinalproductdefinition.contact':
      return 'MedicinalProductDefinitionContact';
    case 'medicinalproductdefinition.name':
      return 'MedicinalProductDefinitionName';
    case 'medicinalproductdefinition.name.namepart':
      return 'MedicinalProductDefinitionNamePart';
    case 'medicinalproductdefinition.name.countrylanguage':
      return 'MedicinalProductDefinitionCountryLanguage';
    case 'medicinalproductdefinition.crossreference':
      return 'MedicinalProductDefinitionCrossReference';
    case 'medicinalproductdefinition.operation':
      return 'MedicinalProductDefinitionOperation';
    case 'medicinalproductdefinition.characteristic':
      return 'MedicinalProductDefinitionCharacteristic';
    case 'messagedefinition':
      return 'MessageDefinition';
    case 'messagedefinition.focus':
      return 'MessageDefinitionFocus';
    case 'messagedefinition.allowedresponse':
      return 'MessageDefinitionAllowedResponse';
    case 'messageheader':
      return 'MessageHeader';
    case 'messageheader.destination':
      return 'MessageHeaderDestination';
    case 'messageheader.source':
      return 'MessageHeaderSource';
    case 'messageheader.response':
      return 'MessageHeaderResponse';
    case 'molecularsequence':
      return 'MolecularSequence';
    case 'molecularsequence.referenceseq':
      return 'MolecularSequenceReferenceSeq';
    case 'molecularsequence.variant':
      return 'MolecularSequenceVariant';
    case 'molecularsequence.quality':
      return 'MolecularSequenceQuality';
    case 'molecularsequence.quality.roc':
      return 'MolecularSequenceRoc';
    case 'molecularsequence.repository':
      return 'MolecularSequenceRepository';
    case 'molecularsequence.structurevariant':
      return 'MolecularSequenceStructureVariant';
    case 'molecularsequence.structurevariant.outer':
      return 'MolecularSequenceOuter';
    case 'molecularsequence.structurevariant.inner':
      return 'MolecularSequenceInner';
    case 'namingsystem':
      return 'NamingSystem';
    case 'namingsystem.uniqueid':
      return 'NamingSystemUniqueId';
    case 'nutritionorder':
      return 'NutritionOrder';
    case 'nutritionorder.oraldiet':
      return 'NutritionOrderOralDiet';
    case 'nutritionorder.oraldiet.nutrient':
      return 'NutritionOrderNutrient';
    case 'nutritionorder.oraldiet.texture':
      return 'NutritionOrderTexture';
    case 'nutritionorder.supplement':
      return 'NutritionOrderSupplement';
    case 'nutritionorder.enteralformula':
      return 'NutritionOrderEnteralFormula';
    case 'nutritionorder.enteralformula.administration':
      return 'NutritionOrderAdministration';
    case 'nutritionproduct':
      return 'NutritionProduct';
    case 'nutritionproduct.nutrient':
      return 'NutritionProductNutrient';
    case 'nutritionproduct.ingredient':
      return 'NutritionProductIngredient';
    case 'nutritionproduct.productcharacteristic':
      return 'NutritionProductProductCharacteristic';
    case 'nutritionproduct.instance':
      return 'NutritionProductInstance';
    case 'observation':
      return 'Observation';
    case 'observation.referencerange':
      return 'ObservationReferenceRange';
    case 'observation.component':
      return 'ObservationComponent';
    case 'observationdefinition':
      return 'ObservationDefinition';
    case 'observationdefinition.quantitativedetails':
      return 'ObservationDefinitionQuantitativeDetails';
    case 'observationdefinition.qualifiedinterval':
      return 'ObservationDefinitionQualifiedInterval';
    case 'operationdefinition':
      return 'OperationDefinition';
    case 'operationdefinition.parameter':
      return 'OperationDefinitionParameter';
    case 'operationdefinition.parameter.binding':
      return 'OperationDefinitionBinding';
    case 'operationdefinition.parameter.referencedfrom':
      return 'OperationDefinitionReferencedFrom';
    case 'operationdefinition.overload':
      return 'OperationDefinitionOverload';
    case 'operationoutcome':
      return 'OperationOutcome';
    case 'operationoutcome.issue':
      return 'OperationOutcomeIssue';
    case 'organization':
      return 'Organization';
    case 'organization.contact':
      return 'OrganizationContact';
    case 'organizationaffiliation':
      return 'OrganizationAffiliation';
    case 'packagedproductdefinition':
      return 'PackagedProductDefinition';
    case 'packagedproductdefinition.legalstatusofsupply':
      return 'PackagedProductDefinitionLegalStatusOfSupply';
    case 'packagedproductdefinition.package':
      return 'PackagedProductDefinitionPackage';
    case 'packagedproductdefinition.package.shelflifestorage':
      return 'PackagedProductDefinitionShelfLifeStorage';
    case 'packagedproductdefinition.package.property':
      return 'PackagedProductDefinitionProperty';
    case 'packagedproductdefinition.package.containeditem':
      return 'PackagedProductDefinitionContainedItem';
    case 'parameters':
      return 'Parameters';
    case 'parameters.parameter':
      return 'ParametersParameter';
    case 'patient':
      return 'Patient';
    case 'patient.contact':
      return 'PatientContact';
    case 'patient.communication':
      return 'PatientCommunication';
    case 'patient.link':
      return 'PatientLink';
    case 'paymentnotice':
      return 'PaymentNotice';
    case 'paymentreconciliation':
      return 'PaymentReconciliation';
    case 'paymentreconciliation.detail':
      return 'PaymentReconciliationDetail';
    case 'paymentreconciliation.processnote':
      return 'PaymentReconciliationProcessNote';
    case 'person':
      return 'Person';
    case 'person.link':
      return 'PersonLink';
    case 'plandefinition':
      return 'PlanDefinition';
    case 'plandefinition.goal':
      return 'PlanDefinitionGoal';
    case 'plandefinition.goal.target':
      return 'PlanDefinitionTarget';
    case 'plandefinition.action':
      return 'PlanDefinitionAction';
    case 'plandefinition.action.condition':
      return 'PlanDefinitionCondition';
    case 'plandefinition.action.relatedaction':
      return 'PlanDefinitionRelatedAction';
    case 'plandefinition.action.participant':
      return 'PlanDefinitionParticipant';
    case 'plandefinition.action.dynamicvalue':
      return 'PlanDefinitionDynamicValue';
    case 'practitioner':
      return 'Practitioner';
    case 'practitioner.qualification':
      return 'PractitionerQualification';
    case 'practitionerrole':
      return 'PractitionerRole';
    case 'practitionerrole.availabletime':
      return 'PractitionerRoleAvailableTime';
    case 'practitionerrole.notavailable':
      return 'PractitionerRoleNotAvailable';
    case 'procedure':
      return 'Procedure';
    case 'procedure.performer':
      return 'ProcedurePerformer';
    case 'procedure.focaldevice':
      return 'ProcedureFocalDevice';
    case 'provenance':
      return 'Provenance';
    case 'provenance.agent':
      return 'ProvenanceAgent';
    case 'provenance.entity':
      return 'ProvenanceEntity';
    case 'questionnaire':
      return 'Questionnaire';
    case 'questionnaire.item':
      return 'QuestionnaireItem';
    case 'questionnaire.item.enablewhen':
      return 'QuestionnaireEnableWhen';
    case 'questionnaire.item.answeroption':
      return 'QuestionnaireAnswerOption';
    case 'questionnaire.item.initial':
      return 'QuestionnaireInitial';
    case 'questionnaireresponse':
      return 'QuestionnaireResponse';
    case 'questionnaireresponse.item':
      return 'QuestionnaireResponseItem';
    case 'questionnaireresponse.item.answer':
      return 'QuestionnaireResponseAnswer';
    case 'regulatedauthorization':
      return 'RegulatedAuthorization';
    case 'regulatedauthorization.case':
      return 'RegulatedAuthorizationCase';
    case 'relatedperson':
      return 'RelatedPerson';
    case 'relatedperson.communication':
      return 'RelatedPersonCommunication';
    case 'requestgroup':
      return 'RequestGroup';
    case 'requestgroup.action':
      return 'RequestGroupAction';
    case 'requestgroup.action.condition':
      return 'RequestGroupCondition';
    case 'requestgroup.action.relatedaction':
      return 'RequestGroupRelatedAction';
    case 'researchdefinition':
      return 'ResearchDefinition';
    case 'researchelementdefinition':
      return 'ResearchElementDefinition';
    case 'researchelementdefinition.characteristic':
      return 'ResearchElementDefinitionCharacteristic';
    case 'researchstudy':
      return 'ResearchStudy';
    case 'researchstudy.arm':
      return 'ResearchStudyArm';
    case 'researchstudy.objective':
      return 'ResearchStudyObjective';
    case 'researchsubject':
      return 'ResearchSubject';
    case 'riskassessment':
      return 'RiskAssessment';
    case 'riskassessment.prediction':
      return 'RiskAssessmentPrediction';
    case 'schedule':
      return 'Schedule';
    case 'searchparameter':
      return 'SearchParameter';
    case 'searchparameter.component':
      return 'SearchParameterComponent';
    case 'servicerequest':
      return 'ServiceRequest';
    case 'slot':
      return 'Slot';
    case 'specimen':
      return 'Specimen';
    case 'specimen.collection':
      return 'SpecimenCollection';
    case 'specimen.processing':
      return 'SpecimenProcessing';
    case 'specimen.container':
      return 'SpecimenContainer';
    case 'specimendefinition':
      return 'SpecimenDefinition';
    case 'specimendefinition.typetested':
      return 'SpecimenDefinitionTypeTested';
    case 'specimendefinition.typetested.container':
      return 'SpecimenDefinitionContainer';
    case 'specimendefinition.typetested.container.additive':
      return 'SpecimenDefinitionAdditive';
    case 'specimendefinition.typetested.handling':
      return 'SpecimenDefinitionHandling';
    case 'structuredefinition':
      return 'StructureDefinition';
    case 'structuredefinition.mapping':
      return 'StructureDefinitionMapping';
    case 'structuredefinition.context':
      return 'StructureDefinitionContext';
    case 'structuredefinition.snapshot':
      return 'StructureDefinitionSnapshot';
    case 'structuredefinition.differential':
      return 'StructureDefinitionDifferential';
    case 'structuremap':
      return 'StructureMap';
    case 'structuremap.structure':
      return 'StructureMapStructure';
    case 'structuremap.group':
      return 'StructureMapGroup';
    case 'structuremap.group.input':
      return 'StructureMapInput';
    case 'structuremap.group.rule':
      return 'StructureMapRule';
    case 'structuremap.group.rule.source':
      return 'StructureMapSource';
    case 'structuremap.group.rule.target':
      return 'StructureMapTarget';
    case 'structuremap.group.rule.target.parameter':
      return 'StructureMapParameter';
    case 'structuremap.group.rule.dependent':
      return 'StructureMapDependent';
    case 'subscription':
      return 'Subscription';
    case 'subscription.channel':
      return 'SubscriptionChannel';
    case 'subscriptionstatus':
      return 'SubscriptionStatus';
    case 'subscriptionstatus.notificationevent':
      return 'SubscriptionStatusNotificationEvent';
    case 'subscriptiontopic':
      return 'SubscriptionTopic';
    case 'subscriptiontopic.resourcetrigger':
      return 'SubscriptionTopicResourceTrigger';
    case 'subscriptiontopic.resourcetrigger.querycriteria':
      return 'SubscriptionTopicQueryCriteria';
    case 'subscriptiontopic.eventtrigger':
      return 'SubscriptionTopicEventTrigger';
    case 'subscriptiontopic.canfilterby':
      return 'SubscriptionTopicCanFilterBy';
    case 'subscriptiontopic.notificationshape':
      return 'SubscriptionTopicNotificationShape';
    case 'substance':
      return 'Substance';
    case 'substance.instance':
      return 'SubstanceInstance';
    case 'substance.ingredient':
      return 'SubstanceIngredient';
    case 'substancedefinition':
      return 'SubstanceDefinition';
    case 'substancedefinition.moiety':
      return 'SubstanceDefinitionMoiety';
    case 'substancedefinition.property':
      return 'SubstanceDefinitionProperty';
    case 'substancedefinition.molecularweight':
      return 'SubstanceDefinitionMolecularWeight';
    case 'substancedefinition.structure':
      return 'SubstanceDefinitionStructure';
    case 'substancedefinition.structure.representation':
      return 'SubstanceDefinitionRepresentation';
    case 'substancedefinition.code':
      return 'SubstanceDefinitionCode';
    case 'substancedefinition.name':
      return 'SubstanceDefinitionName';
    case 'substancedefinition.name.official':
      return 'SubstanceDefinitionOfficial';
    case 'substancedefinition.relationship':
      return 'SubstanceDefinitionRelationship';
    case 'substancedefinition.sourcematerial':
      return 'SubstanceDefinitionSourceMaterial';
    case 'supplydelivery':
      return 'SupplyDelivery';
    case 'supplydelivery.supplieditem':
      return 'SupplyDeliverySuppliedItem';
    case 'supplyrequest':
      return 'SupplyRequest';
    case 'supplyrequest.parameter':
      return 'SupplyRequestParameter';
    case 'task':
      return 'Task';
    case 'task.restriction':
      return 'TaskRestriction';
    case 'task.input':
      return 'TaskInput';
    case 'task.output':
      return 'TaskOutput';
    case 'terminologycapabilities':
      return 'TerminologyCapabilities';
    case 'terminologycapabilities.software':
      return 'TerminologyCapabilitiesSoftware';
    case 'terminologycapabilities.implementation':
      return 'TerminologyCapabilitiesImplementation';
    case 'terminologycapabilities.codesystem':
      return 'TerminologyCapabilitiesCodeSystem';
    case 'terminologycapabilities.codesystem.version':
      return 'TerminologyCapabilitiesVersion';
    case 'terminologycapabilities.codesystem.version.filter':
      return 'TerminologyCapabilitiesFilter';
    case 'terminologycapabilities.expansion':
      return 'TerminologyCapabilitiesExpansion';
    case 'terminologycapabilities.expansion.parameter':
      return 'TerminologyCapabilitiesParameter';
    case 'terminologycapabilities.validatecode':
      return 'TerminologyCapabilitiesValidateCode';
    case 'terminologycapabilities.translation':
      return 'TerminologyCapabilitiesTranslation';
    case 'terminologycapabilities.closure':
      return 'TerminologyCapabilitiesClosure';
    case 'testreport':
      return 'TestReport';
    case 'testreport.participant':
      return 'TestReportParticipant';
    case 'testreport.setup':
      return 'TestReportSetup';
    case 'testreport.setup.action':
      return 'TestReportAction';
    case 'testreport.setup.action.operation':
      return 'TestReportOperation';
    case 'testreport.setup.action.assert':
      return 'TestReportAssert';
    case 'testreport.test':
      return 'TestReportTest';
    case 'testreport.test.action':
      return 'TestReportAction1';
    case 'testreport.teardown':
      return 'TestReportTeardown';
    case 'testreport.teardown.action':
      return 'TestReportAction2';
    case 'testscript':
      return 'TestScript';
    case 'testscript.origin':
      return 'TestScriptOrigin';
    case 'testscript.destination':
      return 'TestScriptDestination';
    case 'testscript.metadata':
      return 'TestScriptMetadata';
    case 'testscript.metadata.link':
      return 'TestScriptLink';
    case 'testscript.metadata.capability':
      return 'TestScriptCapability';
    case 'testscript.fixture':
      return 'TestScriptFixture';
    case 'testscript.variable':
      return 'TestScriptVariable';
    case 'testscript.setup':
      return 'TestScriptSetup';
    case 'testscript.setup.action':
      return 'TestScriptAction';
    case 'testscript.setup.action.operation':
      return 'TestScriptOperation';
    case 'testscript.setup.action.operation.requestheader':
      return 'TestScriptRequestHeader';
    case 'testscript.setup.action.assert':
      return 'TestScriptAssert';
    case 'testscript.test':
      return 'TestScriptTest';
    case 'testscript.test.action':
      return 'TestScriptAction1';
    case 'testscript.teardown':
      return 'TestScriptTeardown';
    case 'testscript.teardown.action':
      return 'TestScriptAction2';
    case 'valueset':
      return 'ValueSet';
    case 'valueset.compose':
      return 'ValueSetCompose';
    case 'valueset.compose.include':
      return 'ValueSetInclude';
    case 'valueset.compose.include.concept':
      return 'ValueSetConcept';
    case 'valueset.compose.include.concept.designation':
      return 'ValueSetDesignation';
    case 'valueset.compose.include.filter':
      return 'ValueSetFilter';
    case 'valueset.expansion':
      return 'ValueSetExpansion';
    case 'valueset.expansion.parameter':
      return 'ValueSetParameter';
    case 'valueset.expansion.contains':
      return 'ValueSetContains';
    case 'verificationresult':
      return 'VerificationResult';
    case 'verificationresult.primarysource':
      return 'VerificationResultPrimarySource';
    case 'verificationresult.attestation':
      return 'VerificationResultAttestation';
    case 'verificationresult.validator':
      return 'VerificationResultValidator';
    case 'visionprescription':
      return 'VisionPrescription';
    case 'visionprescription.lensspecification':
      return 'VisionPrescriptionLensSpecification';
    case 'visionprescription.lensspecification.prism':
      return 'VisionPrescriptionPrism';
    case 'address':
      return 'Address';
    case 'age':
      return 'Age';
    case 'annotation':
      return 'Annotation';
    case 'attachment':
      return 'Attachment';
    case 'codeableconcept':
      return 'CodeableConcept';
    case 'codeablereference':
      return 'CodeableReference';
    case 'coding':
      return 'Coding';
    case 'contactdetail':
      return 'ContactDetail';
    case 'contactpoint':
      return 'ContactPoint';
    case 'contributor':
      return 'Contributor';
    case 'count':
      return 'Count';
    case 'datarequirement':
      return 'DataRequirement';
    case 'datarequirement.codefilter':
      return 'DataRequirementCodeFilter';
    case 'datarequirement.datefilter':
      return 'DataRequirementDateFilter';
    case 'datarequirement.sort':
      return 'DataRequirementSort';
    case 'distance':
      return 'Distance';
    case 'dosage':
      return 'Dosage';
    case 'dosage.doseandrate':
      return 'DosageDoseAndRate';
    case 'duration':
      return 'FhirDuration';
    case 'elementdefinition':
      return 'ElementDefinition';
    case 'elementdefinition.slicing':
      return 'ElementDefinitionSlicing';
    case 'elementdefinition.slicing.discriminator':
      return 'ElementDefinitionDiscriminator';
    case 'elementdefinition.base':
      return 'ElementDefinitionBase';
    case 'elementdefinition.type':
      return 'ElementDefinitionType';
    case 'elementdefinition.example':
      return 'ElementDefinitionExample';
    case 'elementdefinition.constraint':
      return 'ElementDefinitionConstraint';
    case 'elementdefinition.binding':
      return 'ElementDefinitionBinding';
    case 'elementdefinition.mapping':
      return 'ElementDefinitionMapping';
    case 'expression':
      return 'FhirExpression';
    case 'extension':
      return 'FhirExtension';
    case 'humanname':
      return 'HumanName';
    case 'identifier':
      return 'Identifier';
    case 'marketingstatus':
      return 'MarketingStatus';
    case 'meta':
      return 'FhirMeta';
    case 'money':
      return 'Money';
    case 'narrative':
      return 'Narrative';
    case 'parameterdefinition':
      return 'ParameterDefinition';
    case 'period':
      return 'Period';
    case 'population':
      return 'Population';
    case 'prodcharacteristic':
      return 'ProdCharacteristic';
    case 'productshelflife':
      return 'ProductShelfLife';
    case 'quantity':
      return 'Quantity';
    case 'range':
      return 'Range';
    case 'ratio':
      return 'Ratio';
    case 'ratiorange':
      return 'RatioRange';
    case 'reference':
      return 'Reference';
    case 'relatedartifact':
      return 'RelatedArtifact';
    case 'sampleddata':
      return 'SampledData';
    case 'signature':
      return 'Signature';
    case 'timing':
      return 'Timing';
    case 'timing.repeat':
      return 'TimingRepeat';
    case 'triggerdefinition':
      return 'TriggerDefinition';
    case 'usagecontext':
      return 'UsageContext';
    default:
      return null;
  }
}
