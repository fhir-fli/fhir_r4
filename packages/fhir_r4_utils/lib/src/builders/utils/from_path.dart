// ignore_for_file: lines_longer_than_80_chars

import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// This function accepts a String path and a dynamic value
/// and attempts to create a FhirType from that value
FhirBaseBuilder? fromPath(String? path, dynamic value) {
  if (path == null || value == null) return null;
  final lowercasePath = path.toLowerCase();
  switch (lowercasePath) {
    case 'account':
      return value is! Map<String, dynamic>
          ? null
          : AccountBuilder.fromJson(value);
    case 'account.coverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverageBuilder.fromJson(value);
    case 'account.guarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantorBuilder.fromJson(value);
    case 'activitydefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionBuilder.fromJson(value);
    case 'activitydefinition.participant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipantBuilder.fromJson(value);
    case 'activitydefinition.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValueBuilder.fromJson(value);
    case 'administrableproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionBuilder.fromJson(value);
    case 'administrableproductdefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionPropertyBuilder.fromJson(value);
    case 'administrableproductdefinition.routeofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministrationBuilder.fromJson(
              value);
    case 'administrableproductdefinition.routeofadministration.targetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(value);
    case 'administrableproductdefinition.routeofadministration.targetspecies.withdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
              value);
    case 'adverseevent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventBuilder.fromJson(value);
    case 'adverseevent.suspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntityBuilder.fromJson(value);
    case 'adverseevent.suspectentity.causality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausalityBuilder.fromJson(value);
    case 'allergyintolerance':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceBuilder.fromJson(value);
    case 'allergyintolerance.reaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReactionBuilder.fromJson(value);
    case 'appointment':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentBuilder.fromJson(value);
    case 'appointment.participant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipantBuilder.fromJson(value);
    case 'appointmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentResponseBuilder.fromJson(value);
    case 'auditevent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventBuilder.fromJson(value);
    case 'auditevent.agent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgentBuilder.fromJson(value);
    case 'auditevent.agent.network':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventNetworkBuilder.fromJson(value);
    case 'auditevent.source':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSourceBuilder.fromJson(value);
    case 'auditevent.entity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntityBuilder.fromJson(value);
    case 'auditevent.entity.detail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetailBuilder.fromJson(value);
    case 'basic':
      return value is! Map<String, dynamic>
          ? null
          : BasicBuilder.fromJson(value);
    case 'binary':
      return value is! Map<String, dynamic>
          ? null
          : BinaryBuilder.fromJson(value);
    case 'biologicallyderivedproduct':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductBuilder.fromJson(value);
    case 'biologicallyderivedproduct.collection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollectionBuilder.fromJson(value);
    case 'biologicallyderivedproduct.processing':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProcessingBuilder.fromJson(value);
    case 'biologicallyderivedproduct.manipulation':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductManipulationBuilder.fromJson(value);
    case 'biologicallyderivedproduct.storage':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductStorageBuilder.fromJson(value);
    case 'bodystructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureBuilder.fromJson(value);
    case 'bundle':
      return value is! Map<String, dynamic>
          ? null
          : BundleBuilder.fromJson(value);
    case 'bundle.link':
      return value is! Map<String, dynamic>
          ? null
          : BundleLinkBuilder.fromJson(value);
    case 'bundle.entry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntryBuilder.fromJson(value);
    case 'bundle.entry.search':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearchBuilder.fromJson(value);
    case 'bundle.entry.request':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequestBuilder.fromJson(value);
    case 'bundle.entry.response':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponseBuilder.fromJson(value);
    case 'capabilitystatement':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementBuilder.fromJson(value);
    case 'capabilitystatement.software':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftwareBuilder.fromJson(value);
    case 'capabilitystatement.implementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementationBuilder.fromJson(value);
    case 'capabilitystatement.rest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRestBuilder.fromJson(value);
    case 'capabilitystatement.rest.security':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurityBuilder.fromJson(value);
    case 'capabilitystatement.rest.resource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResourceBuilder.fromJson(value);
    case 'capabilitystatement.rest.resource.interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteractionBuilder.fromJson(value);
    case 'capabilitystatement.rest.resource.searchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParamBuilder.fromJson(value);
    case 'capabilitystatement.rest.resource.operation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperationBuilder.fromJson(value);
    case 'capabilitystatement.rest.interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1Builder.fromJson(value);
    case 'capabilitystatement.messaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessagingBuilder.fromJson(value);
    case 'capabilitystatement.messaging.endpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpointBuilder.fromJson(value);
    case 'capabilitystatement.messaging.supportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessageBuilder.fromJson(value);
    case 'capabilitystatement.document':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocumentBuilder.fromJson(value);
    case 'careplan':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanBuilder.fromJson(value);
    case 'careplan.activity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivityBuilder.fromJson(value);
    case 'careplan.activity.detail':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanDetailBuilder.fromJson(value);
    case 'careteam':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamBuilder.fromJson(value);
    case 'careteam.participant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipantBuilder.fromJson(value);
    case 'catalogentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntryBuilder.fromJson(value);
    case 'catalogentry.relatedentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntryRelatedEntryBuilder.fromJson(value);
    case 'chargeitem':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemBuilder.fromJson(value);
    case 'chargeitem.performer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformerBuilder.fromJson(value);
    case 'chargeitemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionBuilder.fromJson(value);
    case 'chargeitemdefinition.applicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicabilityBuilder.fromJson(value);
    case 'chargeitemdefinition.propertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroupBuilder.fromJson(value);
    case 'chargeitemdefinition.propertygroup.pricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPriceComponentBuilder.fromJson(value);
    case 'citation':
      return value is! Map<String, dynamic>
          ? null
          : CitationBuilder.fromJson(value);
    case 'citation.summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummaryBuilder.fromJson(value);
    case 'citation.classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassificationBuilder.fromJson(value);
    case 'citation.statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDateBuilder.fromJson(value);
    case 'citation.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesToBuilder.fromJson(value);
    case 'citation.citedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifactBuilder.fromJson(value);
    case 'citation.citedartifact.version':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersionBuilder.fromJson(value);
    case 'citation.citedartifact.statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1Builder.fromJson(value);
    case 'citation.citedartifact.title':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitleBuilder.fromJson(value);
    case 'citation.citedartifact.abstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstractBuilder.fromJson(value);
    case 'citation.citedartifact.part':
      return value is! Map<String, dynamic>
          ? null
          : CitationPartBuilder.fromJson(value);
    case 'citation.citedartifact.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo1Builder.fromJson(value);
    case 'citation.citedartifact.publicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationFormBuilder.fromJson(value);
    case 'citation.citedartifact.publicationform.publishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedInBuilder.fromJson(value);
    case 'citation.citedartifact.publicationform.periodicrelease':
      return value is! Map<String, dynamic>
          ? null
          : CitationPeriodicReleaseBuilder.fromJson(value);
    case 'citation.citedartifact.publicationform.periodicrelease.dateofpublication':
      return value is! Map<String, dynamic>
          ? null
          : CitationDateOfPublicationBuilder.fromJson(value);
    case 'citation.citedartifact.weblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocationBuilder.fromJson(value);
    case 'citation.citedartifact.classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1Builder.fromJson(value);
    case 'citation.citedartifact.classification.whoclassified':
      return value is! Map<String, dynamic>
          ? null
          : CitationWhoClassifiedBuilder.fromJson(value);
    case 'citation.citedartifact.contributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorshipBuilder.fromJson(value);
    case 'citation.citedartifact.contributorship.entry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntryBuilder.fromJson(value);
    case 'citation.citedartifact.contributorship.entry.affiliationinfo':
      return value is! Map<String, dynamic>
          ? null
          : CitationAffiliationInfoBuilder.fromJson(value);
    case 'citation.citedartifact.contributorship.entry.contributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstanceBuilder.fromJson(value);
    case 'citation.citedartifact.contributorship.summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1Builder.fromJson(value);
    case 'claim':
      return value is! Map<String, dynamic>
          ? null
          : ClaimBuilder.fromJson(value);
    case 'claim.related':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelatedBuilder.fromJson(value);
    case 'claim.payee':
      return value is! Map<String, dynamic>
          ? null
          : ClaimPayeeBuilder.fromJson(value);
    case 'claim.careteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeamBuilder.fromJson(value);
    case 'claim.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfoBuilder.fromJson(value);
    case 'claim.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosisBuilder.fromJson(value);
    case 'claim.procedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedureBuilder.fromJson(value);
    case 'claim.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsuranceBuilder.fromJson(value);
    case 'claim.accident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccidentBuilder.fromJson(value);
    case 'claim.item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimItemBuilder.fromJson(value);
    case 'claim.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetailBuilder.fromJson(value);
    case 'claim.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetailBuilder.fromJson(value);
    case 'claimresponse':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseBuilder.fromJson(value);
    case 'claimresponse.item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItemBuilder.fromJson(value);
    case 'claimresponse.item.adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudicationBuilder.fromJson(value);
    case 'claimresponse.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetailBuilder.fromJson(value);
    case 'claimresponse.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetailBuilder.fromJson(value);
    case 'claimresponse.additem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItemBuilder.fromJson(value);
    case 'claimresponse.additem.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1Builder.fromJson(value);
    case 'claimresponse.additem.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1Builder.fromJson(value);
    case 'claimresponse.total':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotalBuilder.fromJson(value);
    case 'claimresponse.payment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePaymentBuilder.fromJson(value);
    case 'claimresponse.processnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNoteBuilder.fromJson(value);
    case 'claimresponse.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsuranceBuilder.fromJson(value);
    case 'claimresponse.error':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseErrorBuilder.fromJson(value);
    case 'clinicalimpression':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionBuilder.fromJson(value);
    case 'clinicalimpression.investigation':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionInvestigationBuilder.fromJson(value);
    case 'clinicalimpression.finding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFindingBuilder.fromJson(value);
    case 'clinicalusedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionBuilder.fromJson(value);
    case 'clinicalusedefinition.contraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindicationBuilder.fromJson(value);
    case 'clinicalusedefinition.contraindication.othertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapyBuilder.fromJson(value);
    case 'clinicalusedefinition.indication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndicationBuilder.fromJson(value);
    case 'clinicalusedefinition.interaction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractionBuilder.fromJson(value);
    case 'clinicalusedefinition.interaction.interactant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractantBuilder.fromJson(value);
    case 'clinicalusedefinition.undesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(value);
    case 'clinicalusedefinition.warning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarningBuilder.fromJson(value);
    case 'codesystem':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemBuilder.fromJson(value);
    case 'codesystem.filter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilterBuilder.fromJson(value);
    case 'codesystem.property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemPropertyBuilder.fromJson(value);
    case 'codesystem.concept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConceptBuilder.fromJson(value);
    case 'codesystem.concept.designation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignationBuilder.fromJson(value);
    case 'codesystem.concept.property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1Builder.fromJson(value);
    case 'communication':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationBuilder.fromJson(value);
    case 'communication.payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayloadBuilder.fromJson(value);
    case 'communicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestBuilder.fromJson(value);
    case 'communicationrequest.payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayloadBuilder.fromJson(value);
    case 'compartmentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionBuilder.fromJson(value);
    case 'compartmentdefinition.resource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResourceBuilder.fromJson(value);
    case 'composition':
      return value is! Map<String, dynamic>
          ? null
          : CompositionBuilder.fromJson(value);
    case 'composition.attester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttesterBuilder.fromJson(value);
    case 'composition.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CompositionRelatesToBuilder.fromJson(value);
    case 'composition.event':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEventBuilder.fromJson(value);
    case 'composition.section':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSectionBuilder.fromJson(value);
    case 'conceptmap':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapBuilder.fromJson(value);
    case 'conceptmap.group':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroupBuilder.fromJson(value);
    case 'conceptmap.group.element':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElementBuilder.fromJson(value);
    case 'conceptmap.group.element.target':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTargetBuilder.fromJson(value);
    case 'conceptmap.group.element.target.dependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOnBuilder.fromJson(value);
    case 'conceptmap.group.unmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmappedBuilder.fromJson(value);
    case 'condition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionBuilder.fromJson(value);
    case 'condition.stage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStageBuilder.fromJson(value);
    case 'condition.evidence':
      return value is! Map<String, dynamic>
          ? null
          : ConditionEvidenceBuilder.fromJson(value);
    case 'consent':
      return value is! Map<String, dynamic>
          ? null
          : ConsentBuilder.fromJson(value);
    case 'consent.policy':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicyBuilder.fromJson(value);
    case 'consent.verification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerificationBuilder.fromJson(value);
    case 'consent.provision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvisionBuilder.fromJson(value);
    case 'consent.provision.actor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActorBuilder.fromJson(value);
    case 'consent.provision.data':
      return value is! Map<String, dynamic>
          ? null
          : ConsentDataBuilder.fromJson(value);
    case 'contract':
      return value is! Map<String, dynamic>
          ? null
          : ContractBuilder.fromJson(value);
    case 'contract.contentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinitionBuilder.fromJson(value);
    case 'contract.term':
      return value is! Map<String, dynamic>
          ? null
          : ContractTermBuilder.fromJson(value);
    case 'contract.term.securitylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabelBuilder.fromJson(value);
    case 'contract.term.offer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOfferBuilder.fromJson(value);
    case 'contract.term.offer.party':
      return value is! Map<String, dynamic>
          ? null
          : ContractPartyBuilder.fromJson(value);
    case 'contract.term.offer.answer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswerBuilder.fromJson(value);
    case 'contract.term.asset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAssetBuilder.fromJson(value);
    case 'contract.term.asset.context':
      return value is! Map<String, dynamic>
          ? null
          : ContractContextBuilder.fromJson(value);
    case 'contract.term.asset.valueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItemBuilder.fromJson(value);
    case 'contract.term.action':
      return value is! Map<String, dynamic>
          ? null
          : ContractActionBuilder.fromJson(value);
    case 'contract.term.action.subject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubjectBuilder.fromJson(value);
    case 'contract.signer':
      return value is! Map<String, dynamic>
          ? null
          : ContractSignerBuilder.fromJson(value);
    case 'contract.friendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendlyBuilder.fromJson(value);
    case 'contract.legal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegalBuilder.fromJson(value);
    case 'contract.rule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRuleBuilder.fromJson(value);
    case 'coverage':
      return value is! Map<String, dynamic>
          ? null
          : CoverageBuilder.fromJson(value);
    case 'coverage.class':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClassBuilder.fromJson(value);
    case 'coverage.costtobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiaryBuilder.fromJson(value);
    case 'coverage.costtobeneficiary.exception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageExceptionBuilder.fromJson(value);
    case 'coverageeligibilityrequest':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestBuilder.fromJson(value);
    case 'coverageeligibilityrequest.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfoBuilder.fromJson(value);
    case 'coverageeligibilityrequest.insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsuranceBuilder.fromJson(value);
    case 'coverageeligibilityrequest.item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItemBuilder.fromJson(value);
    case 'coverageeligibilityrequest.item.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosisBuilder.fromJson(value);
    case 'coverageeligibilityresponse':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBuilder.fromJson(value);
    case 'coverageeligibilityresponse.insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsuranceBuilder.fromJson(value);
    case 'coverageeligibilityresponse.insurance.item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItemBuilder.fromJson(value);
    case 'coverageeligibilityresponse.insurance.item.benefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefitBuilder.fromJson(value);
    case 'coverageeligibilityresponse.error':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseErrorBuilder.fromJson(value);
    case 'detectedissue':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueBuilder.fromJson(value);
    case 'detectedissue.evidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidenceBuilder.fromJson(value);
    case 'detectedissue.mitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigationBuilder.fromJson(value);
    case 'device':
      return value is! Map<String, dynamic>
          ? null
          : DeviceBuilder.fromJson(value);
    case 'device.udicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrierBuilder.fromJson(value);
    case 'device.devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDeviceNameBuilder.fromJson(value);
    case 'device.specialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceSpecializationBuilder.fromJson(value);
    case 'device.version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersionBuilder.fromJson(value);
    case 'device.property':
      return value is! Map<String, dynamic>
          ? null
          : DevicePropertyBuilder.fromJson(value);
    case 'devicedefinition':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionBuilder.fromJson(value);
    case 'devicedefinition.udideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(value);
    case 'devicedefinition.devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceNameBuilder.fromJson(value);
    case 'devicedefinition.specialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionSpecializationBuilder.fromJson(value);
    case 'devicedefinition.capability':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCapabilityBuilder.fromJson(value);
    case 'devicedefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionPropertyBuilder.fromJson(value);
    case 'devicedefinition.material':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterialBuilder.fromJson(value);
    case 'devicemetric':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricBuilder.fromJson(value);
    case 'devicemetric.calibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibrationBuilder.fromJson(value);
    case 'devicerequest':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestBuilder.fromJson(value);
    case 'devicerequest.parameter':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestParameterBuilder.fromJson(value);
    case 'deviceusestatement':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUseStatementBuilder.fromJson(value);
    case 'diagnosticreport':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportBuilder.fromJson(value);
    case 'diagnosticreport.media':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMediaBuilder.fromJson(value);
    case 'documentmanifest':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifestBuilder.fromJson(value);
    case 'documentmanifest.related':
      return value is! Map<String, dynamic>
          ? null
          : DocumentManifestRelatedBuilder.fromJson(value);
    case 'documentreference':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceBuilder.fromJson(value);
    case 'documentreference.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesToBuilder.fromJson(value);
    case 'documentreference.content':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContentBuilder.fromJson(value);
    case 'documentreference.context':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContextBuilder.fromJson(value);
    case 'encounter':
      return value is! Map<String, dynamic>
          ? null
          : EncounterBuilder.fromJson(value);
    case 'encounter.statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterStatusHistoryBuilder.fromJson(value);
    case 'encounter.classhistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterClassHistoryBuilder.fromJson(value);
    case 'encounter.participant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipantBuilder.fromJson(value);
    case 'encounter.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosisBuilder.fromJson(value);
    case 'encounter.hospitalization':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHospitalizationBuilder.fromJson(value);
    case 'encounter.location':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocationBuilder.fromJson(value);
    case 'endpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpointBuilder.fromJson(value);
    case 'enrollmentrequest':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentRequestBuilder.fromJson(value);
    case 'enrollmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentResponseBuilder.fromJson(value);
    case 'episodeofcare':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareBuilder.fromJson(value);
    case 'episodeofcare.statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistoryBuilder.fromJson(value);
    case 'episodeofcare.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosisBuilder.fromJson(value);
    case 'eventdefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinitionBuilder.fromJson(value);
    case 'evidence':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceBuilder.fromJson(value);
    case 'evidence.variabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionBuilder.fromJson(value);
    case 'evidence.statistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatisticBuilder.fromJson(value);
    case 'evidence.statistic.samplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSizeBuilder.fromJson(value);
    case 'evidence.statistic.attributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimateBuilder.fromJson(value);
    case 'evidence.statistic.modelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicBuilder.fromJson(value);
    case 'evidence.statistic.modelcharacteristic.variable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariableBuilder.fromJson(value);
    case 'evidence.certainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertaintyBuilder.fromJson(value);
    case 'evidencereport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportBuilder.fromJson(value);
    case 'evidencereport.subject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubjectBuilder.fromJson(value);
    case 'evidencereport.subject.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristicBuilder.fromJson(value);
    case 'evidencereport.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesToBuilder.fromJson(value);
    case 'evidencereport.section':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSectionBuilder.fromJson(value);
    case 'evidencevariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableBuilder.fromJson(value);
    case 'evidencevariable.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristicBuilder.fromJson(value);
    case 'evidencevariable.characteristic.timefromstart':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromStartBuilder.fromJson(value);
    case 'evidencevariable.category':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategoryBuilder.fromJson(value);
    case 'examplescenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioBuilder.fromJson(value);
    case 'examplescenario.actor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActorBuilder.fromJson(value);
    case 'examplescenario.instance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstanceBuilder.fromJson(value);
    case 'examplescenario.instance.version':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersionBuilder.fromJson(value);
    case 'examplescenario.instance.containedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstanceBuilder.fromJson(value);
    case 'examplescenario.process':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcessBuilder.fromJson(value);
    case 'examplescenario.process.step':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStepBuilder.fromJson(value);
    case 'examplescenario.process.step.operation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperationBuilder.fromJson(value);
    case 'examplescenario.process.step.alternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternativeBuilder.fromJson(value);
    case 'explanationofbenefit':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBuilder.fromJson(value);
    case 'explanationofbenefit.related':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelatedBuilder.fromJson(value);
    case 'explanationofbenefit.payee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayeeBuilder.fromJson(value);
    case 'explanationofbenefit.careteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeamBuilder.fromJson(value);
    case 'explanationofbenefit.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfoBuilder.fromJson(value);
    case 'explanationofbenefit.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosisBuilder.fromJson(value);
    case 'explanationofbenefit.procedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedureBuilder.fromJson(value);
    case 'explanationofbenefit.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsuranceBuilder.fromJson(value);
    case 'explanationofbenefit.accident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccidentBuilder.fromJson(value);
    case 'explanationofbenefit.item':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItemBuilder.fromJson(value);
    case 'explanationofbenefit.item.adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudicationBuilder.fromJson(value);
    case 'explanationofbenefit.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetailBuilder.fromJson(value);
    case 'explanationofbenefit.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetailBuilder.fromJson(value);
    case 'explanationofbenefit.additem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItemBuilder.fromJson(value);
    case 'explanationofbenefit.additem.detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1Builder.fromJson(value);
    case 'explanationofbenefit.additem.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1Builder.fromJson(value);
    case 'explanationofbenefit.total':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotalBuilder.fromJson(value);
    case 'explanationofbenefit.payment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPaymentBuilder.fromJson(value);
    case 'explanationofbenefit.processnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNoteBuilder.fromJson(value);
    case 'explanationofbenefit.benefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalanceBuilder.fromJson(value);
    case 'explanationofbenefit.benefitbalance.financial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancialBuilder.fromJson(value);
    case 'familymemberhistory':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryBuilder.fromJson(value);
    case 'familymemberhistory.condition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryConditionBuilder.fromJson(value);
    case 'flag':
      return value is! Map<String, dynamic>
          ? null
          : FlagBuilder.fromJson(value);
    case 'goal':
      return value is! Map<String, dynamic>
          ? null
          : GoalBuilder.fromJson(value);
    case 'goal.target':
      return value is! Map<String, dynamic>
          ? null
          : GoalTargetBuilder.fromJson(value);
    case 'graphdefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionBuilder.fromJson(value);
    case 'graphdefinition.link':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLinkBuilder.fromJson(value);
    case 'graphdefinition.link.target':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionTargetBuilder.fromJson(value);
    case 'graphdefinition.link.target.compartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartmentBuilder.fromJson(value);
    case 'group':
      return value is! Map<String, dynamic>
          ? null
          : FhirGroupBuilder.fromJson(value);
    case 'group.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristicBuilder.fromJson(value);
    case 'group.member':
      return value is! Map<String, dynamic>
          ? null
          : GroupMemberBuilder.fromJson(value);
    case 'guidanceresponse':
      return value is! Map<String, dynamic>
          ? null
          : GuidanceResponseBuilder.fromJson(value);
    case 'healthcareservice':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceBuilder.fromJson(value);
    case 'healthcareservice.eligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibilityBuilder.fromJson(value);
    case 'healthcareservice.availabletime':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceAvailableTimeBuilder.fromJson(value);
    case 'healthcareservice.notavailable':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceNotAvailableBuilder.fromJson(value);
    case 'imagingstudy':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyBuilder.fromJson(value);
    case 'imagingstudy.series':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeriesBuilder.fromJson(value);
    case 'imagingstudy.series.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformerBuilder.fromJson(value);
    case 'imagingstudy.series.instance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstanceBuilder.fromJson(value);
    case 'immunization':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationBuilder.fromJson(value);
    case 'immunization.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformerBuilder.fromJson(value);
    case 'immunization.education':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEducationBuilder.fromJson(value);
    case 'immunization.reaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReactionBuilder.fromJson(value);
    case 'immunization.protocolapplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolAppliedBuilder.fromJson(value);
    case 'immunizationevaluation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEvaluationBuilder.fromJson(value);
    case 'immunizationrecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationBuilder.fromJson(value);
    case 'immunizationrecommendation.recommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendationBuilder.fromJson(value);
    case 'immunizationrecommendation.recommendation.datecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterionBuilder.fromJson(value);
    case 'implementationguide':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideBuilder.fromJson(value);
    case 'implementationguide.dependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOnBuilder.fromJson(value);
    case 'implementationguide.global':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobalBuilder.fromJson(value);
    case 'implementationguide.definition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinitionBuilder.fromJson(value);
    case 'implementationguide.definition.grouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGroupingBuilder.fromJson(value);
    case 'implementationguide.definition.resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResourceBuilder.fromJson(value);
    case 'implementationguide.definition.page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePageBuilder.fromJson(value);
    case 'implementationguide.definition.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameterBuilder.fromJson(value);
    case 'implementationguide.definition.template':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplateBuilder.fromJson(value);
    case 'implementationguide.manifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifestBuilder.fromJson(value);
    case 'implementationguide.manifest.resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1Builder.fromJson(value);
    case 'implementationguide.manifest.page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1Builder.fromJson(value);
    case 'ingredient':
      return value is! Map<String, dynamic>
          ? null
          : IngredientBuilder.fromJson(value);
    case 'ingredient.manufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturerBuilder.fromJson(value);
    case 'ingredient.substance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstanceBuilder.fromJson(value);
    case 'ingredient.substance.strength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrengthBuilder.fromJson(value);
    case 'ingredient.substance.strength.referencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrengthBuilder.fromJson(value);
    case 'insuranceplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBuilder.fromJson(value);
    case 'insuranceplan.contact':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanContactBuilder.fromJson(value);
    case 'insuranceplan.coverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverageBuilder.fromJson(value);
    case 'insuranceplan.coverage.benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefitBuilder.fromJson(value);
    case 'insuranceplan.coverage.benefit.limit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimitBuilder.fromJson(value);
    case 'insuranceplan.plan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlanBuilder.fromJson(value);
    case 'insuranceplan.plan.generalcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCostBuilder.fromJson(value);
    case 'insuranceplan.plan.specificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCostBuilder.fromJson(value);
    case 'insuranceplan.plan.specificcost.benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1Builder.fromJson(value);
    case 'insuranceplan.plan.specificcost.benefit.cost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCostBuilder.fromJson(value);
    case 'invoice':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceBuilder.fromJson(value);
    case 'invoice.participant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipantBuilder.fromJson(value);
    case 'invoice.lineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItemBuilder.fromJson(value);
    case 'invoice.lineitem.pricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : InvoicePriceComponentBuilder.fromJson(value);
    case 'library':
      return value is! Map<String, dynamic>
          ? null
          : LibraryBuilder.fromJson(value);
    case 'linkage':
      return value is! Map<String, dynamic>
          ? null
          : LinkageBuilder.fromJson(value);
    case 'linkage.item':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItemBuilder.fromJson(value);
    case 'list':
      return value is! Map<String, dynamic>
          ? null
          : FhirListBuilder.fromJson(value);
    case 'list.entry':
      return value is! Map<String, dynamic>
          ? null
          : ListEntryBuilder.fromJson(value);
    case 'location':
      return value is! Map<String, dynamic>
          ? null
          : LocationBuilder.fromJson(value);
    case 'location.position':
      return value is! Map<String, dynamic>
          ? null
          : LocationPositionBuilder.fromJson(value);
    case 'location.hoursofoperation':
      return value is! Map<String, dynamic>
          ? null
          : LocationHoursOfOperationBuilder.fromJson(value);
    case 'manufactureditemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionBuilder.fromJson(value);
    case 'manufactureditemdefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionPropertyBuilder.fromJson(value);
    case 'measure':
      return value is! Map<String, dynamic>
          ? null
          : MeasureBuilder.fromJson(value);
    case 'measure.group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroupBuilder.fromJson(value);
    case 'measure.group.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulationBuilder.fromJson(value);
    case 'measure.group.stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifierBuilder.fromJson(value);
    case 'measure.group.stratifier.component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponentBuilder.fromJson(value);
    case 'measure.supplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalDataBuilder.fromJson(value);
    case 'measurereport':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportBuilder.fromJson(value);
    case 'measurereport.group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroupBuilder.fromJson(value);
    case 'measurereport.group.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulationBuilder.fromJson(value);
    case 'measurereport.group.stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifierBuilder.fromJson(value);
    case 'measurereport.group.stratifier.stratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratumBuilder.fromJson(value);
    case 'measurereport.group.stratifier.stratum.component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponentBuilder.fromJson(value);
    case 'measurereport.group.stratifier.stratum.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1Builder.fromJson(value);
    case 'media':
      return value is! Map<String, dynamic>
          ? null
          : MediaBuilder.fromJson(value);
    case 'medication':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBuilder.fromJson(value);
    case 'medication.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredientBuilder.fromJson(value);
    case 'medication.batch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatchBuilder.fromJson(value);
    case 'medicationadministration':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationBuilder.fromJson(value);
    case 'medicationadministration.performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformerBuilder.fromJson(value);
    case 'medicationadministration.dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosageBuilder.fromJson(value);
    case 'medicationdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseBuilder.fromJson(value);
    case 'medicationdispense.performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformerBuilder.fromJson(value);
    case 'medicationdispense.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitutionBuilder.fromJson(value);
    case 'medicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeBuilder.fromJson(value);
    case 'medicationknowledge.relatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
              value);
    case 'medicationknowledge.monograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonographBuilder.fromJson(value);
    case 'medicationknowledge.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredientBuilder.fromJson(value);
    case 'medicationknowledge.cost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCostBuilder.fromJson(value);
    case 'medicationknowledge.monitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgramBuilder.fromJson(value);
    case 'medicationknowledge.administrationguidelines':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeAdministrationGuidelinesBuilder.fromJson(value);
    case 'medicationknowledge.administrationguidelines.dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosageBuilder.fromJson(value);
    case 'medicationknowledge.administrationguidelines.patientcharacteristics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristicsBuilder.fromJson(value);
    case 'medicationknowledge.medicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassificationBuilder.fromJson(value);
    case 'medicationknowledge.packaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackagingBuilder.fromJson(value);
    case 'medicationknowledge.drugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristicBuilder.fromJson(value);
    case 'medicationknowledge.regulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatoryBuilder.fromJson(value);
    case 'medicationknowledge.regulatory.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitutionBuilder.fromJson(value);
    case 'medicationknowledge.regulatory.schedule':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeScheduleBuilder.fromJson(value);
    case 'medicationknowledge.regulatory.maxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispenseBuilder.fromJson(value);
    case 'medicationknowledge.kinetics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeKineticsBuilder.fromJson(value);
    case 'medicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestBuilder.fromJson(value);
    case 'medicationrequest.dispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequestBuilder.fromJson(value);
    case 'medicationrequest.dispenserequest.initialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFillBuilder.fromJson(value);
    case 'medicationrequest.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitutionBuilder.fromJson(value);
    case 'medicationstatement':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatementBuilder.fromJson(value);
    case 'medicinalproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionBuilder.fromJson(value);
    case 'medicinalproductdefinition.contact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContactBuilder.fromJson(value);
    case 'medicinalproductdefinition.name':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNameBuilder.fromJson(value);
    case 'medicinalproductdefinition.name.namepart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNamePartBuilder.fromJson(value);
    case 'medicinalproductdefinition.name.countrylanguage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCountryLanguageBuilder.fromJson(value);
    case 'medicinalproductdefinition.crossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReferenceBuilder.fromJson(value);
    case 'medicinalproductdefinition.operation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperationBuilder.fromJson(value);
    case 'medicinalproductdefinition.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristicBuilder.fromJson(value);
    case 'messagedefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionBuilder.fromJson(value);
    case 'messagedefinition.focus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocusBuilder.fromJson(value);
    case 'messagedefinition.allowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponseBuilder.fromJson(value);
    case 'messageheader':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderBuilder.fromJson(value);
    case 'messageheader.destination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestinationBuilder.fromJson(value);
    case 'messageheader.source':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSourceBuilder.fromJson(value);
    case 'messageheader.response':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponseBuilder.fromJson(value);
    case 'molecularsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceBuilder.fromJson(value);
    case 'molecularsequence.referenceseq':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceReferenceSeqBuilder.fromJson(value);
    case 'molecularsequence.variant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceVariantBuilder.fromJson(value);
    case 'molecularsequence.quality':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceQualityBuilder.fromJson(value);
    case 'molecularsequence.quality.roc':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRocBuilder.fromJson(value);
    case 'molecularsequence.repository':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRepositoryBuilder.fromJson(value);
    case 'molecularsequence.structurevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStructureVariantBuilder.fromJson(value);
    case 'molecularsequence.structurevariant.outer':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceOuterBuilder.fromJson(value);
    case 'molecularsequence.structurevariant.inner':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceInnerBuilder.fromJson(value);
    case 'namingsystem':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemBuilder.fromJson(value);
    case 'namingsystem.uniqueid':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueIdBuilder.fromJson(value);
    case 'nutritionorder':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderBuilder.fromJson(value);
    case 'nutritionorder.oraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDietBuilder.fromJson(value);
    case 'nutritionorder.oraldiet.nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrientBuilder.fromJson(value);
    case 'nutritionorder.oraldiet.texture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTextureBuilder.fromJson(value);
    case 'nutritionorder.supplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplementBuilder.fromJson(value);
    case 'nutritionorder.enteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormulaBuilder.fromJson(value);
    case 'nutritionorder.enteralformula.administration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministrationBuilder.fromJson(value);
    case 'nutritionproduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductBuilder.fromJson(value);
    case 'nutritionproduct.nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrientBuilder.fromJson(value);
    case 'nutritionproduct.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredientBuilder.fromJson(value);
    case 'nutritionproduct.productcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductProductCharacteristicBuilder.fromJson(value);
    case 'nutritionproduct.instance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstanceBuilder.fromJson(value);
    case 'observation':
      return value is! Map<String, dynamic>
          ? null
          : ObservationBuilder.fromJson(value);
    case 'observation.referencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRangeBuilder.fromJson(value);
    case 'observation.component':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponentBuilder.fromJson(value);
    case 'observationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionBuilder.fromJson(value);
    case 'observationdefinition.quantitativedetails':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQuantitativeDetailsBuilder.fromJson(value);
    case 'observationdefinition.qualifiedinterval':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedIntervalBuilder.fromJson(value);
    case 'operationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBuilder.fromJson(value);
    case 'operationdefinition.parameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameterBuilder.fromJson(value);
    case 'operationdefinition.parameter.binding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBindingBuilder.fromJson(value);
    case 'operationdefinition.parameter.referencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFromBuilder.fromJson(value);
    case 'operationdefinition.overload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverloadBuilder.fromJson(value);
    case 'operationoutcome':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeBuilder.fromJson(value);
    case 'operationoutcome.issue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssueBuilder.fromJson(value);
    case 'organization':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationBuilder.fromJson(value);
    case 'organization.contact':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationContactBuilder.fromJson(value);
    case 'organizationaffiliation':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationAffiliationBuilder.fromJson(value);
    case 'packagedproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionBuilder.fromJson(value);
    case 'packagedproductdefinition.legalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(value);
    case 'packagedproductdefinition.package':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackageBuilder.fromJson(value);
    case 'packagedproductdefinition.package.shelflifestorage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionShelfLifeStorageBuilder.fromJson(value);
    case 'packagedproductdefinition.package.property':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPropertyBuilder.fromJson(value);
    case 'packagedproductdefinition.package.containeditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItemBuilder.fromJson(value);
    case 'parameters':
      return value is! Map<String, dynamic>
          ? null
          : ParametersBuilder.fromJson(value);
    case 'parameters.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameterBuilder.fromJson(value);
    case 'patient':
      return value is! Map<String, dynamic>
          ? null
          : PatientBuilder.fromJson(value);
    case 'patient.contact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContactBuilder.fromJson(value);
    case 'patient.communication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunicationBuilder.fromJson(value);
    case 'patient.link':
      return value is! Map<String, dynamic>
          ? null
          : PatientLinkBuilder.fromJson(value);
    case 'paymentnotice':
      return value is! Map<String, dynamic>
          ? null
          : PaymentNoticeBuilder.fromJson(value);
    case 'paymentreconciliation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationBuilder.fromJson(value);
    case 'paymentreconciliation.detail':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationDetailBuilder.fromJson(value);
    case 'paymentreconciliation.processnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNoteBuilder.fromJson(value);
    case 'person':
      return value is! Map<String, dynamic>
          ? null
          : PersonBuilder.fromJson(value);
    case 'person.link':
      return value is! Map<String, dynamic>
          ? null
          : PersonLinkBuilder.fromJson(value);
    case 'plandefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionBuilder.fromJson(value);
    case 'plandefinition.goal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoalBuilder.fromJson(value);
    case 'plandefinition.goal.target':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTargetBuilder.fromJson(value);
    case 'plandefinition.action':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionActionBuilder.fromJson(value);
    case 'plandefinition.action.condition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionConditionBuilder.fromJson(value);
    case 'plandefinition.action.relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedActionBuilder.fromJson(value);
    case 'plandefinition.action.participant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipantBuilder.fromJson(value);
    case 'plandefinition.action.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValueBuilder.fromJson(value);
    case 'practitioner':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerBuilder.fromJson(value);
    case 'practitioner.qualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualificationBuilder.fromJson(value);
    case 'practitionerrole':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleBuilder.fromJson(value);
    case 'practitionerrole.availabletime':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleAvailableTimeBuilder.fromJson(value);
    case 'practitionerrole.notavailable':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleNotAvailableBuilder.fromJson(value);
    case 'procedure':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureBuilder.fromJson(value);
    case 'procedure.performer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformerBuilder.fromJson(value);
    case 'procedure.focaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDeviceBuilder.fromJson(value);
    case 'provenance':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceBuilder.fromJson(value);
    case 'provenance.agent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgentBuilder.fromJson(value);
    case 'provenance.entity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntityBuilder.fromJson(value);
    case 'questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireBuilder.fromJson(value);
    case 'questionnaire.item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItemBuilder.fromJson(value);
    case 'questionnaire.item.enablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhenBuilder.fromJson(value);
    case 'questionnaire.item.answeroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOptionBuilder.fromJson(value);
    case 'questionnaire.item.initial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitialBuilder.fromJson(value);
    case 'questionnaireresponse':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseBuilder.fromJson(value);
    case 'questionnaireresponse.item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItemBuilder.fromJson(value);
    case 'questionnaireresponse.item.answer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswerBuilder.fromJson(value);
    case 'regulatedauthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationBuilder.fromJson(value);
    case 'regulatedauthorization.case':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCaseBuilder.fromJson(value);
    case 'relatedperson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonBuilder.fromJson(value);
    case 'relatedperson.communication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunicationBuilder.fromJson(value);
    case 'requestgroup':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupBuilder.fromJson(value);
    case 'requestgroup.action':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupActionBuilder.fromJson(value);
    case 'requestgroup.action.condition':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupConditionBuilder.fromJson(value);
    case 'requestgroup.action.relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupRelatedActionBuilder.fromJson(value);
    case 'researchdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ResearchDefinitionBuilder.fromJson(value);
    case 'researchelementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinitionBuilder.fromJson(value);
    case 'researchelementdefinition.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : ResearchElementDefinitionCharacteristicBuilder.fromJson(value);
    case 'researchstudy':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyBuilder.fromJson(value);
    case 'researchstudy.arm':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyArmBuilder.fromJson(value);
    case 'researchstudy.objective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjectiveBuilder.fromJson(value);
    case 'researchsubject':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubjectBuilder.fromJson(value);
    case 'riskassessment':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentBuilder.fromJson(value);
    case 'riskassessment.prediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPredictionBuilder.fromJson(value);
    case 'schedule':
      return value is! Map<String, dynamic>
          ? null
          : ScheduleBuilder.fromJson(value);
    case 'searchparameter':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterBuilder.fromJson(value);
    case 'searchparameter.component':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterComponentBuilder.fromJson(value);
    case 'servicerequest':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestBuilder.fromJson(value);
    case 'slot':
      return value is! Map<String, dynamic>
          ? null
          : SlotBuilder.fromJson(value);
    case 'specimen':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenBuilder.fromJson(value);
    case 'specimen.collection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollectionBuilder.fromJson(value);
    case 'specimen.processing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessingBuilder.fromJson(value);
    case 'specimen.container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainerBuilder.fromJson(value);
    case 'specimendefinition':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionBuilder.fromJson(value);
    case 'specimendefinition.typetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTestedBuilder.fromJson(value);
    case 'specimendefinition.typetested.container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainerBuilder.fromJson(value);
    case 'specimendefinition.typetested.container.additive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditiveBuilder.fromJson(value);
    case 'specimendefinition.typetested.handling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandlingBuilder.fromJson(value);
    case 'structuredefinition':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionBuilder.fromJson(value);
    case 'structuredefinition.mapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMappingBuilder.fromJson(value);
    case 'structuredefinition.context':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContextBuilder.fromJson(value);
    case 'structuredefinition.snapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshotBuilder.fromJson(value);
    case 'structuredefinition.differential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferentialBuilder.fromJson(value);
    case 'structuremap':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapBuilder.fromJson(value);
    case 'structuremap.structure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructureBuilder.fromJson(value);
    case 'structuremap.group':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroupBuilder.fromJson(value);
    case 'structuremap.group.input':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInputBuilder.fromJson(value);
    case 'structuremap.group.rule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRuleBuilder.fromJson(value);
    case 'structuremap.group.rule.source':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSourceBuilder.fromJson(value);
    case 'structuremap.group.rule.target':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTargetBuilder.fromJson(value);
    case 'structuremap.group.rule.target.parameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameterBuilder.fromJson(value);
    case 'structuremap.group.rule.dependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependentBuilder.fromJson(value);
    case 'subscription':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionBuilder.fromJson(value);
    case 'subscription.channel':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionChannelBuilder.fromJson(value);
    case 'subscriptionstatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusBuilder.fromJson(value);
    case 'subscriptionstatus.notificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEventBuilder.fromJson(value);
    case 'subscriptiontopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicBuilder.fromJson(value);
    case 'subscriptiontopic.resourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTriggerBuilder.fromJson(value);
    case 'subscriptiontopic.resourcetrigger.querycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteriaBuilder.fromJson(value);
    case 'subscriptiontopic.eventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTriggerBuilder.fromJson(value);
    case 'subscriptiontopic.canfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterByBuilder.fromJson(value);
    case 'subscriptiontopic.notificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShapeBuilder.fromJson(value);
    case 'substance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceBuilder.fromJson(value);
    case 'substance.instance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceInstanceBuilder.fromJson(value);
    case 'substance.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredientBuilder.fromJson(value);
    case 'substancedefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionBuilder.fromJson(value);
    case 'substancedefinition.moiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoietyBuilder.fromJson(value);
    case 'substancedefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionPropertyBuilder.fromJson(value);
    case 'substancedefinition.molecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeightBuilder.fromJson(value);
    case 'substancedefinition.structure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructureBuilder.fromJson(value);
    case 'substancedefinition.structure.representation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentationBuilder.fromJson(value);
    case 'substancedefinition.code':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCodeBuilder.fromJson(value);
    case 'substancedefinition.name':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionNameBuilder.fromJson(value);
    case 'substancedefinition.name.official':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficialBuilder.fromJson(value);
    case 'substancedefinition.relationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationshipBuilder.fromJson(value);
    case 'substancedefinition.sourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterialBuilder.fromJson(value);
    case 'supplydelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliveryBuilder.fromJson(value);
    case 'supplydelivery.supplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItemBuilder.fromJson(value);
    case 'supplyrequest':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestBuilder.fromJson(value);
    case 'supplyrequest.parameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameterBuilder.fromJson(value);
    case 'task':
      return value is! Map<String, dynamic>
          ? null
          : TaskBuilder.fromJson(value);
    case 'task.restriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestrictionBuilder.fromJson(value);
    case 'task.input':
      return value is! Map<String, dynamic>
          ? null
          : TaskInputBuilder.fromJson(value);
    case 'task.output':
      return value is! Map<String, dynamic>
          ? null
          : TaskOutputBuilder.fromJson(value);
    case 'terminologycapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesBuilder.fromJson(value);
    case 'terminologycapabilities.software':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftwareBuilder.fromJson(value);
    case 'terminologycapabilities.implementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementationBuilder.fromJson(value);
    case 'terminologycapabilities.codesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystemBuilder.fromJson(value);
    case 'terminologycapabilities.codesystem.version':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersionBuilder.fromJson(value);
    case 'terminologycapabilities.codesystem.version.filter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilterBuilder.fromJson(value);
    case 'terminologycapabilities.expansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansionBuilder.fromJson(value);
    case 'terminologycapabilities.expansion.parameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameterBuilder.fromJson(value);
    case 'terminologycapabilities.validatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCodeBuilder.fromJson(value);
    case 'terminologycapabilities.translation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslationBuilder.fromJson(value);
    case 'terminologycapabilities.closure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosureBuilder.fromJson(value);
    case 'testreport':
      return value is! Map<String, dynamic>
          ? null
          : TestReportBuilder.fromJson(value);
    case 'testreport.participant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipantBuilder.fromJson(value);
    case 'testreport.setup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetupBuilder.fromJson(value);
    case 'testreport.setup.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportActionBuilder.fromJson(value);
    case 'testreport.setup.action.operation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperationBuilder.fromJson(value);
    case 'testreport.setup.action.assert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssertBuilder.fromJson(value);
    case 'testreport.test':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTestBuilder.fromJson(value);
    case 'testreport.test.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1Builder.fromJson(value);
    case 'testreport.teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardownBuilder.fromJson(value);
    case 'testreport.teardown.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2Builder.fromJson(value);
    case 'testscript':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptBuilder.fromJson(value);
    case 'testscript.origin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOriginBuilder.fromJson(value);
    case 'testscript.destination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestinationBuilder.fromJson(value);
    case 'testscript.metadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadataBuilder.fromJson(value);
    case 'testscript.metadata.link':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLinkBuilder.fromJson(value);
    case 'testscript.metadata.capability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapabilityBuilder.fromJson(value);
    case 'testscript.fixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixtureBuilder.fromJson(value);
    case 'testscript.variable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariableBuilder.fromJson(value);
    case 'testscript.setup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetupBuilder.fromJson(value);
    case 'testscript.setup.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptActionBuilder.fromJson(value);
    case 'testscript.setup.action.operation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperationBuilder.fromJson(value);
    case 'testscript.setup.action.operation.requestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeaderBuilder.fromJson(value);
    case 'testscript.setup.action.assert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssertBuilder.fromJson(value);
    case 'testscript.test':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTestBuilder.fromJson(value);
    case 'testscript.test.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1Builder.fromJson(value);
    case 'testscript.teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardownBuilder.fromJson(value);
    case 'testscript.teardown.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2Builder.fromJson(value);
    case 'valueset':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetBuilder.fromJson(value);
    case 'valueset.compose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetComposeBuilder.fromJson(value);
    case 'valueset.compose.include':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetIncludeBuilder.fromJson(value);
    case 'valueset.compose.include.concept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConceptBuilder.fromJson(value);
    case 'valueset.compose.include.concept.designation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignationBuilder.fromJson(value);
    case 'valueset.compose.include.filter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilterBuilder.fromJson(value);
    case 'valueset.expansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansionBuilder.fromJson(value);
    case 'valueset.expansion.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameterBuilder.fromJson(value);
    case 'valueset.expansion.contains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContainsBuilder.fromJson(value);
    case 'verificationresult':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultBuilder.fromJson(value);
    case 'verificationresult.primarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySourceBuilder.fromJson(value);
    case 'verificationresult.attestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestationBuilder.fromJson(value);
    case 'verificationresult.validator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidatorBuilder.fromJson(value);
    case 'visionprescription':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionBuilder.fromJson(value);
    case 'visionprescription.lensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecificationBuilder.fromJson(value);
    case 'visionprescription.lensspecification.prism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrismBuilder.fromJson(value);
    case 'address':
      return value is! Map<String, dynamic>
          ? null
          : AddressBuilder.fromJson(value);
    case 'age':
      return value is! Map<String, dynamic> ? null : AgeBuilder.fromJson(value);
    case 'annotation':
      return value is! Map<String, dynamic>
          ? null
          : AnnotationBuilder.fromJson(value);
    case 'attachment':
      return value is! Map<String, dynamic>
          ? null
          : AttachmentBuilder.fromJson(value);
    case 'codeableconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeableConceptBuilder.fromJson(value);
    case 'codeablereference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReferenceBuilder.fromJson(value);
    case 'coding':
      return value is! Map<String, dynamic>
          ? null
          : CodingBuilder.fromJson(value);
    case 'contactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ContactDetailBuilder.fromJson(value);
    case 'contactpoint':
      return value is! Map<String, dynamic>
          ? null
          : ContactPointBuilder.fromJson(value);
    case 'contributor':
      return value is! Map<String, dynamic>
          ? null
          : ContributorBuilder.fromJson(value);
    case 'count':
      return value is! Map<String, dynamic>
          ? null
          : CountBuilder.fromJson(value);
    case 'datarequirement':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementBuilder.fromJson(value);
    case 'datarequirement.codefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilterBuilder.fromJson(value);
    case 'datarequirement.datefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilterBuilder.fromJson(value);
    case 'datarequirement.sort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSortBuilder.fromJson(value);
    case 'distance':
      return value is! Map<String, dynamic>
          ? null
          : DistanceBuilder.fromJson(value);
    case 'dosage':
      return value is! Map<String, dynamic>
          ? null
          : DosageBuilder.fromJson(value);
    case 'dosage.doseandrate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRateBuilder.fromJson(value);
    case 'duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDurationBuilder.fromJson(value);
    case 'elementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBuilder.fromJson(value);
    case 'elementdefinition.slicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicingBuilder.fromJson(value);
    case 'elementdefinition.slicing.discriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminatorBuilder.fromJson(value);
    case 'elementdefinition.base':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBaseBuilder.fromJson(value);
    case 'elementdefinition.type':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionTypeBuilder.fromJson(value);
    case 'elementdefinition.example':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExampleBuilder.fromJson(value);
    case 'elementdefinition.constraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraintBuilder.fromJson(value);
    case 'elementdefinition.binding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBindingBuilder.fromJson(value);
    case 'elementdefinition.mapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMappingBuilder.fromJson(value);
    case 'expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpressionBuilder.fromJson(value);
    case 'extension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtensionBuilder.fromJson(value);
    case 'humanname':
      return value is! Map<String, dynamic>
          ? null
          : HumanNameBuilder.fromJson(value);
    case 'identifier':
      return value is! Map<String, dynamic>
          ? null
          : IdentifierBuilder.fromJson(value);
    case 'marketingstatus':
      return value is! Map<String, dynamic>
          ? null
          : MarketingStatusBuilder.fromJson(value);
    case 'meta':
      return value is! Map<String, dynamic>
          ? null
          : FhirMetaBuilder.fromJson(value);
    case 'money':
      return value is! Map<String, dynamic>
          ? null
          : MoneyBuilder.fromJson(value);
    case 'narrative':
      return value is! Map<String, dynamic>
          ? null
          : NarrativeBuilder.fromJson(value);
    case 'parameterdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ParameterDefinitionBuilder.fromJson(value);
    case 'period':
      return value is! Map<String, dynamic>
          ? null
          : PeriodBuilder.fromJson(value);
    case 'population':
      return value is! Map<String, dynamic>
          ? null
          : PopulationBuilder.fromJson(value);
    case 'prodcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : ProdCharacteristicBuilder.fromJson(value);
    case 'productshelflife':
      return value is! Map<String, dynamic>
          ? null
          : ProductShelfLifeBuilder.fromJson(value);
    case 'quantity':
      return value is! Map<String, dynamic>
          ? null
          : QuantityBuilder.fromJson(value);
    case 'range':
      return value is! Map<String, dynamic>
          ? null
          : RangeBuilder.fromJson(value);
    case 'ratio':
      return value is! Map<String, dynamic>
          ? null
          : RatioBuilder.fromJson(value);
    case 'ratiorange':
      return value is! Map<String, dynamic>
          ? null
          : RatioRangeBuilder.fromJson(value);
    case 'reference':
      return value is! Map<String, dynamic>
          ? null
          : ReferenceBuilder.fromJson(value);
    case 'relatedartifact':
      return value is! Map<String, dynamic>
          ? null
          : RelatedArtifactBuilder.fromJson(value);
    case 'sampleddata':
      return value is! Map<String, dynamic>
          ? null
          : SampledDataBuilder.fromJson(value);
    case 'signature':
      return value is! Map<String, dynamic>
          ? null
          : SignatureBuilder.fromJson(value);
    case 'timing':
      return value is! Map<String, dynamic>
          ? null
          : TimingBuilder.fromJson(value);
    case 'timing.repeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeatBuilder.fromJson(value);
    case 'triggerdefinition':
      return value is! Map<String, dynamic>
          ? null
          : TriggerDefinitionBuilder.fromJson(value);
    case 'usagecontext':
      return value is! Map<String, dynamic>
          ? null
          : UsageContextBuilder.fromJson(value);
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
