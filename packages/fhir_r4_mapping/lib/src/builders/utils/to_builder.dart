import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// This function accepts a dynamic value, and a String type and attmpts
/// to create that FhirType
extension BuilderFhirBase on FhirBase {
  /// Returns a builder for the FhirBase type
  FhirBaseBuilder get toBuilder {
    final type = fhirType.toLowerCase();
    switch (type) {
      case 'fhirbase64binary':
        return FhirBase64BinaryBuilder.fromJson(
          toJson(),
        );
      case 'base64binary':
        return FhirBase64BinaryBuilder.fromJson(
          toJson(),
        );
      case 'fhirboolean':
        return FhirBooleanBuilder.fromJson(
          toJson(),
        );
      case 'boolean':
        return FhirBooleanBuilder.fromJson(
          toJson(),
        );
      case 'fhircanonical':
        return FhirCanonicalBuilder.fromJson(
          toJson(),
        );
      case 'canonical':
        return FhirCanonicalBuilder.fromJson(
          toJson(),
        );
      case 'fhircode':
        return FhirCodeBuilder.fromJson(
          toJson(),
        );
      case 'code':
        return FhirCodeBuilder.fromJson(
          toJson(),
        );
      case 'fhirdate':
        return FhirDateBuilder.fromJson(
          toJson(),
        );
      case 'date':
        return FhirDateBuilder.fromJson(
          toJson(),
        );
      case 'fhirdatetime':
        return FhirDateTimeBuilder.fromJson(
          toJson(),
        );
      case 'datetime':
        return FhirDateTimeBuilder.fromJson(
          toJson(),
        );
      case 'fhirdecimal':
        return FhirDecimalBuilder.fromJson(
          toJson(),
        );
      case 'decimal':
        return FhirDecimalBuilder.fromJson(
          toJson(),
        );
      case 'fhirid':
        return FhirIdBuilder.fromJson(
          toJson(),
        );
      case 'id':
        return FhirIdBuilder.fromJson(
          toJson(),
        );
      case 'fhirinstant':
        return FhirInstantBuilder.fromJson(
          toJson(),
        );
      case 'instant':
        return FhirInstantBuilder.fromJson(
          toJson(),
        );
      case 'fhirinteger':
        return FhirIntegerBuilder.fromJson(
          toJson(),
        );
      case 'integer':
        return FhirIntegerBuilder.fromJson(
          toJson(),
        );
      case 'fhirmarkdown':
        return FhirMarkdownBuilder.fromJson(
          toJson(),
        );
      case 'markdown':
        return FhirMarkdownBuilder.fromJson(
          toJson(),
        );
      case 'fhiroid':
        return FhirOidBuilder.fromJson(
          toJson(),
        );
      case 'oid':
        return FhirOidBuilder.fromJson(
          toJson(),
        );
      case 'fhirpositiveint':
        return FhirPositiveIntBuilder.fromJson(
          toJson(),
        );
      case 'positiveint':
        return FhirPositiveIntBuilder.fromJson(
          toJson(),
        );
      case 'fhirstring':
        return FhirStringBuilder.fromJson(
          toJson(),
        );
      case 'string':
        return FhirStringBuilder.fromJson(
          toJson(),
        );
      case 'fhirtime':
        return FhirTimeBuilder.fromJson(
          toJson(),
        );
      case 'time':
        return FhirTimeBuilder.fromJson(
          toJson(),
        );
      case 'fhirunsignedint':
        return FhirUnsignedIntBuilder.fromJson(
          toJson(),
        );
      case 'unsignedint':
        return FhirUnsignedIntBuilder.fromJson(
          toJson(),
        );
      case 'fhiruri':
        return FhirUriBuilder.fromJson(
          toJson(),
        );
      case 'uri':
        return FhirUriBuilder.fromJson(
          toJson(),
        );
      case 'fhirurl':
        return FhirUrlBuilder.fromJson(
          toJson(),
        );
      case 'url':
        return FhirUrlBuilder.fromJson(
          toJson(),
        );
      case 'fhiruuid':
        return FhirUuidBuilder.fromJson(
          toJson(),
        );
      case 'uuid':
        return FhirUuidBuilder.fromJson(
          toJson(),
        );
      case 'fhirxhtml':
        return FhirXhtmlBuilder.fromJson(
          toJson(),
        );
      case 'xhtml':
        return FhirXhtmlBuilder.fromJson(
          toJson(),
        );
      case 'element':
        return ElementBuilder.fromJson(
          toJson(),
        );
      case 'fhirextension':
        return FhirExtensionBuilder.fromJson(
          toJson(),
        );
      case 'extension':
        return FhirExtensionBuilder.fromJson(
          toJson(),
        );
      case 'narrative':
        return NarrativeBuilder.fromJson(
          toJson(),
        );
      case 'annotation':
        return AnnotationBuilder.fromJson(
          toJson(),
        );
      case 'attachment':
        return AttachmentBuilder.fromJson(
          toJson(),
        );
      case 'identifier':
        return IdentifierBuilder.fromJson(
          toJson(),
        );
      case 'codeableconcept':
        return CodeableConceptBuilder.fromJson(
          toJson(),
        );
      case 'codeablereference':
        return CodeableReferenceBuilder.fromJson(
          toJson(),
        );
      case 'coding':
        return CodingBuilder.fromJson(
          toJson(),
        );
      case 'quantity':
        return QuantityBuilder.fromJson(
          toJson(),
        );
      case 'fhirduration':
        return FhirDurationBuilder.fromJson(
          toJson(),
        );
      case 'duration':
        return FhirDurationBuilder.fromJson(
          toJson(),
        );
      case 'distance':
        return DistanceBuilder.fromJson(
          toJson(),
        );
      case 'count':
        return CountBuilder.fromJson(
          toJson(),
        );
      case 'money':
        return MoneyBuilder.fromJson(
          toJson(),
        );
      case 'age':
      case 'range':
        return RangeBuilder.fromJson(
          toJson(),
        );
      case 'period':
        return PeriodBuilder.fromJson(
          toJson(),
        );
      case 'ratio':
        return RatioBuilder.fromJson(
          toJson(),
        );
      case 'ratiorange':
        return RatioRangeBuilder.fromJson(
          toJson(),
        );
      case 'reference':
        return ReferenceBuilder.fromJson(
          toJson(),
        );
      case 'sampleddata':
        return SampledDataBuilder.fromJson(
          toJson(),
        );
      case 'signature':
        return SignatureBuilder.fromJson(
          toJson(),
        );
      case 'humanname':
        return HumanNameBuilder.fromJson(
          toJson(),
        );
      case 'address':
        return AddressBuilder.fromJson(
          toJson(),
        );
      case 'contactpoint':
        return ContactPointBuilder.fromJson(
          toJson(),
        );
      case 'timing':
        return TimingBuilder.fromJson(
          toJson(),
        );
      case 'timingrepeat':
        return TimingRepeatBuilder.fromJson(
          toJson(),
        );
      case 'timing_repeat':
        return TimingRepeatBuilder.fromJson(
          toJson(),
        );
      case 'fhirmeta':
        return FhirMetaBuilder.fromJson(
          toJson(),
        );
      case 'meta':
        return FhirMetaBuilder.fromJson(
          toJson(),
        );
      case 'contactdetail':
        return ContactDetailBuilder.fromJson(
          toJson(),
        );
      case 'contributor':
        return ContributorBuilder.fromJson(
          toJson(),
        );
      case 'datarequirement':
        return DataRequirementBuilder.fromJson(
          toJson(),
        );
      case 'datarequirementcodefilter':
        return DataRequirementCodeFilterBuilder.fromJson(
          toJson(),
        );
      case 'datarequirement_codefilter':
        return DataRequirementCodeFilterBuilder.fromJson(
          toJson(),
        );
      case 'datarequirementdatefilter':
        return DataRequirementDateFilterBuilder.fromJson(
          toJson(),
        );
      case 'datarequirement_datefilter':
        return DataRequirementDateFilterBuilder.fromJson(
          toJson(),
        );
      case 'datarequirementsort':
        return DataRequirementSortBuilder.fromJson(
          toJson(),
        );
      case 'datarequirement_sort':
        return DataRequirementSortBuilder.fromJson(
          toJson(),
        );
      case 'parameterdefinition':
        return ParameterDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'relatedartifact':
        return RelatedArtifactBuilder.fromJson(
          toJson(),
        );
      case 'triggerdefinition':
        return TriggerDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'usagecontext':
        return UsageContextBuilder.fromJson(
          toJson(),
        );
      case 'dosage':
        return DosageBuilder.fromJson(
          toJson(),
        );
      case 'dosagedoseandrate':
        return DosageDoseAndRateBuilder.fromJson(
          toJson(),
        );
      case 'dosage_doseandrate':
        return DosageDoseAndRateBuilder.fromJson(
          toJson(),
        );
      case 'population':
        return PopulationBuilder.fromJson(
          toJson(),
        );
      case 'productshelflife':
        return ProductShelfLifeBuilder.fromJson(
          toJson(),
        );
      case 'prodcharacteristic':
        return ProdCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'marketingstatus':
        return MarketingStatusBuilder.fromJson(
          toJson(),
        );
      case 'fhirexpression':
        return FhirExpressionBuilder.fromJson(
          toJson(),
        );
      case 'expression':
        return FhirExpressionBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition':
        return ElementDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitionslicing':
        return ElementDefinitionSlicingBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_slicing':
        return ElementDefinitionSlicingBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitiondiscriminator':
        return ElementDefinitionDiscriminatorBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_discriminator':
        return ElementDefinitionDiscriminatorBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitionbase':
        return ElementDefinitionBaseBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_base':
        return ElementDefinitionBaseBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitiontype':
        return ElementDefinitionTypeBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_type':
        return ElementDefinitionTypeBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitionexample':
        return ElementDefinitionExampleBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_example':
        return ElementDefinitionExampleBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitionconstraint':
        return ElementDefinitionConstraintBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_constraint':
        return ElementDefinitionConstraintBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitionbinding':
        return ElementDefinitionBindingBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_binding':
        return ElementDefinitionBindingBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinitionmapping':
        return ElementDefinitionMappingBuilder.fromJson(
          toJson(),
        );
      case 'elementdefinition_mapping':
        return ElementDefinitionMappingBuilder.fromJson(
          toJson(),
        );
      case 'account':
        return AccountBuilder.fromJson(
          toJson(),
        );
      case 'accountcoverage':
        return AccountCoverageBuilder.fromJson(
          toJson(),
        );
      case 'account_coverage':
        return AccountCoverageBuilder.fromJson(
          toJson(),
        );
      case 'accountguarantor':
        return AccountGuarantorBuilder.fromJson(
          toJson(),
        );
      case 'account_guarantor':
        return AccountGuarantorBuilder.fromJson(
          toJson(),
        );
      case 'activitydefinition':
        return ActivityDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'activitydefinitionparticipant':
        return ActivityDefinitionParticipantBuilder.fromJson(
          toJson(),
        );
      case 'activitydefinition_participant':
        return ActivityDefinitionParticipantBuilder.fromJson(
          toJson(),
        );
      case 'activitydefinitiondynamicvalue':
        return ActivityDefinitionDynamicValueBuilder.fromJson(
          toJson(),
        );
      case 'activitydefinition_dynamicvalue':
        return ActivityDefinitionDynamicValueBuilder.fromJson(
          toJson(),
        );
      case 'administrableproductdefinition':
        return AdministrableProductDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'administrableproductdefinitionproperty':
        return AdministrableProductDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'administrableproductdefinition_property':
        return AdministrableProductDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'administrableproductdefinitionrouteofadministration':
        return AdministrableProductDefinitionRouteOfAdministrationBuilder
            .fromJson(
          toJson(),
        );

      case 'administrableproductdefinition_routeofadministration':
        return AdministrableProductDefinitionRouteOfAdministrationBuilder
            .fromJson(
          toJson(),
        );

      case 'administrableproductdefinitiontargetspecies':
        return AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(
          toJson(),
        );
      case 'administrableproductdefinition_targetspecies':
        return AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(
          toJson(),
        );
      case 'administrableproductdefinitionwithdrawalperiod':
        return AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
          toJson(),
        );

      case 'administrableproductdefinition_withdrawalperiod':
        return AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
          toJson(),
        );

      case 'adverseevent':
        return AdverseEventBuilder.fromJson(
          toJson(),
        );
      case 'adverseeventsuspectentity':
        return AdverseEventSuspectEntityBuilder.fromJson(
          toJson(),
        );
      case 'adverseevent_suspectentity':
        return AdverseEventSuspectEntityBuilder.fromJson(
          toJson(),
        );
      case 'adverseeventcausality':
        return AdverseEventCausalityBuilder.fromJson(
          toJson(),
        );
      case 'adverseevent_causality':
        return AdverseEventCausalityBuilder.fromJson(
          toJson(),
        );
      case 'allergyintolerance':
        return AllergyIntoleranceBuilder.fromJson(
          toJson(),
        );
      case 'allergyintolerancereaction':
        return AllergyIntoleranceReactionBuilder.fromJson(
          toJson(),
        );
      case 'allergyintolerance_reaction':
        return AllergyIntoleranceReactionBuilder.fromJson(
          toJson(),
        );
      case 'appointment':
        return AppointmentBuilder.fromJson(
          toJson(),
        );
      case 'appointmentparticipant':
        return AppointmentParticipantBuilder.fromJson(
          toJson(),
        );
      case 'appointment_participant':
        return AppointmentParticipantBuilder.fromJson(
          toJson(),
        );
      case 'appointmentresponse':
        return AppointmentResponseBuilder.fromJson(
          toJson(),
        );
      case 'auditevent':
        return AuditEventBuilder.fromJson(
          toJson(),
        );
      case 'auditeventagent':
        return AuditEventAgentBuilder.fromJson(
          toJson(),
        );
      case 'auditevent_agent':
        return AuditEventAgentBuilder.fromJson(
          toJson(),
        );
      case 'auditeventnetwork':
        return AuditEventNetworkBuilder.fromJson(
          toJson(),
        );
      case 'auditevent_network':
        return AuditEventNetworkBuilder.fromJson(
          toJson(),
        );
      case 'auditeventsource':
        return AuditEventSourceBuilder.fromJson(
          toJson(),
        );
      case 'auditevent_source':
        return AuditEventSourceBuilder.fromJson(
          toJson(),
        );
      case 'auditevententity':
        return AuditEventEntityBuilder.fromJson(
          toJson(),
        );
      case 'auditevent_entity':
        return AuditEventEntityBuilder.fromJson(
          toJson(),
        );
      case 'auditeventdetail':
        return AuditEventDetailBuilder.fromJson(
          toJson(),
        );
      case 'auditevent_detail':
        return AuditEventDetailBuilder.fromJson(
          toJson(),
        );
      case 'basic':
        return BasicBuilder.fromJson(
          toJson(),
        );
      case 'binary':
        return BinaryBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproduct':
        return BiologicallyDerivedProductBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproductcollection':
        return BiologicallyDerivedProductCollectionBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproduct_collection':
        return BiologicallyDerivedProductCollectionBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproductprocessing':
        return BiologicallyDerivedProductProcessingBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproduct_processing':
        return BiologicallyDerivedProductProcessingBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproductmanipulation':
        return BiologicallyDerivedProductManipulationBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproduct_manipulation':
        return BiologicallyDerivedProductManipulationBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproductstorage':
        return BiologicallyDerivedProductStorageBuilder.fromJson(
          toJson(),
        );
      case 'biologicallyderivedproduct_storage':
        return BiologicallyDerivedProductStorageBuilder.fromJson(
          toJson(),
        );
      case 'bodystructure':
        return BodyStructureBuilder.fromJson(
          toJson(),
        );
      case 'bundle':
        return BundleBuilder.fromJson(
          toJson(),
        );
      case 'bundlelink':
        return BundleLinkBuilder.fromJson(
          toJson(),
        );
      case 'bundle_link':
        return BundleLinkBuilder.fromJson(
          toJson(),
        );
      case 'bundleentry':
        return BundleEntryBuilder.fromJson(
          toJson(),
        );
      case 'bundle_entry':
        return BundleEntryBuilder.fromJson(
          toJson(),
        );
      case 'bundlesearch':
        return BundleSearchBuilder.fromJson(
          toJson(),
        );
      case 'bundle_search':
        return BundleSearchBuilder.fromJson(
          toJson(),
        );
      case 'bundlerequest':
        return BundleRequestBuilder.fromJson(
          toJson(),
        );
      case 'bundle_request':
        return BundleRequestBuilder.fromJson(
          toJson(),
        );
      case 'bundleresponse':
        return BundleResponseBuilder.fromJson(
          toJson(),
        );
      case 'bundle_response':
        return BundleResponseBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement':
        return CapabilityStatementBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementsoftware':
        return CapabilityStatementSoftwareBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_software':
        return CapabilityStatementSoftwareBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementimplementation':
        return CapabilityStatementImplementationBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_implementation':
        return CapabilityStatementImplementationBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementrest':
        return CapabilityStatementRestBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_rest':
        return CapabilityStatementRestBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementsecurity':
        return CapabilityStatementSecurityBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_security':
        return CapabilityStatementSecurityBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementresource':
        return CapabilityStatementResourceBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_resource':
        return CapabilityStatementResourceBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementinteraction':
        return CapabilityStatementInteractionBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_interaction':
        return CapabilityStatementInteractionBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementsearchparam':
        return CapabilityStatementSearchParamBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_searchparam':
        return CapabilityStatementSearchParamBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementoperation':
        return CapabilityStatementOperationBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_operation':
        return CapabilityStatementOperationBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementinteraction1':
        return CapabilityStatementInteraction1Builder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_interaction1':
        return CapabilityStatementInteraction1Builder.fromJson(
          toJson(),
        );
      case 'capabilitystatementmessaging':
        return CapabilityStatementMessagingBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_messaging':
        return CapabilityStatementMessagingBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementendpoint':
        return CapabilityStatementEndpointBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_endpoint':
        return CapabilityStatementEndpointBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementsupportedmessage':
        return CapabilityStatementSupportedMessageBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_supportedmessage':
        return CapabilityStatementSupportedMessageBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatementdocument':
        return CapabilityStatementDocumentBuilder.fromJson(
          toJson(),
        );
      case 'capabilitystatement_document':
        return CapabilityStatementDocumentBuilder.fromJson(
          toJson(),
        );
      case 'careplan':
        return CarePlanBuilder.fromJson(
          toJson(),
        );
      case 'careplanactivity':
        return CarePlanActivityBuilder.fromJson(
          toJson(),
        );
      case 'careplan_activity':
        return CarePlanActivityBuilder.fromJson(
          toJson(),
        );
      case 'careplandetail':
        return CarePlanDetailBuilder.fromJson(
          toJson(),
        );
      case 'careplan_detail':
        return CarePlanDetailBuilder.fromJson(
          toJson(),
        );
      case 'careteam':
        return CareTeamBuilder.fromJson(
          toJson(),
        );
      case 'careteamparticipant':
        return CareTeamParticipantBuilder.fromJson(
          toJson(),
        );
      case 'careteam_participant':
        return CareTeamParticipantBuilder.fromJson(
          toJson(),
        );
      case 'catalogentry':
        return CatalogEntryBuilder.fromJson(
          toJson(),
        );
      case 'catalogentryrelatedentry':
        return CatalogEntryRelatedEntryBuilder.fromJson(
          toJson(),
        );
      case 'catalogentry_relatedentry':
        return CatalogEntryRelatedEntryBuilder.fromJson(
          toJson(),
        );
      case 'chargeitem':
        return ChargeItemBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemperformer':
        return ChargeItemPerformerBuilder.fromJson(
          toJson(),
        );
      case 'chargeitem_performer':
        return ChargeItemPerformerBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinition':
        return ChargeItemDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinitionapplicability':
        return ChargeItemDefinitionApplicabilityBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinition_applicability':
        return ChargeItemDefinitionApplicabilityBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinitionpropertygroup':
        return ChargeItemDefinitionPropertyGroupBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinition_propertygroup':
        return ChargeItemDefinitionPropertyGroupBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinitionpricecomponent':
        return ChargeItemDefinitionPriceComponentBuilder.fromJson(
          toJson(),
        );
      case 'chargeitemdefinition_pricecomponent':
        return ChargeItemDefinitionPriceComponentBuilder.fromJson(
          toJson(),
        );
      case 'citation':
        return CitationBuilder.fromJson(
          toJson(),
        );
      case 'citationsummary':
        return CitationSummaryBuilder.fromJson(
          toJson(),
        );
      case 'citation_summary':
        return CitationSummaryBuilder.fromJson(
          toJson(),
        );
      case 'citationclassification':
        return CitationClassificationBuilder.fromJson(
          toJson(),
        );
      case 'citation_classification':
        return CitationClassificationBuilder.fromJson(
          toJson(),
        );
      case 'citationstatusdate':
        return CitationStatusDateBuilder.fromJson(
          toJson(),
        );
      case 'citation_statusdate':
        return CitationStatusDateBuilder.fromJson(
          toJson(),
        );
      case 'citationrelatesto':
        return CitationRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'citation_relatesto':
        return CitationRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'citationcitedartifact':
        return CitationCitedArtifactBuilder.fromJson(
          toJson(),
        );
      case 'citation_citedartifact':
        return CitationCitedArtifactBuilder.fromJson(
          toJson(),
        );
      case 'citationversion':
        return CitationVersionBuilder.fromJson(
          toJson(),
        );
      case 'citation_version':
        return CitationVersionBuilder.fromJson(
          toJson(),
        );
      case 'citationstatusdate1':
        return CitationStatusDate1Builder.fromJson(
          toJson(),
        );
      case 'citation_statusdate1':
        return CitationStatusDate1Builder.fromJson(
          toJson(),
        );
      case 'citationtitle':
        return CitationTitleBuilder.fromJson(
          toJson(),
        );
      case 'citation_title':
        return CitationTitleBuilder.fromJson(
          toJson(),
        );
      case 'citationabstract':
        return CitationAbstractBuilder.fromJson(
          toJson(),
        );
      case 'citation_abstract':
        return CitationAbstractBuilder.fromJson(
          toJson(),
        );
      case 'citationpart':
        return CitationPartBuilder.fromJson(
          toJson(),
        );
      case 'citation_part':
        return CitationPartBuilder.fromJson(
          toJson(),
        );
      case 'citationrelatesto1':
        return CitationRelatesTo1Builder.fromJson(
          toJson(),
        );
      case 'citation_relatesto1':
        return CitationRelatesTo1Builder.fromJson(
          toJson(),
        );
      case 'citationpublicationform':
        return CitationPublicationFormBuilder.fromJson(
          toJson(),
        );
      case 'citation_publicationform':
        return CitationPublicationFormBuilder.fromJson(
          toJson(),
        );
      case 'citationpublishedin':
        return CitationPublishedInBuilder.fromJson(
          toJson(),
        );
      case 'citation_publishedin':
        return CitationPublishedInBuilder.fromJson(
          toJson(),
        );
      case 'citationperiodicrelease':
        return CitationPeriodicReleaseBuilder.fromJson(
          toJson(),
        );
      case 'citation_periodicrelease':
        return CitationPeriodicReleaseBuilder.fromJson(
          toJson(),
        );
      case 'citationdateofpublication':
        return CitationDateOfPublicationBuilder.fromJson(
          toJson(),
        );
      case 'citation_dateofpublication':
        return CitationDateOfPublicationBuilder.fromJson(
          toJson(),
        );
      case 'citationweblocation':
        return CitationWebLocationBuilder.fromJson(
          toJson(),
        );
      case 'citation_weblocation':
        return CitationWebLocationBuilder.fromJson(
          toJson(),
        );
      case 'citationclassification1':
        return CitationClassification1Builder.fromJson(
          toJson(),
        );
      case 'citation_classification1':
        return CitationClassification1Builder.fromJson(
          toJson(),
        );
      case 'citationwhoclassified':
        return CitationWhoClassifiedBuilder.fromJson(
          toJson(),
        );
      case 'citation_whoclassified':
        return CitationWhoClassifiedBuilder.fromJson(
          toJson(),
        );
      case 'citationcontributorship':
        return CitationContributorshipBuilder.fromJson(
          toJson(),
        );
      case 'citation_contributorship':
        return CitationContributorshipBuilder.fromJson(
          toJson(),
        );
      case 'citationentry':
        return CitationEntryBuilder.fromJson(
          toJson(),
        );
      case 'citation_entry':
        return CitationEntryBuilder.fromJson(
          toJson(),
        );
      case 'citationaffiliationinfo':
        return CitationAffiliationInfoBuilder.fromJson(
          toJson(),
        );
      case 'citation_affiliationinfo':
        return CitationAffiliationInfoBuilder.fromJson(
          toJson(),
        );
      case 'citationcontributioninstance':
        return CitationContributionInstanceBuilder.fromJson(
          toJson(),
        );
      case 'citation_contributioninstance':
        return CitationContributionInstanceBuilder.fromJson(
          toJson(),
        );
      case 'citationsummary1':
        return CitationSummary1Builder.fromJson(
          toJson(),
        );
      case 'citation_summary1':
        return CitationSummary1Builder.fromJson(
          toJson(),
        );
      case 'claim':
        return ClaimBuilder.fromJson(
          toJson(),
        );
      case 'claimrelated':
        return ClaimRelatedBuilder.fromJson(
          toJson(),
        );
      case 'claim_related':
        return ClaimRelatedBuilder.fromJson(
          toJson(),
        );
      case 'claimpayee':
        return ClaimPayeeBuilder.fromJson(
          toJson(),
        );
      case 'claim_payee':
        return ClaimPayeeBuilder.fromJson(
          toJson(),
        );
      case 'claimcareteam':
        return ClaimCareTeamBuilder.fromJson(
          toJson(),
        );
      case 'claim_careteam':
        return ClaimCareTeamBuilder.fromJson(
          toJson(),
        );
      case 'claimsupportinginfo':
        return ClaimSupportingInfoBuilder.fromJson(
          toJson(),
        );
      case 'claim_supportinginfo':
        return ClaimSupportingInfoBuilder.fromJson(
          toJson(),
        );
      case 'claimdiagnosis':
        return ClaimDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'claim_diagnosis':
        return ClaimDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'claimprocedure':
        return ClaimProcedureBuilder.fromJson(
          toJson(),
        );
      case 'claim_procedure':
        return ClaimProcedureBuilder.fromJson(
          toJson(),
        );
      case 'claiminsurance':
        return ClaimInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'claim_insurance':
        return ClaimInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'claimaccident':
        return ClaimAccidentBuilder.fromJson(
          toJson(),
        );
      case 'claim_accident':
        return ClaimAccidentBuilder.fromJson(
          toJson(),
        );
      case 'claimitem':
        return ClaimItemBuilder.fromJson(
          toJson(),
        );
      case 'claim_item':
        return ClaimItemBuilder.fromJson(
          toJson(),
        );
      case 'claimdetail':
        return ClaimDetailBuilder.fromJson(
          toJson(),
        );
      case 'claim_detail':
        return ClaimDetailBuilder.fromJson(
          toJson(),
        );
      case 'claimsubdetail':
        return ClaimSubDetailBuilder.fromJson(
          toJson(),
        );
      case 'claim_subdetail':
        return ClaimSubDetailBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse':
        return ClaimResponseBuilder.fromJson(
          toJson(),
        );
      case 'claimresponseitem':
        return ClaimResponseItemBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_item':
        return ClaimResponseItemBuilder.fromJson(
          toJson(),
        );
      case 'claimresponseadjudication':
        return ClaimResponseAdjudicationBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_adjudication':
        return ClaimResponseAdjudicationBuilder.fromJson(
          toJson(),
        );
      case 'claimresponsedetail':
        return ClaimResponseDetailBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_detail':
        return ClaimResponseDetailBuilder.fromJson(
          toJson(),
        );
      case 'claimresponsesubdetail':
        return ClaimResponseSubDetailBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_subdetail':
        return ClaimResponseSubDetailBuilder.fromJson(
          toJson(),
        );
      case 'claimresponseadditem':
        return ClaimResponseAddItemBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_additem':
        return ClaimResponseAddItemBuilder.fromJson(
          toJson(),
        );
      case 'claimresponsedetail1':
        return ClaimResponseDetail1Builder.fromJson(
          toJson(),
        );
      case 'claimresponse_detail1':
        return ClaimResponseDetail1Builder.fromJson(
          toJson(),
        );
      case 'claimresponsesubdetail1':
        return ClaimResponseSubDetail1Builder.fromJson(
          toJson(),
        );
      case 'claimresponse_subdetail1':
        return ClaimResponseSubDetail1Builder.fromJson(
          toJson(),
        );
      case 'claimresponsetotal':
        return ClaimResponseTotalBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_total':
        return ClaimResponseTotalBuilder.fromJson(
          toJson(),
        );
      case 'claimresponsepayment':
        return ClaimResponsePaymentBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_payment':
        return ClaimResponsePaymentBuilder.fromJson(
          toJson(),
        );
      case 'claimresponseprocessnote':
        return ClaimResponseProcessNoteBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_processnote':
        return ClaimResponseProcessNoteBuilder.fromJson(
          toJson(),
        );
      case 'claimresponseinsurance':
        return ClaimResponseInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_insurance':
        return ClaimResponseInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'claimresponseerror':
        return ClaimResponseErrorBuilder.fromJson(
          toJson(),
        );
      case 'claimresponse_error':
        return ClaimResponseErrorBuilder.fromJson(
          toJson(),
        );
      case 'clinicalimpression':
        return ClinicalImpressionBuilder.fromJson(
          toJson(),
        );
      case 'clinicalimpressioninvestigation':
        return ClinicalImpressionInvestigationBuilder.fromJson(
          toJson(),
        );
      case 'clinicalimpression_investigation':
        return ClinicalImpressionInvestigationBuilder.fromJson(
          toJson(),
        );
      case 'clinicalimpressionfinding':
        return ClinicalImpressionFindingBuilder.fromJson(
          toJson(),
        );
      case 'clinicalimpression_finding':
        return ClinicalImpressionFindingBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition':
        return ClinicalUseDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitioncontraindication':
        return ClinicalUseDefinitionContraindicationBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_contraindication':
        return ClinicalUseDefinitionContraindicationBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitionothertherapy':
        return ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_othertherapy':
        return ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitionindication':
        return ClinicalUseDefinitionIndicationBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_indication':
        return ClinicalUseDefinitionIndicationBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitioninteraction':
        return ClinicalUseDefinitionInteractionBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_interaction':
        return ClinicalUseDefinitionInteractionBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitioninteractant':
        return ClinicalUseDefinitionInteractantBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_interactant':
        return ClinicalUseDefinitionInteractantBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitionundesirableeffect':
        return ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_undesirableeffect':
        return ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinitionwarning':
        return ClinicalUseDefinitionWarningBuilder.fromJson(
          toJson(),
        );
      case 'clinicalusedefinition_warning':
        return ClinicalUseDefinitionWarningBuilder.fromJson(
          toJson(),
        );
      case 'codesystem':
        return CodeSystemBuilder.fromJson(
          toJson(),
        );
      case 'codesystemfilter':
        return CodeSystemFilterBuilder.fromJson(
          toJson(),
        );
      case 'codesystem_filter':
        return CodeSystemFilterBuilder.fromJson(
          toJson(),
        );
      case 'codesystemproperty':
        return CodeSystemPropertyBuilder.fromJson(
          toJson(),
        );
      case 'codesystem_property':
        return CodeSystemPropertyBuilder.fromJson(
          toJson(),
        );
      case 'codesystemconcept':
        return CodeSystemConceptBuilder.fromJson(
          toJson(),
        );
      case 'codesystem_concept':
        return CodeSystemConceptBuilder.fromJson(
          toJson(),
        );
      case 'codesystemdesignation':
        return CodeSystemDesignationBuilder.fromJson(
          toJson(),
        );
      case 'codesystem_designation':
        return CodeSystemDesignationBuilder.fromJson(
          toJson(),
        );
      case 'codesystemproperty1':
        return CodeSystemProperty1Builder.fromJson(
          toJson(),
        );
      case 'codesystem_property1':
        return CodeSystemProperty1Builder.fromJson(
          toJson(),
        );
      case 'communication':
        return CommunicationBuilder.fromJson(
          toJson(),
        );
      case 'communicationpayload':
        return CommunicationPayloadBuilder.fromJson(
          toJson(),
        );
      case 'communication_payload':
        return CommunicationPayloadBuilder.fromJson(
          toJson(),
        );
      case 'communicationrequest':
        return CommunicationRequestBuilder.fromJson(
          toJson(),
        );
      case 'communicationrequestpayload':
        return CommunicationRequestPayloadBuilder.fromJson(
          toJson(),
        );
      case 'communicationrequest_payload':
        return CommunicationRequestPayloadBuilder.fromJson(
          toJson(),
        );
      case 'compartmentdefinition':
        return CompartmentDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'compartmentdefinitionresource':
        return CompartmentDefinitionResourceBuilder.fromJson(
          toJson(),
        );
      case 'compartmentdefinition_resource':
        return CompartmentDefinitionResourceBuilder.fromJson(
          toJson(),
        );
      case 'composition':
        return CompositionBuilder.fromJson(
          toJson(),
        );
      case 'compositionattester':
        return CompositionAttesterBuilder.fromJson(
          toJson(),
        );
      case 'composition_attester':
        return CompositionAttesterBuilder.fromJson(
          toJson(),
        );
      case 'compositionrelatesto':
        return CompositionRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'composition_relatesto':
        return CompositionRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'compositionevent':
        return CompositionEventBuilder.fromJson(
          toJson(),
        );
      case 'composition_event':
        return CompositionEventBuilder.fromJson(
          toJson(),
        );
      case 'compositionsection':
        return CompositionSectionBuilder.fromJson(
          toJson(),
        );
      case 'composition_section':
        return CompositionSectionBuilder.fromJson(
          toJson(),
        );
      case 'conceptmap':
        return ConceptMapBuilder.fromJson(
          toJson(),
        );
      case 'conceptmapgroup':
        return ConceptMapGroupBuilder.fromJson(
          toJson(),
        );
      case 'conceptmap_group':
        return ConceptMapGroupBuilder.fromJson(
          toJson(),
        );
      case 'conceptmapelement':
        return ConceptMapElementBuilder.fromJson(
          toJson(),
        );
      case 'conceptmap_element':
        return ConceptMapElementBuilder.fromJson(
          toJson(),
        );
      case 'conceptmaptarget':
        return ConceptMapTargetBuilder.fromJson(
          toJson(),
        );
      case 'conceptmap_target':
        return ConceptMapTargetBuilder.fromJson(
          toJson(),
        );
      case 'conceptmapdependson':
        return ConceptMapDependsOnBuilder.fromJson(
          toJson(),
        );
      case 'conceptmap_dependson':
        return ConceptMapDependsOnBuilder.fromJson(
          toJson(),
        );
      case 'conceptmapunmapped':
        return ConceptMapUnmappedBuilder.fromJson(
          toJson(),
        );
      case 'conceptmap_unmapped':
        return ConceptMapUnmappedBuilder.fromJson(
          toJson(),
        );
      case 'condition':
        return ConditionBuilder.fromJson(
          toJson(),
        );
      case 'conditionstage':
        return ConditionStageBuilder.fromJson(
          toJson(),
        );
      case 'condition_stage':
        return ConditionStageBuilder.fromJson(
          toJson(),
        );
      case 'conditionevidence':
        return ConditionEvidenceBuilder.fromJson(
          toJson(),
        );
      case 'condition_evidence':
        return ConditionEvidenceBuilder.fromJson(
          toJson(),
        );
      case 'consent':
        return ConsentBuilder.fromJson(
          toJson(),
        );
      case 'consentpolicy':
        return ConsentPolicyBuilder.fromJson(
          toJson(),
        );
      case 'consent_policy':
        return ConsentPolicyBuilder.fromJson(
          toJson(),
        );
      case 'consentverification':
        return ConsentVerificationBuilder.fromJson(
          toJson(),
        );
      case 'consent_verification':
        return ConsentVerificationBuilder.fromJson(
          toJson(),
        );
      case 'consentprovision':
        return ConsentProvisionBuilder.fromJson(
          toJson(),
        );
      case 'consent_provision':
        return ConsentProvisionBuilder.fromJson(
          toJson(),
        );
      case 'consentactor':
        return ConsentActorBuilder.fromJson(
          toJson(),
        );
      case 'consent_actor':
        return ConsentActorBuilder.fromJson(
          toJson(),
        );
      case 'consentdata':
        return ConsentDataBuilder.fromJson(
          toJson(),
        );
      case 'consent_data':
        return ConsentDataBuilder.fromJson(
          toJson(),
        );
      case 'contract':
        return ContractBuilder.fromJson(
          toJson(),
        );
      case 'contractcontentdefinition':
        return ContractContentDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'contract_contentdefinition':
        return ContractContentDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'contractterm':
        return ContractTermBuilder.fromJson(
          toJson(),
        );
      case 'contract_term':
        return ContractTermBuilder.fromJson(
          toJson(),
        );
      case 'contractsecuritylabel':
        return ContractSecurityLabelBuilder.fromJson(
          toJson(),
        );
      case 'contract_securitylabel':
        return ContractSecurityLabelBuilder.fromJson(
          toJson(),
        );
      case 'contractoffer':
        return ContractOfferBuilder.fromJson(
          toJson(),
        );
      case 'contract_offer':
        return ContractOfferBuilder.fromJson(
          toJson(),
        );
      case 'contractparty':
        return ContractPartyBuilder.fromJson(
          toJson(),
        );
      case 'contract_party':
        return ContractPartyBuilder.fromJson(
          toJson(),
        );
      case 'contractanswer':
        return ContractAnswerBuilder.fromJson(
          toJson(),
        );
      case 'contract_answer':
        return ContractAnswerBuilder.fromJson(
          toJson(),
        );
      case 'contractasset':
        return ContractAssetBuilder.fromJson(
          toJson(),
        );
      case 'contract_asset':
        return ContractAssetBuilder.fromJson(
          toJson(),
        );
      case 'contractcontext':
        return ContractContextBuilder.fromJson(
          toJson(),
        );
      case 'contract_context':
        return ContractContextBuilder.fromJson(
          toJson(),
        );
      case 'contractvalueditem':
        return ContractValuedItemBuilder.fromJson(
          toJson(),
        );
      case 'contract_valueditem':
        return ContractValuedItemBuilder.fromJson(
          toJson(),
        );
      case 'contractaction':
        return ContractActionBuilder.fromJson(
          toJson(),
        );
      case 'contract_action':
        return ContractActionBuilder.fromJson(
          toJson(),
        );
      case 'contractsubject':
        return ContractSubjectBuilder.fromJson(
          toJson(),
        );
      case 'contract_subject':
        return ContractSubjectBuilder.fromJson(
          toJson(),
        );
      case 'contractsigner':
        return ContractSignerBuilder.fromJson(
          toJson(),
        );
      case 'contract_signer':
        return ContractSignerBuilder.fromJson(
          toJson(),
        );
      case 'contractfriendly':
        return ContractFriendlyBuilder.fromJson(
          toJson(),
        );
      case 'contract_friendly':
        return ContractFriendlyBuilder.fromJson(
          toJson(),
        );
      case 'contractlegal':
        return ContractLegalBuilder.fromJson(
          toJson(),
        );
      case 'contract_legal':
        return ContractLegalBuilder.fromJson(
          toJson(),
        );
      case 'contractrule':
        return ContractRuleBuilder.fromJson(
          toJson(),
        );
      case 'contract_rule':
        return ContractRuleBuilder.fromJson(
          toJson(),
        );
      case 'coverage':
        return CoverageBuilder.fromJson(
          toJson(),
        );
      case 'coverageclass':
        return CoverageClassBuilder.fromJson(
          toJson(),
        );
      case 'coverage_class':
        return CoverageClassBuilder.fromJson(
          toJson(),
        );
      case 'coveragecosttobeneficiary':
        return CoverageCostToBeneficiaryBuilder.fromJson(
          toJson(),
        );
      case 'coverage_costtobeneficiary':
        return CoverageCostToBeneficiaryBuilder.fromJson(
          toJson(),
        );
      case 'coverageexception':
        return CoverageExceptionBuilder.fromJson(
          toJson(),
        );
      case 'coverage_exception':
        return CoverageExceptionBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequest':
        return CoverageEligibilityRequestBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequestsupportinginfo':
        return CoverageEligibilityRequestSupportingInfoBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequest_supportinginfo':
        return CoverageEligibilityRequestSupportingInfoBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequestinsurance':
        return CoverageEligibilityRequestInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequest_insurance':
        return CoverageEligibilityRequestInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequestitem':
        return CoverageEligibilityRequestItemBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequest_item':
        return CoverageEligibilityRequestItemBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequestdiagnosis':
        return CoverageEligibilityRequestDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityrequest_diagnosis':
        return CoverageEligibilityRequestDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponse':
        return CoverageEligibilityResponseBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponseinsurance':
        return CoverageEligibilityResponseInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponse_insurance':
        return CoverageEligibilityResponseInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponseitem':
        return CoverageEligibilityResponseItemBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponse_item':
        return CoverageEligibilityResponseItemBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponsebenefit':
        return CoverageEligibilityResponseBenefitBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponse_benefit':
        return CoverageEligibilityResponseBenefitBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponseerror':
        return CoverageEligibilityResponseErrorBuilder.fromJson(
          toJson(),
        );
      case 'coverageeligibilityresponse_error':
        return CoverageEligibilityResponseErrorBuilder.fromJson(
          toJson(),
        );
      case 'detectedissue':
        return DetectedIssueBuilder.fromJson(
          toJson(),
        );
      case 'detectedissueevidence':
        return DetectedIssueEvidenceBuilder.fromJson(
          toJson(),
        );
      case 'detectedissue_evidence':
        return DetectedIssueEvidenceBuilder.fromJson(
          toJson(),
        );
      case 'detectedissuemitigation':
        return DetectedIssueMitigationBuilder.fromJson(
          toJson(),
        );
      case 'detectedissue_mitigation':
        return DetectedIssueMitigationBuilder.fromJson(
          toJson(),
        );
      case 'device':
        return DeviceBuilder.fromJson(
          toJson(),
        );
      case 'deviceudicarrier':
        return DeviceUdiCarrierBuilder.fromJson(
          toJson(),
        );
      case 'device_udicarrier':
        return DeviceUdiCarrierBuilder.fromJson(
          toJson(),
        );
      case 'devicedevicename':
        return DeviceDeviceNameBuilder.fromJson(
          toJson(),
        );
      case 'device_devicename':
        return DeviceDeviceNameBuilder.fromJson(
          toJson(),
        );
      case 'devicespecialization':
        return DeviceSpecializationBuilder.fromJson(
          toJson(),
        );
      case 'device_specialization':
        return DeviceSpecializationBuilder.fromJson(
          toJson(),
        );
      case 'deviceversion':
        return DeviceVersionBuilder.fromJson(
          toJson(),
        );
      case 'device_version':
        return DeviceVersionBuilder.fromJson(
          toJson(),
        );
      case 'deviceproperty':
        return DevicePropertyBuilder.fromJson(
          toJson(),
        );
      case 'device_property':
        return DevicePropertyBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition':
        return DeviceDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinitionudideviceidentifier':
        return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition_udideviceidentifier':
        return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinitiondevicename':
        return DeviceDefinitionDeviceNameBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition_devicename':
        return DeviceDefinitionDeviceNameBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinitionspecialization':
        return DeviceDefinitionSpecializationBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition_specialization':
        return DeviceDefinitionSpecializationBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinitioncapability':
        return DeviceDefinitionCapabilityBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition_capability':
        return DeviceDefinitionCapabilityBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinitionproperty':
        return DeviceDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition_property':
        return DeviceDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinitionmaterial':
        return DeviceDefinitionMaterialBuilder.fromJson(
          toJson(),
        );
      case 'devicedefinition_material':
        return DeviceDefinitionMaterialBuilder.fromJson(
          toJson(),
        );
      case 'devicemetric':
        return DeviceMetricBuilder.fromJson(
          toJson(),
        );
      case 'devicemetriccalibration':
        return DeviceMetricCalibrationBuilder.fromJson(
          toJson(),
        );
      case 'devicemetric_calibration':
        return DeviceMetricCalibrationBuilder.fromJson(
          toJson(),
        );
      case 'devicerequest':
        return DeviceRequestBuilder.fromJson(
          toJson(),
        );
      case 'devicerequestparameter':
        return DeviceRequestParameterBuilder.fromJson(
          toJson(),
        );
      case 'devicerequest_parameter':
        return DeviceRequestParameterBuilder.fromJson(
          toJson(),
        );
      case 'deviceusestatement':
        return DeviceUseStatementBuilder.fromJson(
          toJson(),
        );
      case 'diagnosticreport':
        return DiagnosticReportBuilder.fromJson(
          toJson(),
        );
      case 'diagnosticreportmedia':
        return DiagnosticReportMediaBuilder.fromJson(
          toJson(),
        );
      case 'diagnosticreport_media':
        return DiagnosticReportMediaBuilder.fromJson(
          toJson(),
        );
      case 'documentmanifest':
        return DocumentManifestBuilder.fromJson(
          toJson(),
        );
      case 'documentmanifestrelated':
        return DocumentManifestRelatedBuilder.fromJson(
          toJson(),
        );
      case 'documentmanifest_related':
        return DocumentManifestRelatedBuilder.fromJson(
          toJson(),
        );
      case 'documentreference':
        return DocumentReferenceBuilder.fromJson(
          toJson(),
        );
      case 'documentreferencerelatesto':
        return DocumentReferenceRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'documentreference_relatesto':
        return DocumentReferenceRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'documentreferencecontent':
        return DocumentReferenceContentBuilder.fromJson(
          toJson(),
        );
      case 'documentreference_content':
        return DocumentReferenceContentBuilder.fromJson(
          toJson(),
        );
      case 'documentreferencecontext':
        return DocumentReferenceContextBuilder.fromJson(
          toJson(),
        );
      case 'documentreference_context':
        return DocumentReferenceContextBuilder.fromJson(
          toJson(),
        );
      case 'encounter':
        return EncounterBuilder.fromJson(
          toJson(),
        );
      case 'encounterstatushistory':
        return EncounterStatusHistoryBuilder.fromJson(
          toJson(),
        );
      case 'encounter_statushistory':
        return EncounterStatusHistoryBuilder.fromJson(
          toJson(),
        );
      case 'encounterclasshistory':
        return EncounterClassHistoryBuilder.fromJson(
          toJson(),
        );
      case 'encounter_classhistory':
        return EncounterClassHistoryBuilder.fromJson(
          toJson(),
        );
      case 'encounterparticipant':
        return EncounterParticipantBuilder.fromJson(
          toJson(),
        );
      case 'encounter_participant':
        return EncounterParticipantBuilder.fromJson(
          toJson(),
        );
      case 'encounterdiagnosis':
        return EncounterDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'encounter_diagnosis':
        return EncounterDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'encounterhospitalization':
        return EncounterHospitalizationBuilder.fromJson(
          toJson(),
        );
      case 'encounter_hospitalization':
        return EncounterHospitalizationBuilder.fromJson(
          toJson(),
        );
      case 'encounterlocation':
        return EncounterLocationBuilder.fromJson(
          toJson(),
        );
      case 'encounter_location':
        return EncounterLocationBuilder.fromJson(
          toJson(),
        );
      case 'fhirendpoint':
        return FhirEndpointBuilder.fromJson(
          toJson(),
        );
      case 'endpoint':
        return FhirEndpointBuilder.fromJson(
          toJson(),
        );
      case 'enrollmentrequest':
        return EnrollmentRequestBuilder.fromJson(
          toJson(),
        );
      case 'enrollmentresponse':
        return EnrollmentResponseBuilder.fromJson(
          toJson(),
        );
      case 'episodeofcare':
        return EpisodeOfCareBuilder.fromJson(
          toJson(),
        );
      case 'episodeofcarestatushistory':
        return EpisodeOfCareStatusHistoryBuilder.fromJson(
          toJson(),
        );
      case 'episodeofcare_statushistory':
        return EpisodeOfCareStatusHistoryBuilder.fromJson(
          toJson(),
        );
      case 'episodeofcarediagnosis':
        return EpisodeOfCareDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'episodeofcare_diagnosis':
        return EpisodeOfCareDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'eventdefinition':
        return EventDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'evidence':
        return EvidenceBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariabledefinition':
        return EvidenceVariableDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'evidence_variabledefinition':
        return EvidenceVariableDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'evidencestatistic':
        return EvidenceStatisticBuilder.fromJson(
          toJson(),
        );
      case 'evidence_statistic':
        return EvidenceStatisticBuilder.fromJson(
          toJson(),
        );
      case 'evidencesamplesize':
        return EvidenceSampleSizeBuilder.fromJson(
          toJson(),
        );
      case 'evidence_samplesize':
        return EvidenceSampleSizeBuilder.fromJson(
          toJson(),
        );
      case 'evidenceattributeestimate':
        return EvidenceAttributeEstimateBuilder.fromJson(
          toJson(),
        );
      case 'evidence_attributeestimate':
        return EvidenceAttributeEstimateBuilder.fromJson(
          toJson(),
        );
      case 'evidencemodelcharacteristic':
        return EvidenceModelCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'evidence_modelcharacteristic':
        return EvidenceModelCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'evidencemodelcharacteristicvariable':
        return EvidenceModelCharacteristicVariableBuilder.fromJson(
          toJson(),
        );
      case 'evidence_variable':
        return EvidenceModelCharacteristicVariableBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariable':
        return EvidenceModelCharacteristicVariableBuilder.fromJson(
          toJson(),
        );
      case 'evidencecertainty':
        return EvidenceCertaintyBuilder.fromJson(
          toJson(),
        );
      case 'evidence_certainty':
        return EvidenceCertaintyBuilder.fromJson(
          toJson(),
        );
      case 'evidencereport':
        return EvidenceReportBuilder.fromJson(
          toJson(),
        );
      case 'evidencereportsubject':
        return EvidenceReportSubjectBuilder.fromJson(
          toJson(),
        );
      case 'evidencereport_subject':
        return EvidenceReportSubjectBuilder.fromJson(
          toJson(),
        );
      case 'evidencereportcharacteristic':
        return EvidenceReportCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'evidencereport_characteristic':
        return EvidenceReportCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'evidencereportrelatesto':
        return EvidenceReportRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'evidencereport_relatesto':
        return EvidenceReportRelatesToBuilder.fromJson(
          toJson(),
        );
      case 'evidencereportsection':
        return EvidenceReportSectionBuilder.fromJson(
          toJson(),
        );
      case 'evidencereport_section':
        return EvidenceReportSectionBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariablecharacteristic':
        return EvidenceVariableCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariable_characteristic':
        return EvidenceVariableCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariabletimefromstart':
        return EvidenceVariableTimeFromStartBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariable_timefromstart':
        return EvidenceVariableTimeFromStartBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariablecategory':
        return EvidenceVariableCategoryBuilder.fromJson(
          toJson(),
        );
      case 'evidencevariable_category':
        return EvidenceVariableCategoryBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario':
        return ExampleScenarioBuilder.fromJson(
          toJson(),
        );
      case 'examplescenarioactor':
        return ExampleScenarioActorBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_actor':
        return ExampleScenarioActorBuilder.fromJson(
          toJson(),
        );
      case 'examplescenarioinstance':
        return ExampleScenarioInstanceBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_instance':
        return ExampleScenarioInstanceBuilder.fromJson(
          toJson(),
        );
      case 'examplescenarioversion':
        return ExampleScenarioVersionBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_version':
        return ExampleScenarioVersionBuilder.fromJson(
          toJson(),
        );
      case 'examplescenariocontainedinstance':
        return ExampleScenarioContainedInstanceBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_containedinstance':
        return ExampleScenarioContainedInstanceBuilder.fromJson(
          toJson(),
        );
      case 'examplescenarioprocess':
        return ExampleScenarioProcessBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_process':
        return ExampleScenarioProcessBuilder.fromJson(
          toJson(),
        );
      case 'examplescenariostep':
        return ExampleScenarioStepBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_step':
        return ExampleScenarioStepBuilder.fromJson(
          toJson(),
        );
      case 'examplescenariooperation':
        return ExampleScenarioOperationBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_operation':
        return ExampleScenarioOperationBuilder.fromJson(
          toJson(),
        );
      case 'examplescenarioalternative':
        return ExampleScenarioAlternativeBuilder.fromJson(
          toJson(),
        );
      case 'examplescenario_alternative':
        return ExampleScenarioAlternativeBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit':
        return ExplanationOfBenefitBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitrelated':
        return ExplanationOfBenefitRelatedBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_related':
        return ExplanationOfBenefitRelatedBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitpayee':
        return ExplanationOfBenefitPayeeBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_payee':
        return ExplanationOfBenefitPayeeBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitcareteam':
        return ExplanationOfBenefitCareTeamBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_careteam':
        return ExplanationOfBenefitCareTeamBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitsupportinginfo':
        return ExplanationOfBenefitSupportingInfoBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_supportinginfo':
        return ExplanationOfBenefitSupportingInfoBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitdiagnosis':
        return ExplanationOfBenefitDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_diagnosis':
        return ExplanationOfBenefitDiagnosisBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitprocedure':
        return ExplanationOfBenefitProcedureBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_procedure':
        return ExplanationOfBenefitProcedureBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitinsurance':
        return ExplanationOfBenefitInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_insurance':
        return ExplanationOfBenefitInsuranceBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitaccident':
        return ExplanationOfBenefitAccidentBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_accident':
        return ExplanationOfBenefitAccidentBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefititem':
        return ExplanationOfBenefitItemBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_item':
        return ExplanationOfBenefitItemBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitadjudication':
        return ExplanationOfBenefitAdjudicationBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_adjudication':
        return ExplanationOfBenefitAdjudicationBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitdetail':
        return ExplanationOfBenefitDetailBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_detail':
        return ExplanationOfBenefitDetailBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitsubdetail':
        return ExplanationOfBenefitSubDetailBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_subdetail':
        return ExplanationOfBenefitSubDetailBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitadditem':
        return ExplanationOfBenefitAddItemBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_additem':
        return ExplanationOfBenefitAddItemBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitdetail1':
        return ExplanationOfBenefitDetail1Builder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_detail1':
        return ExplanationOfBenefitDetail1Builder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitsubdetail1':
        return ExplanationOfBenefitSubDetail1Builder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_subdetail1':
        return ExplanationOfBenefitSubDetail1Builder.fromJson(
          toJson(),
        );
      case 'explanationofbenefittotal':
        return ExplanationOfBenefitTotalBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_total':
        return ExplanationOfBenefitTotalBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitpayment':
        return ExplanationOfBenefitPaymentBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_payment':
        return ExplanationOfBenefitPaymentBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitprocessnote':
        return ExplanationOfBenefitProcessNoteBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_processnote':
        return ExplanationOfBenefitProcessNoteBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitbenefitbalance':
        return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_benefitbalance':
        return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefitfinancial':
        return ExplanationOfBenefitFinancialBuilder.fromJson(
          toJson(),
        );
      case 'explanationofbenefit_financial':
        return ExplanationOfBenefitFinancialBuilder.fromJson(
          toJson(),
        );
      case 'familymemberhistory':
        return FamilyMemberHistoryBuilder.fromJson(
          toJson(),
        );
      case 'familymemberhistorycondition':
        return FamilyMemberHistoryConditionBuilder.fromJson(
          toJson(),
        );
      case 'familymemberhistory_condition':
        return FamilyMemberHistoryConditionBuilder.fromJson(
          toJson(),
        );
      case 'flag':
        return FlagBuilder.fromJson(
          toJson(),
        );
      case 'goal':
        return GoalBuilder.fromJson(
          toJson(),
        );
      case 'goaltarget':
        return GoalTargetBuilder.fromJson(
          toJson(),
        );
      case 'goal_target':
        return GoalTargetBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinition':
        return GraphDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinitionlink':
        return GraphDefinitionLinkBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinition_link':
        return GraphDefinitionLinkBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinitiontarget':
        return GraphDefinitionTargetBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinition_target':
        return GraphDefinitionTargetBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinitioncompartment':
        return GraphDefinitionCompartmentBuilder.fromJson(
          toJson(),
        );
      case 'graphdefinition_compartment':
        return GraphDefinitionCompartmentBuilder.fromJson(
          toJson(),
        );
      case 'fhirgroup':
        return FhirGroupBuilder.fromJson(
          toJson(),
        );
      case 'group':
        return FhirGroupBuilder.fromJson(
          toJson(),
        );
      case 'groupcharacteristic':
        return GroupCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'group_characteristic':
        return GroupCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'groupmember':
        return GroupMemberBuilder.fromJson(
          toJson(),
        );
      case 'group_member':
        return GroupMemberBuilder.fromJson(
          toJson(),
        );
      case 'guidanceresponse':
        return GuidanceResponseBuilder.fromJson(
          toJson(),
        );
      case 'healthcareservice':
        return HealthcareServiceBuilder.fromJson(
          toJson(),
        );
      case 'healthcareserviceeligibility':
        return HealthcareServiceEligibilityBuilder.fromJson(
          toJson(),
        );
      case 'healthcareservice_eligibility':
        return HealthcareServiceEligibilityBuilder.fromJson(
          toJson(),
        );
      case 'healthcareserviceavailabletime':
        return HealthcareServiceAvailableTimeBuilder.fromJson(
          toJson(),
        );
      case 'healthcareservice_availabletime':
        return HealthcareServiceAvailableTimeBuilder.fromJson(
          toJson(),
        );
      case 'healthcareservicenotavailable':
        return HealthcareServiceNotAvailableBuilder.fromJson(
          toJson(),
        );
      case 'healthcareservice_notavailable':
        return HealthcareServiceNotAvailableBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudy':
        return ImagingStudyBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudyseries':
        return ImagingStudySeriesBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudy_series':
        return ImagingStudySeriesBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudyperformer':
        return ImagingStudyPerformerBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudy_performer':
        return ImagingStudyPerformerBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudyinstance':
        return ImagingStudyInstanceBuilder.fromJson(
          toJson(),
        );
      case 'imagingstudy_instance':
        return ImagingStudyInstanceBuilder.fromJson(
          toJson(),
        );
      case 'immunization':
        return ImmunizationBuilder.fromJson(
          toJson(),
        );
      case 'immunizationperformer':
        return ImmunizationPerformerBuilder.fromJson(
          toJson(),
        );
      case 'immunization_performer':
        return ImmunizationPerformerBuilder.fromJson(
          toJson(),
        );
      case 'immunizationeducation':
        return ImmunizationEducationBuilder.fromJson(
          toJson(),
        );
      case 'immunization_education':
        return ImmunizationEducationBuilder.fromJson(
          toJson(),
        );
      case 'immunizationreaction':
        return ImmunizationReactionBuilder.fromJson(
          toJson(),
        );
      case 'immunization_reaction':
        return ImmunizationReactionBuilder.fromJson(
          toJson(),
        );
      case 'immunizationprotocolapplied':
        return ImmunizationProtocolAppliedBuilder.fromJson(
          toJson(),
        );
      case 'immunization_protocolapplied':
        return ImmunizationProtocolAppliedBuilder.fromJson(
          toJson(),
        );
      case 'immunizationevaluation':
        return ImmunizationEvaluationBuilder.fromJson(
          toJson(),
        );
      case 'immunizationrecommendation':
        return ImmunizationRecommendationBuilder.fromJson(
          toJson(),
        );
      case 'immunizationrecommendationrecommendation':
        return ImmunizationRecommendationRecommendationBuilder.fromJson(
          toJson(),
        );
      case 'immunizationrecommendation_recommendation':
        return ImmunizationRecommendationRecommendationBuilder.fromJson(
          toJson(),
        );
      case 'immunizationrecommendationdatecriterion':
        return ImmunizationRecommendationDateCriterionBuilder.fromJson(
          toJson(),
        );
      case 'immunizationrecommendation_datecriterion':
        return ImmunizationRecommendationDateCriterionBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide':
        return ImplementationGuideBuilder.fromJson(
          toJson(),
        );
      case 'implementationguidedependson':
        return ImplementationGuideDependsOnBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_dependson':
        return ImplementationGuideDependsOnBuilder.fromJson(
          toJson(),
        );
      case 'implementationguideglobal':
        return ImplementationGuideGlobalBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_global':
        return ImplementationGuideGlobalBuilder.fromJson(
          toJson(),
        );
      case 'implementationguidedefinition':
        return ImplementationGuideDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_definition':
        return ImplementationGuideDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'implementationguidegrouping':
        return ImplementationGuideGroupingBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_grouping':
        return ImplementationGuideGroupingBuilder.fromJson(
          toJson(),
        );
      case 'implementationguideresource':
        return ImplementationGuideResourceBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_resource':
        return ImplementationGuideResourceBuilder.fromJson(
          toJson(),
        );
      case 'implementationguidepage':
        return ImplementationGuidePageBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_page':
        return ImplementationGuidePageBuilder.fromJson(
          toJson(),
        );
      case 'implementationguideparameter':
        return ImplementationGuideParameterBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_parameter':
        return ImplementationGuideParameterBuilder.fromJson(
          toJson(),
        );
      case 'implementationguidetemplate':
        return ImplementationGuideTemplateBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_template':
        return ImplementationGuideTemplateBuilder.fromJson(
          toJson(),
        );
      case 'implementationguidemanifest':
        return ImplementationGuideManifestBuilder.fromJson(
          toJson(),
        );
      case 'implementationguide_manifest':
        return ImplementationGuideManifestBuilder.fromJson(
          toJson(),
        );
      case 'implementationguideresource1':
        return ImplementationGuideResource1Builder.fromJson(
          toJson(),
        );
      case 'implementationguide_resource1':
        return ImplementationGuideResource1Builder.fromJson(
          toJson(),
        );
      case 'implementationguidepage1':
        return ImplementationGuidePage1Builder.fromJson(
          toJson(),
        );
      case 'implementationguide_page1':
        return ImplementationGuidePage1Builder.fromJson(
          toJson(),
        );
      case 'ingredient':
        return IngredientBuilder.fromJson(
          toJson(),
        );
      case 'ingredientmanufacturer':
        return IngredientManufacturerBuilder.fromJson(
          toJson(),
        );
      case 'ingredient_manufacturer':
        return IngredientManufacturerBuilder.fromJson(
          toJson(),
        );
      case 'ingredientsubstance':
        return IngredientSubstanceBuilder.fromJson(
          toJson(),
        );
      case 'ingredient_substance':
        return IngredientSubstanceBuilder.fromJson(
          toJson(),
        );
      case 'ingredientstrength':
        return IngredientStrengthBuilder.fromJson(
          toJson(),
        );
      case 'ingredient_strength':
        return IngredientStrengthBuilder.fromJson(
          toJson(),
        );
      case 'ingredientreferencestrength':
        return IngredientReferenceStrengthBuilder.fromJson(
          toJson(),
        );
      case 'ingredient_referencestrength':
        return IngredientReferenceStrengthBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan':
        return InsurancePlanBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplancontact':
        return InsurancePlanContactBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_contact':
        return InsurancePlanContactBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplancoverage':
        return InsurancePlanCoverageBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_coverage':
        return InsurancePlanCoverageBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplanbenefit':
        return InsurancePlanBenefitBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_benefit':
        return InsurancePlanBenefitBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplanlimit':
        return InsurancePlanLimitBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_limit':
        return InsurancePlanLimitBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplanplan':
        return InsurancePlanPlanBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_plan':
        return InsurancePlanPlanBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplangeneralcost':
        return InsurancePlanGeneralCostBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_generalcost':
        return InsurancePlanGeneralCostBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplanspecificcost':
        return InsurancePlanSpecificCostBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_specificcost':
        return InsurancePlanSpecificCostBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplanbenefit1':
        return InsurancePlanBenefit1Builder.fromJson(
          toJson(),
        );
      case 'insuranceplan_benefit1':
        return InsurancePlanBenefit1Builder.fromJson(
          toJson(),
        );
      case 'insuranceplancost':
        return InsurancePlanCostBuilder.fromJson(
          toJson(),
        );
      case 'insuranceplan_cost':
        return InsurancePlanCostBuilder.fromJson(
          toJson(),
        );
      case 'invoice':
        return InvoiceBuilder.fromJson(
          toJson(),
        );
      case 'invoiceparticipant':
        return InvoiceParticipantBuilder.fromJson(
          toJson(),
        );
      case 'invoice_participant':
        return InvoiceParticipantBuilder.fromJson(
          toJson(),
        );
      case 'invoicelineitem':
        return InvoiceLineItemBuilder.fromJson(
          toJson(),
        );
      case 'invoice_lineitem':
        return InvoiceLineItemBuilder.fromJson(
          toJson(),
        );
      case 'invoicepricecomponent':
        return InvoicePriceComponentBuilder.fromJson(
          toJson(),
        );
      case 'invoice_pricecomponent':
        return InvoicePriceComponentBuilder.fromJson(
          toJson(),
        );
      case 'library':
        return LibraryBuilder.fromJson(
          toJson(),
        );
      case 'linkage':
        return LinkageBuilder.fromJson(
          toJson(),
        );
      case 'linkageitem':
        return LinkageItemBuilder.fromJson(
          toJson(),
        );
      case 'linkage_item':
        return LinkageItemBuilder.fromJson(
          toJson(),
        );
      case 'fhirlist':
        return FhirListBuilder.fromJson(
          toJson(),
        );
      case 'list':
        return FhirListBuilder.fromJson(
          toJson(),
        );
      case 'listentry':
        return ListEntryBuilder.fromJson(
          toJson(),
        );
      case 'list_entry':
        return ListEntryBuilder.fromJson(
          toJson(),
        );
      case 'location':
        return LocationBuilder.fromJson(
          toJson(),
        );
      case 'locationposition':
        return LocationPositionBuilder.fromJson(
          toJson(),
        );
      case 'location_position':
        return LocationPositionBuilder.fromJson(
          toJson(),
        );
      case 'locationhoursofoperation':
        return LocationHoursOfOperationBuilder.fromJson(
          toJson(),
        );
      case 'location_hoursofoperation':
        return LocationHoursOfOperationBuilder.fromJson(
          toJson(),
        );
      case 'manufactureditemdefinition':
        return ManufacturedItemDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'manufactureditemdefinitionproperty':
        return ManufacturedItemDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'manufactureditemdefinition_property':
        return ManufacturedItemDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'measure':
        return MeasureBuilder.fromJson(
          toJson(),
        );
      case 'measuregroup':
        return MeasureGroupBuilder.fromJson(
          toJson(),
        );
      case 'measure_group':
        return MeasureGroupBuilder.fromJson(
          toJson(),
        );
      case 'measurepopulation':
        return MeasurePopulationBuilder.fromJson(
          toJson(),
        );
      case 'measure_population':
        return MeasurePopulationBuilder.fromJson(
          toJson(),
        );
      case 'measurestratifier':
        return MeasureStratifierBuilder.fromJson(
          toJson(),
        );
      case 'measure_stratifier':
        return MeasureStratifierBuilder.fromJson(
          toJson(),
        );
      case 'measurecomponent':
        return MeasureComponentBuilder.fromJson(
          toJson(),
        );
      case 'measure_component':
        return MeasureComponentBuilder.fromJson(
          toJson(),
        );
      case 'measuresupplementaldata':
        return MeasureSupplementalDataBuilder.fromJson(
          toJson(),
        );
      case 'measure_supplementaldata':
        return MeasureSupplementalDataBuilder.fromJson(
          toJson(),
        );
      case 'measurereport':
        return MeasureReportBuilder.fromJson(
          toJson(),
        );
      case 'measurereportgroup':
        return MeasureReportGroupBuilder.fromJson(
          toJson(),
        );
      case 'measurereport_group':
        return MeasureReportGroupBuilder.fromJson(
          toJson(),
        );
      case 'measurereportpopulation':
        return MeasureReportPopulationBuilder.fromJson(
          toJson(),
        );
      case 'measurereport_population':
        return MeasureReportPopulationBuilder.fromJson(
          toJson(),
        );
      case 'measurereportstratifier':
        return MeasureReportStratifierBuilder.fromJson(
          toJson(),
        );
      case 'measurereport_stratifier':
        return MeasureReportStratifierBuilder.fromJson(
          toJson(),
        );
      case 'measurereportstratum':
        return MeasureReportStratumBuilder.fromJson(
          toJson(),
        );
      case 'measurereport_stratum':
        return MeasureReportStratumBuilder.fromJson(
          toJson(),
        );
      case 'measurereportcomponent':
        return MeasureReportComponentBuilder.fromJson(
          toJson(),
        );
      case 'measurereport_component':
        return MeasureReportComponentBuilder.fromJson(
          toJson(),
        );
      case 'measurereportpopulation1':
        return MeasureReportPopulation1Builder.fromJson(
          toJson(),
        );
      case 'measurereport_population1':
        return MeasureReportPopulation1Builder.fromJson(
          toJson(),
        );
      case 'media':
        return MediaBuilder.fromJson(
          toJson(),
        );
      case 'medication':
        return MedicationBuilder.fromJson(
          toJson(),
        );
      case 'medicationingredient':
        return MedicationIngredientBuilder.fromJson(
          toJson(),
        );
      case 'medication_ingredient':
        return MedicationIngredientBuilder.fromJson(
          toJson(),
        );
      case 'medicationbatch':
        return MedicationBatchBuilder.fromJson(
          toJson(),
        );
      case 'medication_batch':
        return MedicationBatchBuilder.fromJson(
          toJson(),
        );
      case 'medicationadministration':
        return MedicationAdministrationBuilder.fromJson(
          toJson(),
        );
      case 'medicationadministrationperformer':
        return MedicationAdministrationPerformerBuilder.fromJson(
          toJson(),
        );
      case 'medicationadministration_performer':
        return MedicationAdministrationPerformerBuilder.fromJson(
          toJson(),
        );
      case 'medicationadministrationdosage':
        return MedicationAdministrationDosageBuilder.fromJson(
          toJson(),
        );
      case 'medicationadministration_dosage':
        return MedicationAdministrationDosageBuilder.fromJson(
          toJson(),
        );
      case 'medicationdispense':
        return MedicationDispenseBuilder.fromJson(
          toJson(),
        );
      case 'medicationdispenseperformer':
        return MedicationDispensePerformerBuilder.fromJson(
          toJson(),
        );
      case 'medicationdispense_performer':
        return MedicationDispensePerformerBuilder.fromJson(
          toJson(),
        );
      case 'medicationdispensesubstitution':
        return MedicationDispenseSubstitutionBuilder.fromJson(
          toJson(),
        );
      case 'medicationdispense_substitution':
        return MedicationDispenseSubstitutionBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge':
        return MedicationKnowledgeBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgerelatedmedicationknowledge':
        return MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
          toJson(),
        );

      case 'medicationknowledge_relatedmedicationknowledge':
        return MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
          toJson(),
        );

      case 'medicationknowledgemonograph':
        return MedicationKnowledgeMonographBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_monograph':
        return MedicationKnowledgeMonographBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgeingredient':
        return MedicationKnowledgeIngredientBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_ingredient':
        return MedicationKnowledgeIngredientBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgecost':
        return MedicationKnowledgeCostBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_cost':
        return MedicationKnowledgeCostBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgemonitoringprogram':
        return MedicationKnowledgeMonitoringProgramBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_monitoringprogram':
        return MedicationKnowledgeMonitoringProgramBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgeadministrationguidelines':
        return MedicationKnowledgeAdministrationGuidelinesBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_administrationguidelines':
        return MedicationKnowledgeAdministrationGuidelinesBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgedosage':
        return MedicationKnowledgeDosageBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_dosage':
        return MedicationKnowledgeDosageBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgepatientcharacteristics':
        return MedicationKnowledgePatientCharacteristicsBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_patientcharacteristics':
        return MedicationKnowledgePatientCharacteristicsBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgemedicineclassification':
        return MedicationKnowledgeMedicineClassificationBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_medicineclassification':
        return MedicationKnowledgeMedicineClassificationBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgepackaging':
        return MedicationKnowledgePackagingBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_packaging':
        return MedicationKnowledgePackagingBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgedrugcharacteristic':
        return MedicationKnowledgeDrugCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_drugcharacteristic':
        return MedicationKnowledgeDrugCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgeregulatory':
        return MedicationKnowledgeRegulatoryBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_regulatory':
        return MedicationKnowledgeRegulatoryBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgesubstitution':
        return MedicationKnowledgeSubstitutionBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_substitution':
        return MedicationKnowledgeSubstitutionBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgeschedule':
        return MedicationKnowledgeScheduleBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_schedule':
        return MedicationKnowledgeScheduleBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgemaxdispense':
        return MedicationKnowledgeMaxDispenseBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_maxdispense':
        return MedicationKnowledgeMaxDispenseBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledgekinetics':
        return MedicationKnowledgeKineticsBuilder.fromJson(
          toJson(),
        );
      case 'medicationknowledge_kinetics':
        return MedicationKnowledgeKineticsBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequest':
        return MedicationRequestBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequestdispenserequest':
        return MedicationRequestDispenseRequestBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequest_dispenserequest':
        return MedicationRequestDispenseRequestBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequestinitialfill':
        return MedicationRequestInitialFillBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequest_initialfill':
        return MedicationRequestInitialFillBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequestsubstitution':
        return MedicationRequestSubstitutionBuilder.fromJson(
          toJson(),
        );
      case 'medicationrequest_substitution':
        return MedicationRequestSubstitutionBuilder.fromJson(
          toJson(),
        );
      case 'medicationstatement':
        return MedicationStatementBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition':
        return MedicinalProductDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitioncontact':
        return MedicinalProductDefinitionContactBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_contact':
        return MedicinalProductDefinitionContactBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitionname':
        return MedicinalProductDefinitionNameBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_name':
        return MedicinalProductDefinitionNameBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitionnamepart':
        return MedicinalProductDefinitionNamePartBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_namepart':
        return MedicinalProductDefinitionNamePartBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitioncountrylanguage':
        return MedicinalProductDefinitionCountryLanguageBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_countrylanguage':
        return MedicinalProductDefinitionCountryLanguageBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitioncrossreference':
        return MedicinalProductDefinitionCrossReferenceBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_crossreference':
        return MedicinalProductDefinitionCrossReferenceBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitionoperation':
        return MedicinalProductDefinitionOperationBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_operation':
        return MedicinalProductDefinitionOperationBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinitioncharacteristic':
        return MedicinalProductDefinitionCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'medicinalproductdefinition_characteristic':
        return MedicinalProductDefinitionCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'messagedefinition':
        return MessageDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'messagedefinitionfocus':
        return MessageDefinitionFocusBuilder.fromJson(
          toJson(),
        );
      case 'messagedefinition_focus':
        return MessageDefinitionFocusBuilder.fromJson(
          toJson(),
        );
      case 'messagedefinitionallowedresponse':
        return MessageDefinitionAllowedResponseBuilder.fromJson(
          toJson(),
        );
      case 'messagedefinition_allowedresponse':
        return MessageDefinitionAllowedResponseBuilder.fromJson(
          toJson(),
        );
      case 'messageheader':
        return MessageHeaderBuilder.fromJson(
          toJson(),
        );
      case 'messageheaderdestination':
        return MessageHeaderDestinationBuilder.fromJson(
          toJson(),
        );
      case 'messageheader_destination':
        return MessageHeaderDestinationBuilder.fromJson(
          toJson(),
        );
      case 'messageheadersource':
        return MessageHeaderSourceBuilder.fromJson(
          toJson(),
        );
      case 'messageheader_source':
        return MessageHeaderSourceBuilder.fromJson(
          toJson(),
        );
      case 'messageheaderresponse':
        return MessageHeaderResponseBuilder.fromJson(
          toJson(),
        );
      case 'messageheader_response':
        return MessageHeaderResponseBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence':
        return MolecularSequenceBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequencereferenceseq':
        return MolecularSequenceReferenceSeqBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_referenceseq':
        return MolecularSequenceReferenceSeqBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequencevariant':
        return MolecularSequenceVariantBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_variant':
        return MolecularSequenceVariantBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequencequality':
        return MolecularSequenceQualityBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_quality':
        return MolecularSequenceQualityBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequenceroc':
        return MolecularSequenceRocBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_roc':
        return MolecularSequenceRocBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequencerepository':
        return MolecularSequenceRepositoryBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_repository':
        return MolecularSequenceRepositoryBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequencestructurevariant':
        return MolecularSequenceStructureVariantBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_structurevariant':
        return MolecularSequenceStructureVariantBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequenceouter':
        return MolecularSequenceOuterBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_outer':
        return MolecularSequenceOuterBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequenceinner':
        return MolecularSequenceInnerBuilder.fromJson(
          toJson(),
        );
      case 'molecularsequence_inner':
        return MolecularSequenceInnerBuilder.fromJson(
          toJson(),
        );
      case 'namingsystem':
        return NamingSystemBuilder.fromJson(
          toJson(),
        );
      case 'namingsystemuniqueid':
        return NamingSystemUniqueIdBuilder.fromJson(
          toJson(),
        );
      case 'namingsystem_uniqueid':
        return NamingSystemUniqueIdBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder':
        return NutritionOrderBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorderoraldiet':
        return NutritionOrderOralDietBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder_oraldiet':
        return NutritionOrderOralDietBuilder.fromJson(
          toJson(),
        );
      case 'nutritionordernutrient':
        return NutritionOrderNutrientBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder_nutrient':
        return NutritionOrderNutrientBuilder.fromJson(
          toJson(),
        );
      case 'nutritionordertexture':
        return NutritionOrderTextureBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder_texture':
        return NutritionOrderTextureBuilder.fromJson(
          toJson(),
        );
      case 'nutritionordersupplement':
        return NutritionOrderSupplementBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder_supplement':
        return NutritionOrderSupplementBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorderenteralformula':
        return NutritionOrderEnteralFormulaBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder_enteralformula':
        return NutritionOrderEnteralFormulaBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorderadministration':
        return NutritionOrderAdministrationBuilder.fromJson(
          toJson(),
        );
      case 'nutritionorder_administration':
        return NutritionOrderAdministrationBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproduct':
        return NutritionProductBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproductnutrient':
        return NutritionProductNutrientBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproduct_nutrient':
        return NutritionProductNutrientBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproductingredient':
        return NutritionProductIngredientBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproduct_ingredient':
        return NutritionProductIngredientBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproductproductcharacteristic':
        return NutritionProductProductCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproduct_productcharacteristic':
        return NutritionProductProductCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproductinstance':
        return NutritionProductInstanceBuilder.fromJson(
          toJson(),
        );
      case 'nutritionproduct_instance':
        return NutritionProductInstanceBuilder.fromJson(
          toJson(),
        );
      case 'observation':
        return ObservationBuilder.fromJson(
          toJson(),
        );
      case 'observationreferencerange':
        return ObservationReferenceRangeBuilder.fromJson(
          toJson(),
        );
      case 'observation_referencerange':
        return ObservationReferenceRangeBuilder.fromJson(
          toJson(),
        );
      case 'observationcomponent':
        return ObservationComponentBuilder.fromJson(
          toJson(),
        );
      case 'observation_component':
        return ObservationComponentBuilder.fromJson(
          toJson(),
        );
      case 'observationdefinition':
        return ObservationDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'observationdefinitionquantitativedetails':
        return ObservationDefinitionQuantitativeDetailsBuilder.fromJson(
          toJson(),
        );
      case 'observationdefinition_quantitativedetails':
        return ObservationDefinitionQuantitativeDetailsBuilder.fromJson(
          toJson(),
        );
      case 'observationdefinitionqualifiedinterval':
        return ObservationDefinitionQualifiedIntervalBuilder.fromJson(
          toJson(),
        );
      case 'observationdefinition_qualifiedinterval':
        return ObservationDefinitionQualifiedIntervalBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinition':
        return OperationDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinitionparameter':
        return OperationDefinitionParameterBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinition_parameter':
        return OperationDefinitionParameterBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinitionbinding':
        return OperationDefinitionBindingBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinition_binding':
        return OperationDefinitionBindingBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinitionreferencedfrom':
        return OperationDefinitionReferencedFromBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinition_referencedfrom':
        return OperationDefinitionReferencedFromBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinitionoverload':
        return OperationDefinitionOverloadBuilder.fromJson(
          toJson(),
        );
      case 'operationdefinition_overload':
        return OperationDefinitionOverloadBuilder.fromJson(
          toJson(),
        );
      case 'operationoutcome':
        return OperationOutcomeBuilder.fromJson(
          toJson(),
        );
      case 'operationoutcomeissue':
        return OperationOutcomeIssueBuilder.fromJson(
          toJson(),
        );
      case 'operationoutcome_issue':
        return OperationOutcomeIssueBuilder.fromJson(
          toJson(),
        );
      case 'organization':
        return OrganizationBuilder.fromJson(
          toJson(),
        );
      case 'organizationcontact':
        return OrganizationContactBuilder.fromJson(
          toJson(),
        );
      case 'organization_contact':
        return OrganizationContactBuilder.fromJson(
          toJson(),
        );
      case 'organizationaffiliation':
        return OrganizationAffiliationBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinition':
        return PackagedProductDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinitionlegalstatusofsupply':
        return PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinition_legalstatusofsupply':
        return PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinitionpackage':
        return PackagedProductDefinitionPackageBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinition_package':
        return PackagedProductDefinitionPackageBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinitionshelflifestorage':
        return PackagedProductDefinitionShelfLifeStorageBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinition_shelflifestorage':
        return PackagedProductDefinitionShelfLifeStorageBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinitionproperty':
        return PackagedProductDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinition_property':
        return PackagedProductDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinitioncontaineditem':
        return PackagedProductDefinitionContainedItemBuilder.fromJson(
          toJson(),
        );
      case 'packagedproductdefinition_containeditem':
        return PackagedProductDefinitionContainedItemBuilder.fromJson(
          toJson(),
        );
      case 'parameters':
        return ParametersBuilder.fromJson(
          toJson(),
        );
      case 'parametersparameter':
        return ParametersParameterBuilder.fromJson(
          toJson(),
        );
      case 'parameters_parameter':
        return ParametersParameterBuilder.fromJson(
          toJson(),
        );
      case 'patient':
        return PatientBuilder.fromJson(
          toJson(),
        );
      case 'patientcontact':
        return PatientContactBuilder.fromJson(
          toJson(),
        );
      case 'patient_contact':
        return PatientContactBuilder.fromJson(
          toJson(),
        );
      case 'patientcommunication':
        return PatientCommunicationBuilder.fromJson(
          toJson(),
        );
      case 'patient_communication':
        return PatientCommunicationBuilder.fromJson(
          toJson(),
        );
      case 'patientlink':
        return PatientLinkBuilder.fromJson(
          toJson(),
        );
      case 'patient_link':
        return PatientLinkBuilder.fromJson(
          toJson(),
        );
      case 'paymentnotice':
        return PaymentNoticeBuilder.fromJson(
          toJson(),
        );
      case 'paymentreconciliation':
        return PaymentReconciliationBuilder.fromJson(
          toJson(),
        );
      case 'paymentreconciliationdetail':
        return PaymentReconciliationDetailBuilder.fromJson(
          toJson(),
        );
      case 'paymentreconciliation_detail':
        return PaymentReconciliationDetailBuilder.fromJson(
          toJson(),
        );
      case 'paymentreconciliationprocessnote':
        return PaymentReconciliationProcessNoteBuilder.fromJson(
          toJson(),
        );
      case 'paymentreconciliation_processnote':
        return PaymentReconciliationProcessNoteBuilder.fromJson(
          toJson(),
        );
      case 'person':
        return PersonBuilder.fromJson(
          toJson(),
        );
      case 'personlink':
        return PersonLinkBuilder.fromJson(
          toJson(),
        );
      case 'person_link':
        return PersonLinkBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition':
        return PlanDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitiongoal':
        return PlanDefinitionGoalBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_goal':
        return PlanDefinitionGoalBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitiontarget':
        return PlanDefinitionTargetBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_target':
        return PlanDefinitionTargetBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitionaction':
        return PlanDefinitionActionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_action':
        return PlanDefinitionActionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitioncondition':
        return PlanDefinitionConditionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_condition':
        return PlanDefinitionConditionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitionrelatedaction':
        return PlanDefinitionRelatedActionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_relatedaction':
        return PlanDefinitionRelatedActionBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitionparticipant':
        return PlanDefinitionParticipantBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_participant':
        return PlanDefinitionParticipantBuilder.fromJson(
          toJson(),
        );
      case 'plandefinitiondynamicvalue':
        return PlanDefinitionDynamicValueBuilder.fromJson(
          toJson(),
        );
      case 'plandefinition_dynamicvalue':
        return PlanDefinitionDynamicValueBuilder.fromJson(
          toJson(),
        );
      case 'practitioner':
        return PractitionerBuilder.fromJson(
          toJson(),
        );
      case 'practitionerqualification':
        return PractitionerQualificationBuilder.fromJson(
          toJson(),
        );
      case 'practitioner_qualification':
        return PractitionerQualificationBuilder.fromJson(
          toJson(),
        );
      case 'practitionerrole':
        return PractitionerRoleBuilder.fromJson(
          toJson(),
        );
      case 'practitionerroleavailabletime':
        return PractitionerRoleAvailableTimeBuilder.fromJson(
          toJson(),
        );
      case 'practitionerrole_availabletime':
        return PractitionerRoleAvailableTimeBuilder.fromJson(
          toJson(),
        );
      case 'practitionerrolenotavailable':
        return PractitionerRoleNotAvailableBuilder.fromJson(
          toJson(),
        );
      case 'practitionerrole_notavailable':
        return PractitionerRoleNotAvailableBuilder.fromJson(
          toJson(),
        );
      case 'procedure':
        return ProcedureBuilder.fromJson(
          toJson(),
        );
      case 'procedureperformer':
        return ProcedurePerformerBuilder.fromJson(
          toJson(),
        );
      case 'procedure_performer':
        return ProcedurePerformerBuilder.fromJson(
          toJson(),
        );
      case 'procedurefocaldevice':
        return ProcedureFocalDeviceBuilder.fromJson(
          toJson(),
        );
      case 'procedure_focaldevice':
        return ProcedureFocalDeviceBuilder.fromJson(
          toJson(),
        );
      case 'provenance':
        return ProvenanceBuilder.fromJson(
          toJson(),
        );
      case 'provenanceagent':
        return ProvenanceAgentBuilder.fromJson(
          toJson(),
        );
      case 'provenance_agent':
        return ProvenanceAgentBuilder.fromJson(
          toJson(),
        );
      case 'provenanceentity':
        return ProvenanceEntityBuilder.fromJson(
          toJson(),
        );
      case 'provenance_entity':
        return ProvenanceEntityBuilder.fromJson(
          toJson(),
        );
      case 'questionnaire':
        return QuestionnaireBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireitem':
        return QuestionnaireItemBuilder.fromJson(
          toJson(),
        );
      case 'questionnaire_item':
        return QuestionnaireItemBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireenablewhen':
        return QuestionnaireEnableWhenBuilder.fromJson(
          toJson(),
        );
      case 'questionnaire_enablewhen':
        return QuestionnaireEnableWhenBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireansweroption':
        return QuestionnaireAnswerOptionBuilder.fromJson(
          toJson(),
        );
      case 'questionnaire_answeroption':
        return QuestionnaireAnswerOptionBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireinitial':
        return QuestionnaireInitialBuilder.fromJson(
          toJson(),
        );
      case 'questionnaire_initial':
        return QuestionnaireInitialBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireresponse':
        return QuestionnaireResponseBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireresponseitem':
        return QuestionnaireResponseItemBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireresponse_item':
        return QuestionnaireResponseItemBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireresponseanswer':
        return QuestionnaireResponseAnswerBuilder.fromJson(
          toJson(),
        );
      case 'questionnaireresponse_answer':
        return QuestionnaireResponseAnswerBuilder.fromJson(
          toJson(),
        );
      case 'regulatedauthorization':
        return RegulatedAuthorizationBuilder.fromJson(
          toJson(),
        );
      case 'regulatedauthorizationcase':
        return RegulatedAuthorizationCaseBuilder.fromJson(
          toJson(),
        );
      case 'regulatedauthorization_case':
        return RegulatedAuthorizationCaseBuilder.fromJson(
          toJson(),
        );
      case 'relatedperson':
        return RelatedPersonBuilder.fromJson(
          toJson(),
        );
      case 'relatedpersoncommunication':
        return RelatedPersonCommunicationBuilder.fromJson(
          toJson(),
        );
      case 'relatedperson_communication':
        return RelatedPersonCommunicationBuilder.fromJson(
          toJson(),
        );
      case 'requestgroup':
        return RequestGroupBuilder.fromJson(
          toJson(),
        );
      case 'requestgroupaction':
        return RequestGroupActionBuilder.fromJson(
          toJson(),
        );
      case 'requestgroup_action':
        return RequestGroupActionBuilder.fromJson(
          toJson(),
        );
      case 'requestgroupcondition':
        return RequestGroupConditionBuilder.fromJson(
          toJson(),
        );
      case 'requestgroup_condition':
        return RequestGroupConditionBuilder.fromJson(
          toJson(),
        );
      case 'requestgrouprelatedaction':
        return RequestGroupRelatedActionBuilder.fromJson(
          toJson(),
        );
      case 'requestgroup_relatedaction':
        return RequestGroupRelatedActionBuilder.fromJson(
          toJson(),
        );
      case 'researchdefinition':
        return ResearchDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'researchelementdefinition':
        return ResearchElementDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'researchelementdefinitioncharacteristic':
        return ResearchElementDefinitionCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'researchelementdefinition_characteristic':
        return ResearchElementDefinitionCharacteristicBuilder.fromJson(
          toJson(),
        );
      case 'researchstudy':
        return ResearchStudyBuilder.fromJson(
          toJson(),
        );
      case 'researchstudyarm':
        return ResearchStudyArmBuilder.fromJson(
          toJson(),
        );
      case 'researchstudy_arm':
        return ResearchStudyArmBuilder.fromJson(
          toJson(),
        );
      case 'researchstudyobjective':
        return ResearchStudyObjectiveBuilder.fromJson(
          toJson(),
        );
      case 'researchstudy_objective':
        return ResearchStudyObjectiveBuilder.fromJson(
          toJson(),
        );
      case 'researchsubject':
        return ResearchSubjectBuilder.fromJson(
          toJson(),
        );
      case 'riskassessment':
        return RiskAssessmentBuilder.fromJson(
          toJson(),
        );
      case 'riskassessmentprediction':
        return RiskAssessmentPredictionBuilder.fromJson(
          toJson(),
        );
      case 'riskassessment_prediction':
        return RiskAssessmentPredictionBuilder.fromJson(
          toJson(),
        );
      case 'schedule':
        return ScheduleBuilder.fromJson(
          toJson(),
        );
      case 'searchparameter':
        return SearchParameterBuilder.fromJson(
          toJson(),
        );
      case 'searchparametercomponent':
        return SearchParameterComponentBuilder.fromJson(
          toJson(),
        );
      case 'searchparameter_component':
        return SearchParameterComponentBuilder.fromJson(
          toJson(),
        );
      case 'servicerequest':
        return ServiceRequestBuilder.fromJson(
          toJson(),
        );
      case 'slot':
        return SlotBuilder.fromJson(
          toJson(),
        );
      case 'specimen':
        return SpecimenBuilder.fromJson(
          toJson(),
        );
      case 'specimencollection':
        return SpecimenCollectionBuilder.fromJson(
          toJson(),
        );
      case 'specimen_collection':
        return SpecimenCollectionBuilder.fromJson(
          toJson(),
        );
      case 'specimenprocessing':
        return SpecimenProcessingBuilder.fromJson(
          toJson(),
        );
      case 'specimen_processing':
        return SpecimenProcessingBuilder.fromJson(
          toJson(),
        );
      case 'specimencontainer':
        return SpecimenContainerBuilder.fromJson(
          toJson(),
        );
      case 'specimen_container':
        return SpecimenContainerBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinition':
        return SpecimenDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinitiontypetested':
        return SpecimenDefinitionTypeTestedBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinition_typetested':
        return SpecimenDefinitionTypeTestedBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinitioncontainer':
        return SpecimenDefinitionContainerBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinition_container':
        return SpecimenDefinitionContainerBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinitionadditive':
        return SpecimenDefinitionAdditiveBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinition_additive':
        return SpecimenDefinitionAdditiveBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinitionhandling':
        return SpecimenDefinitionHandlingBuilder.fromJson(
          toJson(),
        );
      case 'specimendefinition_handling':
        return SpecimenDefinitionHandlingBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinition':
        return StructureDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinitionmapping':
        return StructureDefinitionMappingBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinition_mapping':
        return StructureDefinitionMappingBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinitioncontext':
        return StructureDefinitionContextBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinition_context':
        return StructureDefinitionContextBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinitionsnapshot':
        return StructureDefinitionSnapshotBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinition_snapshot':
        return StructureDefinitionSnapshotBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinitiondifferential':
        return StructureDefinitionDifferentialBuilder.fromJson(
          toJson(),
        );
      case 'structuredefinition_differential':
        return StructureDefinitionDifferentialBuilder.fromJson(
          toJson(),
        );
      case 'structuremap':
        return StructureMapBuilder.fromJson(
          toJson(),
        );
      case 'structuremapstructure':
        return StructureMapStructureBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_structure':
        return StructureMapStructureBuilder.fromJson(
          toJson(),
        );
      case 'structuremapgroup':
        return StructureMapGroupBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_group':
        return StructureMapGroupBuilder.fromJson(
          toJson(),
        );
      case 'structuremapinput':
        return StructureMapInputBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_input':
        return StructureMapInputBuilder.fromJson(
          toJson(),
        );
      case 'structuremaprule':
        return StructureMapRuleBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_rule':
        return StructureMapRuleBuilder.fromJson(
          toJson(),
        );
      case 'structuremapsource':
        return StructureMapSourceBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_source':
        return StructureMapSourceBuilder.fromJson(
          toJson(),
        );
      case 'structuremaptarget':
        return StructureMapTargetBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_target':
        return StructureMapTargetBuilder.fromJson(
          toJson(),
        );
      case 'structuremapparameter':
        return StructureMapParameterBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_parameter':
        return StructureMapParameterBuilder.fromJson(
          toJson(),
        );
      case 'structuremapdependent':
        return StructureMapDependentBuilder.fromJson(
          toJson(),
        );
      case 'structuremap_dependent':
        return StructureMapDependentBuilder.fromJson(
          toJson(),
        );
      case 'subscription':
        return SubscriptionBuilder.fromJson(
          toJson(),
        );
      case 'subscriptionchannel':
        return SubscriptionChannelBuilder.fromJson(
          toJson(),
        );
      case 'subscription_channel':
        return SubscriptionChannelBuilder.fromJson(
          toJson(),
        );
      case 'subscriptionstatus':
        return SubscriptionStatusBuilder.fromJson(
          toJson(),
        );
      case 'subscriptionstatusnotificationevent':
        return SubscriptionStatusNotificationEventBuilder.fromJson(
          toJson(),
        );
      case 'subscriptionstatus_notificationevent':
        return SubscriptionStatusNotificationEventBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopic':
        return SubscriptionTopicBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopicresourcetrigger':
        return SubscriptionTopicResourceTriggerBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopic_resourcetrigger':
        return SubscriptionTopicResourceTriggerBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopicquerycriteria':
        return SubscriptionTopicQueryCriteriaBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopic_querycriteria':
        return SubscriptionTopicQueryCriteriaBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopiceventtrigger':
        return SubscriptionTopicEventTriggerBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopic_eventtrigger':
        return SubscriptionTopicEventTriggerBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopiccanfilterby':
        return SubscriptionTopicCanFilterByBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopic_canfilterby':
        return SubscriptionTopicCanFilterByBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopicnotificationshape':
        return SubscriptionTopicNotificationShapeBuilder.fromJson(
          toJson(),
        );
      case 'subscriptiontopic_notificationshape':
        return SubscriptionTopicNotificationShapeBuilder.fromJson(
          toJson(),
        );
      case 'substance':
        return SubstanceBuilder.fromJson(
          toJson(),
        );
      case 'substanceinstance':
        return SubstanceInstanceBuilder.fromJson(
          toJson(),
        );
      case 'substance_instance':
        return SubstanceInstanceBuilder.fromJson(
          toJson(),
        );
      case 'substanceingredient':
        return SubstanceIngredientBuilder.fromJson(
          toJson(),
        );
      case 'substance_ingredient':
        return SubstanceIngredientBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition':
        return SubstanceDefinitionBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionmoiety':
        return SubstanceDefinitionMoietyBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_moiety':
        return SubstanceDefinitionMoietyBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionproperty':
        return SubstanceDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_property':
        return SubstanceDefinitionPropertyBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionmolecularweight':
        return SubstanceDefinitionMolecularWeightBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_molecularweight':
        return SubstanceDefinitionMolecularWeightBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionstructure':
        return SubstanceDefinitionStructureBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_structure':
        return SubstanceDefinitionStructureBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionrepresentation':
        return SubstanceDefinitionRepresentationBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_representation':
        return SubstanceDefinitionRepresentationBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitioncode':
        return SubstanceDefinitionCodeBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_code':
        return SubstanceDefinitionCodeBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionname':
        return SubstanceDefinitionNameBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_name':
        return SubstanceDefinitionNameBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionofficial':
        return SubstanceDefinitionOfficialBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_official':
        return SubstanceDefinitionOfficialBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionrelationship':
        return SubstanceDefinitionRelationshipBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_relationship':
        return SubstanceDefinitionRelationshipBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinitionsourcematerial':
        return SubstanceDefinitionSourceMaterialBuilder.fromJson(
          toJson(),
        );
      case 'substancedefinition_sourcematerial':
        return SubstanceDefinitionSourceMaterialBuilder.fromJson(
          toJson(),
        );
      case 'supplydelivery':
        return SupplyDeliveryBuilder.fromJson(
          toJson(),
        );
      case 'supplydeliverysupplieditem':
        return SupplyDeliverySuppliedItemBuilder.fromJson(
          toJson(),
        );
      case 'supplydelivery_supplieditem':
        return SupplyDeliverySuppliedItemBuilder.fromJson(
          toJson(),
        );
      case 'supplyrequest':
        return SupplyRequestBuilder.fromJson(
          toJson(),
        );
      case 'supplyrequestparameter':
        return SupplyRequestParameterBuilder.fromJson(
          toJson(),
        );
      case 'supplyrequest_parameter':
        return SupplyRequestParameterBuilder.fromJson(
          toJson(),
        );
      case 'task':
        return TaskBuilder.fromJson(
          toJson(),
        );
      case 'taskrestriction':
        return TaskRestrictionBuilder.fromJson(
          toJson(),
        );
      case 'task_restriction':
        return TaskRestrictionBuilder.fromJson(
          toJson(),
        );
      case 'taskinput':
        return TaskInputBuilder.fromJson(
          toJson(),
        );
      case 'task_input':
        return TaskInputBuilder.fromJson(
          toJson(),
        );
      case 'taskoutput':
        return TaskOutputBuilder.fromJson(
          toJson(),
        );
      case 'task_output':
        return TaskOutputBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities':
        return TerminologyCapabilitiesBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiessoftware':
        return TerminologyCapabilitiesSoftwareBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_software':
        return TerminologyCapabilitiesSoftwareBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesimplementation':
        return TerminologyCapabilitiesImplementationBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_implementation':
        return TerminologyCapabilitiesImplementationBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiescodesystem':
        return TerminologyCapabilitiesCodeSystemBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_codesystem':
        return TerminologyCapabilitiesCodeSystemBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesversion':
        return TerminologyCapabilitiesVersionBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_version':
        return TerminologyCapabilitiesVersionBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesfilter':
        return TerminologyCapabilitiesFilterBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_filter':
        return TerminologyCapabilitiesFilterBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesexpansion':
        return TerminologyCapabilitiesExpansionBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_expansion':
        return TerminologyCapabilitiesExpansionBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesparameter':
        return TerminologyCapabilitiesParameterBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_parameter':
        return TerminologyCapabilitiesParameterBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesvalidatecode':
        return TerminologyCapabilitiesValidateCodeBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_validatecode':
        return TerminologyCapabilitiesValidateCodeBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiestranslation':
        return TerminologyCapabilitiesTranslationBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_translation':
        return TerminologyCapabilitiesTranslationBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilitiesclosure':
        return TerminologyCapabilitiesClosureBuilder.fromJson(
          toJson(),
        );
      case 'terminologycapabilities_closure':
        return TerminologyCapabilitiesClosureBuilder.fromJson(
          toJson(),
        );
      case 'testreport':
        return TestReportBuilder.fromJson(
          toJson(),
        );
      case 'testreportparticipant':
        return TestReportParticipantBuilder.fromJson(
          toJson(),
        );
      case 'testreport_participant':
        return TestReportParticipantBuilder.fromJson(
          toJson(),
        );
      case 'testreportsetup':
        return TestReportSetupBuilder.fromJson(
          toJson(),
        );
      case 'testreport_setup':
        return TestReportSetupBuilder.fromJson(
          toJson(),
        );
      case 'testreportaction':
        return TestReportActionBuilder.fromJson(
          toJson(),
        );
      case 'testreport_action':
        return TestReportActionBuilder.fromJson(
          toJson(),
        );
      case 'testreportoperation':
        return TestReportOperationBuilder.fromJson(
          toJson(),
        );
      case 'testreport_operation':
        return TestReportOperationBuilder.fromJson(
          toJson(),
        );
      case 'testreportassert':
        return TestReportAssertBuilder.fromJson(
          toJson(),
        );
      case 'testreport_assert':
        return TestReportAssertBuilder.fromJson(
          toJson(),
        );
      case 'testreporttest':
        return TestReportTestBuilder.fromJson(
          toJson(),
        );
      case 'testreport_test':
        return TestReportTestBuilder.fromJson(
          toJson(),
        );
      case 'testreportaction1':
        return TestReportAction1Builder.fromJson(
          toJson(),
        );
      case 'testreport_action1':
        return TestReportAction1Builder.fromJson(
          toJson(),
        );
      case 'testreportteardown':
        return TestReportTeardownBuilder.fromJson(
          toJson(),
        );
      case 'testreport_teardown':
        return TestReportTeardownBuilder.fromJson(
          toJson(),
        );
      case 'testreportaction2':
        return TestReportAction2Builder.fromJson(
          toJson(),
        );
      case 'testreport_action2':
        return TestReportAction2Builder.fromJson(
          toJson(),
        );
      case 'testscript':
        return TestScriptBuilder.fromJson(
          toJson(),
        );
      case 'testscriptorigin':
        return TestScriptOriginBuilder.fromJson(
          toJson(),
        );
      case 'testscript_origin':
        return TestScriptOriginBuilder.fromJson(
          toJson(),
        );
      case 'testscriptdestination':
        return TestScriptDestinationBuilder.fromJson(
          toJson(),
        );
      case 'testscript_destination':
        return TestScriptDestinationBuilder.fromJson(
          toJson(),
        );
      case 'testscriptmetadata':
        return TestScriptMetadataBuilder.fromJson(
          toJson(),
        );
      case 'testscript_metadata':
        return TestScriptMetadataBuilder.fromJson(
          toJson(),
        );
      case 'testscriptlink':
        return TestScriptLinkBuilder.fromJson(
          toJson(),
        );
      case 'testscript_link':
        return TestScriptLinkBuilder.fromJson(
          toJson(),
        );
      case 'testscriptcapability':
        return TestScriptCapabilityBuilder.fromJson(
          toJson(),
        );
      case 'testscript_capability':
        return TestScriptCapabilityBuilder.fromJson(
          toJson(),
        );
      case 'testscriptfixture':
        return TestScriptFixtureBuilder.fromJson(
          toJson(),
        );
      case 'testscript_fixture':
        return TestScriptFixtureBuilder.fromJson(
          toJson(),
        );
      case 'testscriptvariable':
        return TestScriptVariableBuilder.fromJson(
          toJson(),
        );
      case 'testscript_variable':
        return TestScriptVariableBuilder.fromJson(
          toJson(),
        );
      case 'testscriptsetup':
        return TestScriptSetupBuilder.fromJson(
          toJson(),
        );
      case 'testscript_setup':
        return TestScriptSetupBuilder.fromJson(
          toJson(),
        );
      case 'testscriptaction':
        return TestScriptActionBuilder.fromJson(
          toJson(),
        );
      case 'testscript_action':
        return TestScriptActionBuilder.fromJson(
          toJson(),
        );
      case 'testscriptoperation':
        return TestScriptOperationBuilder.fromJson(
          toJson(),
        );
      case 'testscript_operation':
        return TestScriptOperationBuilder.fromJson(
          toJson(),
        );
      case 'testscriptrequestheader':
        return TestScriptRequestHeaderBuilder.fromJson(
          toJson(),
        );
      case 'testscript_requestheader':
        return TestScriptRequestHeaderBuilder.fromJson(
          toJson(),
        );
      case 'testscriptassert':
        return TestScriptAssertBuilder.fromJson(
          toJson(),
        );
      case 'testscript_assert':
        return TestScriptAssertBuilder.fromJson(
          toJson(),
        );
      case 'testscripttest':
        return TestScriptTestBuilder.fromJson(
          toJson(),
        );
      case 'testscript_test':
        return TestScriptTestBuilder.fromJson(
          toJson(),
        );
      case 'testscriptaction1':
        return TestScriptAction1Builder.fromJson(
          toJson(),
        );
      case 'testscript_action1':
        return TestScriptAction1Builder.fromJson(
          toJson(),
        );
      case 'testscriptteardown':
        return TestScriptTeardownBuilder.fromJson(
          toJson(),
        );
      case 'testscript_teardown':
        return TestScriptTeardownBuilder.fromJson(
          toJson(),
        );
      case 'testscriptaction2':
        return TestScriptAction2Builder.fromJson(
          toJson(),
        );
      case 'testscript_action2':
        return TestScriptAction2Builder.fromJson(
          toJson(),
        );
      case 'valueset':
        return ValueSetBuilder.fromJson(
          toJson(),
        );
      case 'valuesetcompose':
        return ValueSetComposeBuilder.fromJson(
          toJson(),
        );
      case 'valueset_compose':
        return ValueSetComposeBuilder.fromJson(
          toJson(),
        );
      case 'valuesetinclude':
        return ValueSetIncludeBuilder.fromJson(
          toJson(),
        );
      case 'valueset_include':
        return ValueSetIncludeBuilder.fromJson(
          toJson(),
        );
      case 'valuesetconcept':
        return ValueSetConceptBuilder.fromJson(
          toJson(),
        );
      case 'valueset_concept':
        return ValueSetConceptBuilder.fromJson(
          toJson(),
        );
      case 'valuesetdesignation':
        return ValueSetDesignationBuilder.fromJson(
          toJson(),
        );
      case 'valueset_designation':
        return ValueSetDesignationBuilder.fromJson(
          toJson(),
        );
      case 'valuesetfilter':
        return ValueSetFilterBuilder.fromJson(
          toJson(),
        );
      case 'valueset_filter':
        return ValueSetFilterBuilder.fromJson(
          toJson(),
        );
      case 'valuesetexpansion':
        return ValueSetExpansionBuilder.fromJson(
          toJson(),
        );
      case 'valueset_expansion':
        return ValueSetExpansionBuilder.fromJson(
          toJson(),
        );
      case 'valuesetparameter':
        return ValueSetParameterBuilder.fromJson(
          toJson(),
        );
      case 'valueset_parameter':
        return ValueSetParameterBuilder.fromJson(
          toJson(),
        );
      case 'valuesetcontains':
        return ValueSetContainsBuilder.fromJson(
          toJson(),
        );
      case 'valueset_contains':
        return ValueSetContainsBuilder.fromJson(
          toJson(),
        );
      case 'verificationresult':
        return VerificationResultBuilder.fromJson(
          toJson(),
        );
      case 'verificationresultprimarysource':
        return VerificationResultPrimarySourceBuilder.fromJson(
          toJson(),
        );
      case 'verificationresult_primarysource':
        return VerificationResultPrimarySourceBuilder.fromJson(
          toJson(),
        );
      case 'verificationresultattestation':
        return VerificationResultAttestationBuilder.fromJson(
          toJson(),
        );
      case 'verificationresult_attestation':
        return VerificationResultAttestationBuilder.fromJson(
          toJson(),
        );
      case 'verificationresultvalidator':
        return VerificationResultValidatorBuilder.fromJson(
          toJson(),
        );
      case 'verificationresult_validator':
        return VerificationResultValidatorBuilder.fromJson(
          toJson(),
        );
      case 'visionprescription':
        return VisionPrescriptionBuilder.fromJson(
          toJson(),
        );
      case 'visionprescriptionlensspecification':
        return VisionPrescriptionLensSpecificationBuilder.fromJson(
          toJson(),
        );
      case 'visionprescription_lensspecification':
        return VisionPrescriptionLensSpecificationBuilder.fromJson(
          toJson(),
        );
      case 'visionprescriptionprism':
        return VisionPrescriptionPrismBuilder.fromJson(
          toJson(),
        );
      case 'visionprescription_prism':
        return VisionPrescriptionPrismBuilder.fromJson(
          toJson(),
        );
    }
    throw StateError('Unknown type: $fhirType. Cannot convert to builder.');
  }
}
