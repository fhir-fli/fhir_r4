import 'package:fhir_r4/fhir_r4.dart';

/// This function accepts a dynamic value, and a String type and attmpts
/// to create that FhirType
FhirBase? fromType(dynamic value, String type) {
  if (value == null) return null;
  final fhirType = type.toLowerCase();
  switch (fhirType) {
    case 'fhirbase64binary':
      return value is Map<String, dynamic>
          ? FhirBase64Binary.fromJson(value)
          : FhirBase64Binary.tryParse(value);
    case 'base64binary':
      return value is Map<String, dynamic>
          ? FhirBase64Binary.fromJson(value)
          : FhirBase64Binary.tryParse(value);
    case 'fhirboolean':
      return value is Map<String, dynamic>
          ? FhirBoolean.fromJson(value)
          : FhirBoolean.tryParse(value);
    case 'boolean':
      return value is Map<String, dynamic>
          ? FhirBoolean.fromJson(value)
          : FhirBoolean.tryParse(value);
    case 'fhircanonical':
      return value is Map<String, dynamic>
          ? FhirCanonical.fromJson(value)
          : FhirCanonical.tryParse(value);
    case 'canonical':
      return value is Map<String, dynamic>
          ? FhirCanonical.fromJson(value)
          : FhirCanonical.tryParse(value);
    case 'fhircode':
      return value is Map<String, dynamic>
          ? FhirCode.fromJson(value)
          : FhirCode.tryParse(value);
    case 'code':
      return value is Map<String, dynamic>
          ? FhirCode.fromJson(value)
          : FhirCode.tryParse(value);
    case 'fhirdate':
      return value is Map<String, dynamic>
          ? FhirDate.fromJson(value)
          : FhirDate.tryParse(value);
    case 'date':
      return value is Map<String, dynamic>
          ? FhirDate.fromJson(value)
          : FhirDate.tryParse(value);
    case 'fhirdatetime':
      return value is Map<String, dynamic>
          ? FhirDateTime.fromJson(value)
          : FhirDateTime.tryParse(value);
    case 'datetime':
      return value is Map<String, dynamic>
          ? FhirDateTime.fromJson(value)
          : FhirDateTime.tryParse(value);
    case 'fhirdecimal':
      return value is Map<String, dynamic>
          ? FhirDecimal.fromJson(value)
          : FhirDecimal.tryParse(value);
    case 'decimal':
      return value is Map<String, dynamic>
          ? FhirDecimal.fromJson(value)
          : FhirDecimal.tryParse(value);
    case 'fhirid':
      return value is Map<String, dynamic>
          ? FhirId.fromJson(value)
          : FhirId.tryParse(value);
    case 'id':
      return value is Map<String, dynamic>
          ? FhirId.fromJson(value)
          : FhirId.tryParse(value);
    case 'fhirinstant':
      return value is Map<String, dynamic>
          ? FhirInstant.fromJson(value)
          : FhirInstant.tryParse(value);
    case 'instant':
      return value is Map<String, dynamic>
          ? FhirInstant.fromJson(value)
          : FhirInstant.tryParse(value);
    case 'fhirinteger':
      return value is Map<String, dynamic>
          ? FhirInteger.fromJson(value)
          : FhirInteger.tryParse(value);
    case 'integer':
      return value is Map<String, dynamic>
          ? FhirInteger.fromJson(value)
          : FhirInteger.tryParse(value);
    case 'fhirmarkdown':
      return value is Map<String, dynamic>
          ? FhirMarkdown.fromJson(value)
          : FhirMarkdown.tryParse(value);
    case 'markdown':
      return value is Map<String, dynamic>
          ? FhirMarkdown.fromJson(value)
          : FhirMarkdown.tryParse(value);
    case 'fhiroid':
      return value is Map<String, dynamic>
          ? FhirOid.fromJson(value)
          : FhirOid.tryParse(value);
    case 'oid':
      return value is Map<String, dynamic>
          ? FhirOid.fromJson(value)
          : FhirOid.tryParse(value);
    case 'fhirpositiveint':
      return value is Map<String, dynamic>
          ? FhirPositiveInt.fromJson(value)
          : FhirPositiveInt.tryParse(value);
    case 'positiveint':
      return value is Map<String, dynamic>
          ? FhirPositiveInt.fromJson(value)
          : FhirPositiveInt.tryParse(value);
    case 'fhirstring':
      return value is Map<String, dynamic>
          ? FhirString.fromJson(value)
          : FhirString.tryParse(value);
    case 'string':
      return value is Map<String, dynamic>
          ? FhirString.fromJson(value)
          : FhirString.tryParse(value);
    case 'fhirtime':
      return value is Map<String, dynamic>
          ? FhirTime.fromJson(value)
          : FhirTime.tryParse(value);
    case 'time':
      return value is Map<String, dynamic>
          ? FhirTime.fromJson(value)
          : FhirTime.tryParse(value);
    case 'fhirunsignedint':
      return value is Map<String, dynamic>
          ? FhirUnsignedInt.fromJson(value)
          : FhirUnsignedInt.tryParse(value);
    case 'unsignedint':
      return value is Map<String, dynamic>
          ? FhirUnsignedInt.fromJson(value)
          : FhirUnsignedInt.tryParse(value);
    case 'fhiruri':
      return value is Map<String, dynamic>
          ? FhirUri.fromJson(value)
          : FhirUri.tryParse(value);
    case 'uri':
      return value is Map<String, dynamic>
          ? FhirUri.fromJson(value)
          : FhirUri.tryParse(value);
    case 'fhirurl':
      return value is Map<String, dynamic>
          ? FhirUrl.fromJson(value)
          : FhirUrl.tryParse(value);
    case 'url':
      return value is Map<String, dynamic>
          ? FhirUrl.fromJson(value)
          : FhirUrl.tryParse(value);
    case 'fhiruuid':
      return value is Map<String, dynamic>
          ? FhirUuid.fromJson(value)
          : FhirUuid.tryParse(value);
    case 'uuid':
      return value is Map<String, dynamic>
          ? FhirUuid.fromJson(value)
          : FhirUuid.tryParse(value);
    case 'fhirxhtml':
      return value is Map<String, dynamic>
          ? FhirXhtml.fromJson(value)
          : FhirXhtml.tryParse(value);
    case 'xhtml':
      return value is Map<String, dynamic>
          ? FhirXhtml.fromJson(value)
          : FhirXhtml.tryParse(value);
    case 'element':
      return value is! Map<String, dynamic> ? null : Element.fromJson(value);
    case 'fhirextension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
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
    case 'codeablereference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReference.fromJson(value);
    case 'coding':
      return value is! Map<String, dynamic> ? null : Coding.fromJson(value);
    case 'quantity':
      return value is! Map<String, dynamic> ? null : Quantity.fromJson(value);
    case 'fhirduration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    case 'duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
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
    case 'ratiorange':
      return value is! Map<String, dynamic> ? null : RatioRange.fromJson(value);
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
    case 'timing_repeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeat.fromJson(value);
    case 'fhirmeta':
      return value is! Map<String, dynamic> ? null : FhirMeta.fromJson(value);
    case 'meta':
      return value is! Map<String, dynamic> ? null : FhirMeta.fromJson(value);
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
    case 'datarequirement_codefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilter.fromJson(value);
    case 'datarequirementdatefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilter.fromJson(value);
    case 'datarequirement_datefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilter.fromJson(value);
    case 'datarequirementsort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSort.fromJson(value);
    case 'datarequirement_sort':
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
    case 'dosage_doseandrate':
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
    case 'fhirexpression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpression.fromJson(value);
    case 'expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpression.fromJson(value);
    case 'elementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinition.fromJson(value);
    case 'elementdefinitionslicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicing.fromJson(value);
    case 'elementdefinition_slicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicing.fromJson(value);
    case 'elementdefinitiondiscriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminator.fromJson(value);
    case 'elementdefinition_discriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminator.fromJson(value);
    case 'elementdefinitionbase':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBase.fromJson(value);
    case 'elementdefinition_base':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBase.fromJson(value);
    case 'elementdefinitiontype':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionType.fromJson(value);
    case 'elementdefinition_type':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionType.fromJson(value);
    case 'elementdefinitionexample':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExample.fromJson(value);
    case 'elementdefinition_example':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExample.fromJson(value);
    case 'elementdefinitionconstraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraint.fromJson(value);
    case 'elementdefinition_constraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraint.fromJson(value);
    case 'elementdefinitionbinding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBinding.fromJson(value);
    case 'elementdefinition_binding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBinding.fromJson(value);
    case 'elementdefinitionmapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMapping.fromJson(value);
    case 'elementdefinition_mapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMapping.fromJson(value);
    case 'account':
      return value is! Map<String, dynamic> ? null : Account.fromJson(value);
    case 'accountcoverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverage.fromJson(value);
    case 'account_coverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverage.fromJson(value);
    case 'accountguarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantor.fromJson(value);
    case 'account_guarantor':
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
    case 'activitydefinition_participant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipant.fromJson(value);
    case 'activitydefinitiondynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValue.fromJson(value);
    case 'activitydefinition_dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValue.fromJson(value);
    case 'administrableproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinition.fromJson(value);
    case 'administrableproductdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionProperty.fromJson(value);
    case 'administrableproductdefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionProperty.fromJson(value);
    case 'administrableproductdefinitionrouteofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministration.fromJson(value);
    case 'administrableproductdefinition_routeofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministration.fromJson(value);
    case 'administrableproductdefinitiontargetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpecies.fromJson(value);
    case 'administrableproductdefinition_targetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpecies.fromJson(value);
    case 'administrableproductdefinitionwithdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriod.fromJson(value);
    case 'administrableproductdefinition_withdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriod.fromJson(value);
    case 'adverseevent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEvent.fromJson(value);
    case 'adverseeventsuspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntity.fromJson(value);
    case 'adverseevent_suspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntity.fromJson(value);
    case 'adverseeventcausality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausality.fromJson(value);
    case 'adverseevent_causality':
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
    case 'allergyintolerance_reaction':
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
    case 'appointment_participant':
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
    case 'auditevent_agent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgent.fromJson(value);
    case 'auditeventnetwork':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventNetwork.fromJson(value);
    case 'auditevent_network':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventNetwork.fromJson(value);
    case 'auditeventsource':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSource.fromJson(value);
    case 'auditevent_source':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSource.fromJson(value);
    case 'auditevententity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntity.fromJson(value);
    case 'auditevent_entity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntity.fromJson(value);
    case 'auditeventdetail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetail.fromJson(value);
    case 'auditevent_detail':
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
    case 'biologicallyderivedproduct_collection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollection.fromJson(value);
    case 'biologicallyderivedproductprocessing':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProcessing.fromJson(value);
    case 'biologicallyderivedproduct_processing':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProcessing.fromJson(value);
    case 'biologicallyderivedproductmanipulation':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductManipulation.fromJson(value);
    case 'biologicallyderivedproduct_manipulation':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductManipulation.fromJson(value);
    case 'biologicallyderivedproductstorage':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductStorage.fromJson(value);
    case 'biologicallyderivedproduct_storage':
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
    case 'bundle_link':
      return value is! Map<String, dynamic> ? null : BundleLink.fromJson(value);
    case 'bundleentry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntry.fromJson(value);
    case 'bundle_entry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntry.fromJson(value);
    case 'bundlesearch':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearch.fromJson(value);
    case 'bundle_search':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearch.fromJson(value);
    case 'bundlerequest':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequest.fromJson(value);
    case 'bundle_request':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequest.fromJson(value);
    case 'bundleresponse':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponse.fromJson(value);
    case 'bundle_response':
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
    case 'capabilitystatement_software':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftware.fromJson(value);
    case 'capabilitystatementimplementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementation.fromJson(value);
    case 'capabilitystatement_implementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementation.fromJson(value);
    case 'capabilitystatementrest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRest.fromJson(value);
    case 'capabilitystatement_rest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRest.fromJson(value);
    case 'capabilitystatementsecurity':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurity.fromJson(value);
    case 'capabilitystatement_security':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurity.fromJson(value);
    case 'capabilitystatementresource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResource.fromJson(value);
    case 'capabilitystatement_resource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResource.fromJson(value);
    case 'capabilitystatementinteraction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction.fromJson(value);
    case 'capabilitystatement_interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction.fromJson(value);
    case 'capabilitystatementsearchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParam.fromJson(value);
    case 'capabilitystatement_searchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParam.fromJson(value);
    case 'capabilitystatementoperation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperation.fromJson(value);
    case 'capabilitystatement_operation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperation.fromJson(value);
    case 'capabilitystatementinteraction1':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1.fromJson(value);
    case 'capabilitystatement_interaction1':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1.fromJson(value);
    case 'capabilitystatementmessaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessaging.fromJson(value);
    case 'capabilitystatement_messaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessaging.fromJson(value);
    case 'capabilitystatementendpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpoint.fromJson(value);
    case 'capabilitystatement_endpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpoint.fromJson(value);
    case 'capabilitystatementsupportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessage.fromJson(value);
    case 'capabilitystatement_supportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessage.fromJson(value);
    case 'capabilitystatementdocument':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocument.fromJson(value);
    case 'capabilitystatement_document':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocument.fromJson(value);
    case 'careplan':
      return value is! Map<String, dynamic> ? null : CarePlan.fromJson(value);
    case 'careplanactivity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivity.fromJson(value);
    case 'careplan_activity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivity.fromJson(value);
    case 'careplandetail':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanDetail.fromJson(value);
    case 'careplan_detail':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanDetail.fromJson(value);
    case 'careteam':
      return value is! Map<String, dynamic> ? null : CareTeam.fromJson(value);
    case 'careteamparticipant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipant.fromJson(value);
    case 'careteam_participant':
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
    case 'catalogentry_relatedentry':
      return value is! Map<String, dynamic>
          ? null
          : CatalogEntryRelatedEntry.fromJson(value);
    case 'chargeitem':
      return value is! Map<String, dynamic> ? null : ChargeItem.fromJson(value);
    case 'chargeitemperformer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformer.fromJson(value);
    case 'chargeitem_performer':
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
    case 'chargeitemdefinition_applicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicability.fromJson(value);
    case 'chargeitemdefinitionpropertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroup.fromJson(value);
    case 'chargeitemdefinition_propertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroup.fromJson(value);
    case 'chargeitemdefinitionpricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPriceComponent.fromJson(value);
    case 'chargeitemdefinition_pricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPriceComponent.fromJson(value);
    case 'citation':
      return value is! Map<String, dynamic> ? null : Citation.fromJson(value);
    case 'citationsummary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary.fromJson(value);
    case 'citation_summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary.fromJson(value);
    case 'citationclassification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification.fromJson(value);
    case 'citation_classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification.fromJson(value);
    case 'citationstatusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate.fromJson(value);
    case 'citation_statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate.fromJson(value);
    case 'citationrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo.fromJson(value);
    case 'citation_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo.fromJson(value);
    case 'citationcitedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifact.fromJson(value);
    case 'citation_citedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifact.fromJson(value);
    case 'citationversion':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersion.fromJson(value);
    case 'citation_version':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersion.fromJson(value);
    case 'citationstatusdate1':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1.fromJson(value);
    case 'citation_statusdate1':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1.fromJson(value);
    case 'citationtitle':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitle.fromJson(value);
    case 'citation_title':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitle.fromJson(value);
    case 'citationabstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstract.fromJson(value);
    case 'citation_abstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstract.fromJson(value);
    case 'citationpart':
      return value is! Map<String, dynamic>
          ? null
          : CitationPart.fromJson(value);
    case 'citation_part':
      return value is! Map<String, dynamic>
          ? null
          : CitationPart.fromJson(value);
    case 'citationrelatesto1':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo1.fromJson(value);
    case 'citation_relatesto1':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo1.fromJson(value);
    case 'citationpublicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationForm.fromJson(value);
    case 'citation_publicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationForm.fromJson(value);
    case 'citationpublishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedIn.fromJson(value);
    case 'citation_publishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedIn.fromJson(value);
    case 'citationperiodicrelease':
      return value is! Map<String, dynamic>
          ? null
          : CitationPeriodicRelease.fromJson(value);
    case 'citation_periodicrelease':
      return value is! Map<String, dynamic>
          ? null
          : CitationPeriodicRelease.fromJson(value);
    case 'citationdateofpublication':
      return value is! Map<String, dynamic>
          ? null
          : CitationDateOfPublication.fromJson(value);
    case 'citation_dateofpublication':
      return value is! Map<String, dynamic>
          ? null
          : CitationDateOfPublication.fromJson(value);
    case 'citationweblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocation.fromJson(value);
    case 'citation_weblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocation.fromJson(value);
    case 'citationclassification1':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1.fromJson(value);
    case 'citation_classification1':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1.fromJson(value);
    case 'citationwhoclassified':
      return value is! Map<String, dynamic>
          ? null
          : CitationWhoClassified.fromJson(value);
    case 'citation_whoclassified':
      return value is! Map<String, dynamic>
          ? null
          : CitationWhoClassified.fromJson(value);
    case 'citationcontributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorship.fromJson(value);
    case 'citation_contributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorship.fromJson(value);
    case 'citationentry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntry.fromJson(value);
    case 'citation_entry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntry.fromJson(value);
    case 'citationaffiliationinfo':
      return value is! Map<String, dynamic>
          ? null
          : CitationAffiliationInfo.fromJson(value);
    case 'citation_affiliationinfo':
      return value is! Map<String, dynamic>
          ? null
          : CitationAffiliationInfo.fromJson(value);
    case 'citationcontributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstance.fromJson(value);
    case 'citation_contributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstance.fromJson(value);
    case 'citationsummary1':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1.fromJson(value);
    case 'citation_summary1':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1.fromJson(value);
    case 'claim':
      return value is! Map<String, dynamic> ? null : Claim.fromJson(value);
    case 'claimrelated':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelated.fromJson(value);
    case 'claim_related':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelated.fromJson(value);
    case 'claimpayee':
      return value is! Map<String, dynamic> ? null : ClaimPayee.fromJson(value);
    case 'claim_payee':
      return value is! Map<String, dynamic> ? null : ClaimPayee.fromJson(value);
    case 'claimcareteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeam.fromJson(value);
    case 'claim_careteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeam.fromJson(value);
    case 'claimsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfo.fromJson(value);
    case 'claim_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfo.fromJson(value);
    case 'claimdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosis.fromJson(value);
    case 'claim_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosis.fromJson(value);
    case 'claimprocedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedure.fromJson(value);
    case 'claim_procedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedure.fromJson(value);
    case 'claiminsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsurance.fromJson(value);
    case 'claim_insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsurance.fromJson(value);
    case 'claimaccident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccident.fromJson(value);
    case 'claim_accident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccident.fromJson(value);
    case 'claimitem':
      return value is! Map<String, dynamic> ? null : ClaimItem.fromJson(value);
    case 'claim_item':
      return value is! Map<String, dynamic> ? null : ClaimItem.fromJson(value);
    case 'claimdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetail.fromJson(value);
    case 'claim_detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetail.fromJson(value);
    case 'claimsubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetail.fromJson(value);
    case 'claim_subdetail':
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
    case 'claimresponse_item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItem.fromJson(value);
    case 'claimresponseadjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudication.fromJson(value);
    case 'claimresponse_adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudication.fromJson(value);
    case 'claimresponsedetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail.fromJson(value);
    case 'claimresponse_detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail.fromJson(value);
    case 'claimresponsesubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail.fromJson(value);
    case 'claimresponse_subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail.fromJson(value);
    case 'claimresponseadditem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItem.fromJson(value);
    case 'claimresponse_additem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItem.fromJson(value);
    case 'claimresponsedetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1.fromJson(value);
    case 'claimresponse_detail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1.fromJson(value);
    case 'claimresponsesubdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1.fromJson(value);
    case 'claimresponse_subdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1.fromJson(value);
    case 'claimresponsetotal':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotal.fromJson(value);
    case 'claimresponse_total':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotal.fromJson(value);
    case 'claimresponsepayment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePayment.fromJson(value);
    case 'claimresponse_payment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePayment.fromJson(value);
    case 'claimresponseprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNote.fromJson(value);
    case 'claimresponse_processnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNote.fromJson(value);
    case 'claimresponseinsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsurance.fromJson(value);
    case 'claimresponse_insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsurance.fromJson(value);
    case 'claimresponseerror':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseError.fromJson(value);
    case 'claimresponse_error':
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
    case 'clinicalimpression_investigation':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionInvestigation.fromJson(value);
    case 'clinicalimpressionfinding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFinding.fromJson(value);
    case 'clinicalimpression_finding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFinding.fromJson(value);
    case 'clinicalusedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinition.fromJson(value);
    case 'clinicalusedefinitioncontraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(value);
    case 'clinicalusedefinition_contraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(value);
    case 'clinicalusedefinitionothertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapy.fromJson(value);
    case 'clinicalusedefinition_othertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapy.fromJson(value);
    case 'clinicalusedefinitionindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndication.fromJson(value);
    case 'clinicalusedefinition_indication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndication.fromJson(value);
    case 'clinicalusedefinitioninteraction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(value);
    case 'clinicalusedefinition_interaction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(value);
    case 'clinicalusedefinitioninteractant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractant.fromJson(value);
    case 'clinicalusedefinition_interactant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractant.fromJson(value);
    case 'clinicalusedefinitionundesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(value);
    case 'clinicalusedefinition_undesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(value);
    case 'clinicalusedefinitionwarning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarning.fromJson(value);
    case 'clinicalusedefinition_warning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarning.fromJson(value);
    case 'codesystem':
      return value is! Map<String, dynamic> ? null : CodeSystem.fromJson(value);
    case 'codesystemfilter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilter.fromJson(value);
    case 'codesystem_filter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilter.fromJson(value);
    case 'codesystemproperty':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty.fromJson(value);
    case 'codesystem_property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty.fromJson(value);
    case 'codesystemconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConcept.fromJson(value);
    case 'codesystem_concept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConcept.fromJson(value);
    case 'codesystemdesignation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignation.fromJson(value);
    case 'codesystem_designation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignation.fromJson(value);
    case 'codesystemproperty1':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1.fromJson(value);
    case 'codesystem_property1':
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
    case 'communication_payload':
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
    case 'communicationrequest_payload':
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
    case 'compartmentdefinition_resource':
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
    case 'composition_attester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttester.fromJson(value);
    case 'compositionrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : CompositionRelatesTo.fromJson(value);
    case 'composition_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CompositionRelatesTo.fromJson(value);
    case 'compositionevent':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEvent.fromJson(value);
    case 'composition_event':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEvent.fromJson(value);
    case 'compositionsection':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSection.fromJson(value);
    case 'composition_section':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSection.fromJson(value);
    case 'conceptmap':
      return value is! Map<String, dynamic> ? null : ConceptMap.fromJson(value);
    case 'conceptmapgroup':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroup.fromJson(value);
    case 'conceptmap_group':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroup.fromJson(value);
    case 'conceptmapelement':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElement.fromJson(value);
    case 'conceptmap_element':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElement.fromJson(value);
    case 'conceptmaptarget':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTarget.fromJson(value);
    case 'conceptmap_target':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTarget.fromJson(value);
    case 'conceptmapdependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOn.fromJson(value);
    case 'conceptmap_dependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOn.fromJson(value);
    case 'conceptmapunmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmapped.fromJson(value);
    case 'conceptmap_unmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmapped.fromJson(value);
    case 'condition':
      return value is! Map<String, dynamic> ? null : Condition.fromJson(value);
    case 'conditionstage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStage.fromJson(value);
    case 'condition_stage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStage.fromJson(value);
    case 'conditionevidence':
      return value is! Map<String, dynamic>
          ? null
          : ConditionEvidence.fromJson(value);
    case 'condition_evidence':
      return value is! Map<String, dynamic>
          ? null
          : ConditionEvidence.fromJson(value);
    case 'consent':
      return value is! Map<String, dynamic> ? null : Consent.fromJson(value);
    case 'consentpolicy':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicy.fromJson(value);
    case 'consent_policy':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicy.fromJson(value);
    case 'consentverification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerification.fromJson(value);
    case 'consent_verification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerification.fromJson(value);
    case 'consentprovision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvision.fromJson(value);
    case 'consent_provision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvision.fromJson(value);
    case 'consentactor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActor.fromJson(value);
    case 'consent_actor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActor.fromJson(value);
    case 'consentdata':
      return value is! Map<String, dynamic>
          ? null
          : ConsentData.fromJson(value);
    case 'consent_data':
      return value is! Map<String, dynamic>
          ? null
          : ConsentData.fromJson(value);
    case 'contract':
      return value is! Map<String, dynamic> ? null : Contract.fromJson(value);
    case 'contractcontentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinition.fromJson(value);
    case 'contract_contentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinition.fromJson(value);
    case 'contractterm':
      return value is! Map<String, dynamic>
          ? null
          : ContractTerm.fromJson(value);
    case 'contract_term':
      return value is! Map<String, dynamic>
          ? null
          : ContractTerm.fromJson(value);
    case 'contractsecuritylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabel.fromJson(value);
    case 'contract_securitylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabel.fromJson(value);
    case 'contractoffer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOffer.fromJson(value);
    case 'contract_offer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOffer.fromJson(value);
    case 'contractparty':
      return value is! Map<String, dynamic>
          ? null
          : ContractParty.fromJson(value);
    case 'contract_party':
      return value is! Map<String, dynamic>
          ? null
          : ContractParty.fromJson(value);
    case 'contractanswer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswer.fromJson(value);
    case 'contract_answer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswer.fromJson(value);
    case 'contractasset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAsset.fromJson(value);
    case 'contract_asset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAsset.fromJson(value);
    case 'contractcontext':
      return value is! Map<String, dynamic>
          ? null
          : ContractContext.fromJson(value);
    case 'contract_context':
      return value is! Map<String, dynamic>
          ? null
          : ContractContext.fromJson(value);
    case 'contractvalueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItem.fromJson(value);
    case 'contract_valueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItem.fromJson(value);
    case 'contractaction':
      return value is! Map<String, dynamic>
          ? null
          : ContractAction.fromJson(value);
    case 'contract_action':
      return value is! Map<String, dynamic>
          ? null
          : ContractAction.fromJson(value);
    case 'contractsubject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubject.fromJson(value);
    case 'contract_subject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubject.fromJson(value);
    case 'contractsigner':
      return value is! Map<String, dynamic>
          ? null
          : ContractSigner.fromJson(value);
    case 'contract_signer':
      return value is! Map<String, dynamic>
          ? null
          : ContractSigner.fromJson(value);
    case 'contractfriendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendly.fromJson(value);
    case 'contract_friendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendly.fromJson(value);
    case 'contractlegal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegal.fromJson(value);
    case 'contract_legal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegal.fromJson(value);
    case 'contractrule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRule.fromJson(value);
    case 'contract_rule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRule.fromJson(value);
    case 'coverage':
      return value is! Map<String, dynamic> ? null : Coverage.fromJson(value);
    case 'coverageclass':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClass.fromJson(value);
    case 'coverage_class':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClass.fromJson(value);
    case 'coveragecosttobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiary.fromJson(value);
    case 'coverage_costtobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiary.fromJson(value);
    case 'coverageexception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageException.fromJson(value);
    case 'coverage_exception':
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
    case 'coverageeligibilityrequest_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfo.fromJson(value);
    case 'coverageeligibilityrequestinsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsurance.fromJson(value);
    case 'coverageeligibilityrequest_insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsurance.fromJson(value);
    case 'coverageeligibilityrequestitem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItem.fromJson(value);
    case 'coverageeligibilityrequest_item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItem.fromJson(value);
    case 'coverageeligibilityrequestdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosis.fromJson(value);
    case 'coverageeligibilityrequest_diagnosis':
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
    case 'coverageeligibilityresponse_insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsurance.fromJson(value);
    case 'coverageeligibilityresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItem.fromJson(value);
    case 'coverageeligibilityresponse_item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItem.fromJson(value);
    case 'coverageeligibilityresponsebenefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefit.fromJson(value);
    case 'coverageeligibilityresponse_benefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefit.fromJson(value);
    case 'coverageeligibilityresponseerror':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseError.fromJson(value);
    case 'coverageeligibilityresponse_error':
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
    case 'detectedissue_evidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidence.fromJson(value);
    case 'detectedissuemitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigation.fromJson(value);
    case 'detectedissue_mitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigation.fromJson(value);
    case 'device':
      return value is! Map<String, dynamic> ? null : Device.fromJson(value);
    case 'deviceudicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrier.fromJson(value);
    case 'device_udicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrier.fromJson(value);
    case 'devicedevicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDeviceName.fromJson(value);
    case 'device_devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDeviceName.fromJson(value);
    case 'devicespecialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceSpecialization.fromJson(value);
    case 'device_specialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceSpecialization.fromJson(value);
    case 'deviceversion':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersion.fromJson(value);
    case 'device_version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersion.fromJson(value);
    case 'deviceproperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceProperty.fromJson(value);
    case 'device_property':
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
    case 'devicedefinition_udideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifier.fromJson(value);
    case 'devicedefinitiondevicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceName.fromJson(value);
    case 'devicedefinition_devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceName.fromJson(value);
    case 'devicedefinitionspecialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionSpecialization.fromJson(value);
    case 'devicedefinition_specialization':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionSpecialization.fromJson(value);
    case 'devicedefinitioncapability':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCapability.fromJson(value);
    case 'devicedefinition_capability':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCapability.fromJson(value);
    case 'devicedefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionProperty.fromJson(value);
    case 'devicedefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionProperty.fromJson(value);
    case 'devicedefinitionmaterial':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterial.fromJson(value);
    case 'devicedefinition_material':
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
    case 'devicemetric_calibration':
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
    case 'devicerequest_parameter':
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
    case 'diagnosticreport_media':
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
    case 'documentmanifest_related':
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
    case 'documentreference_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesTo.fromJson(value);
    case 'documentreferencecontent':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContent.fromJson(value);
    case 'documentreference_content':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContent.fromJson(value);
    case 'documentreferencecontext':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContext.fromJson(value);
    case 'documentreference_context':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContext.fromJson(value);
    case 'encounter':
      return value is! Map<String, dynamic> ? null : Encounter.fromJson(value);
    case 'encounterstatushistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterStatusHistory.fromJson(value);
    case 'encounter_statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterStatusHistory.fromJson(value);
    case 'encounterclasshistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterClassHistory.fromJson(value);
    case 'encounter_classhistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterClassHistory.fromJson(value);
    case 'encounterparticipant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipant.fromJson(value);
    case 'encounter_participant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipant.fromJson(value);
    case 'encounterdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosis.fromJson(value);
    case 'encounter_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosis.fromJson(value);
    case 'encounterhospitalization':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHospitalization.fromJson(value);
    case 'encounter_hospitalization':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHospitalization.fromJson(value);
    case 'encounterlocation':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocation.fromJson(value);
    case 'encounter_location':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocation.fromJson(value);
    case 'fhirendpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpoint.fromJson(value);
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
    case 'episodeofcare_statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistory.fromJson(value);
    case 'episodeofcarediagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosis.fromJson(value);
    case 'episodeofcare_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosis.fromJson(value);
    case 'eventdefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinition.fromJson(value);
    case 'evidence':
      return value is! Map<String, dynamic> ? null : Evidence.fromJson(value);
    case 'evidencevariabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinition.fromJson(value);
    case 'evidence_variabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinition.fromJson(value);
    case 'evidencestatistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatistic.fromJson(value);
    case 'evidence_statistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatistic.fromJson(value);
    case 'evidencesamplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSize.fromJson(value);
    case 'evidence_samplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSize.fromJson(value);
    case 'evidenceattributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimate.fromJson(value);
    case 'evidence_attributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimate.fromJson(value);
    case 'evidencemodelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristic.fromJson(value);
    case 'evidence_modelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristic.fromJson(value);
    case 'evidencemodelcharacteristicvariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariable.fromJson(value);
    case 'evidence_variable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariable.fromJson(value);
    case 'evidencevariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariable.fromJson(value);
    case 'evidencecertainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertainty.fromJson(value);
    case 'evidence_certainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertainty.fromJson(value);
    case 'evidencereport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReport.fromJson(value);
    case 'evidencereportsubject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubject.fromJson(value);
    case 'evidencereport_subject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubject.fromJson(value);
    case 'evidencereportcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristic.fromJson(value);
    case 'evidencereport_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristic.fromJson(value);
    case 'evidencereportrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesTo.fromJson(value);
    case 'evidencereport_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesTo.fromJson(value);
    case 'evidencereportsection':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSection.fromJson(value);
    case 'evidencereport_section':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSection.fromJson(value);
    case 'evidencevariablecharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristic.fromJson(value);
    case 'evidencevariable_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristic.fromJson(value);
    case 'evidencevariabletimefromstart':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromStart.fromJson(value);
    case 'evidencevariable_timefromstart':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromStart.fromJson(value);
    case 'evidencevariablecategory':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategory.fromJson(value);
    case 'evidencevariable_category':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategory.fromJson(value);
    case 'examplescenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenario.fromJson(value);
    case 'examplescenarioactor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActor.fromJson(value);
    case 'examplescenario_actor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActor.fromJson(value);
    case 'examplescenarioinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstance.fromJson(value);
    case 'examplescenario_instance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstance.fromJson(value);
    case 'examplescenarioversion':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersion.fromJson(value);
    case 'examplescenario_version':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersion.fromJson(value);
    case 'examplescenariocontainedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstance.fromJson(value);
    case 'examplescenario_containedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstance.fromJson(value);
    case 'examplescenarioprocess':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcess.fromJson(value);
    case 'examplescenario_process':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcess.fromJson(value);
    case 'examplescenariostep':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStep.fromJson(value);
    case 'examplescenario_step':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStep.fromJson(value);
    case 'examplescenariooperation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperation.fromJson(value);
    case 'examplescenario_operation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperation.fromJson(value);
    case 'examplescenarioalternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternative.fromJson(value);
    case 'examplescenario_alternative':
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
    case 'explanationofbenefit_related':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelated.fromJson(value);
    case 'explanationofbenefitpayee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayee.fromJson(value);
    case 'explanationofbenefit_payee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayee.fromJson(value);
    case 'explanationofbenefitcareteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeam.fromJson(value);
    case 'explanationofbenefit_careteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeam.fromJson(value);
    case 'explanationofbenefitsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfo.fromJson(value);
    case 'explanationofbenefit_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfo.fromJson(value);
    case 'explanationofbenefitdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosis.fromJson(value);
    case 'explanationofbenefit_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosis.fromJson(value);
    case 'explanationofbenefitprocedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedure.fromJson(value);
    case 'explanationofbenefit_procedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedure.fromJson(value);
    case 'explanationofbenefitinsurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsurance.fromJson(value);
    case 'explanationofbenefit_insurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsurance.fromJson(value);
    case 'explanationofbenefitaccident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccident.fromJson(value);
    case 'explanationofbenefit_accident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccident.fromJson(value);
    case 'explanationofbenefititem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItem.fromJson(value);
    case 'explanationofbenefit_item':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItem.fromJson(value);
    case 'explanationofbenefitadjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudication.fromJson(value);
    case 'explanationofbenefit_adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudication.fromJson(value);
    case 'explanationofbenefitdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail.fromJson(value);
    case 'explanationofbenefit_detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail.fromJson(value);
    case 'explanationofbenefitsubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail.fromJson(value);
    case 'explanationofbenefit_subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail.fromJson(value);
    case 'explanationofbenefitadditem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItem.fromJson(value);
    case 'explanationofbenefit_additem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItem.fromJson(value);
    case 'explanationofbenefitdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1.fromJson(value);
    case 'explanationofbenefit_detail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1.fromJson(value);
    case 'explanationofbenefitsubdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1.fromJson(value);
    case 'explanationofbenefit_subdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1.fromJson(value);
    case 'explanationofbenefittotal':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotal.fromJson(value);
    case 'explanationofbenefit_total':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotal.fromJson(value);
    case 'explanationofbenefitpayment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayment.fromJson(value);
    case 'explanationofbenefit_payment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayment.fromJson(value);
    case 'explanationofbenefitprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNote.fromJson(value);
    case 'explanationofbenefit_processnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNote.fromJson(value);
    case 'explanationofbenefitbenefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalance.fromJson(value);
    case 'explanationofbenefit_benefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalance.fromJson(value);
    case 'explanationofbenefitfinancial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancial.fromJson(value);
    case 'explanationofbenefit_financial':
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
    case 'familymemberhistory_condition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryCondition.fromJson(value);
    case 'flag':
      return value is! Map<String, dynamic> ? null : Flag.fromJson(value);
    case 'goal':
      return value is! Map<String, dynamic> ? null : Goal.fromJson(value);
    case 'goaltarget':
      return value is! Map<String, dynamic> ? null : GoalTarget.fromJson(value);
    case 'goal_target':
      return value is! Map<String, dynamic> ? null : GoalTarget.fromJson(value);
    case 'graphdefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinition.fromJson(value);
    case 'graphdefinitionlink':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLink.fromJson(value);
    case 'graphdefinition_link':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLink.fromJson(value);
    case 'graphdefinitiontarget':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionTarget.fromJson(value);
    case 'graphdefinition_target':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionTarget.fromJson(value);
    case 'graphdefinitioncompartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartment.fromJson(value);
    case 'graphdefinition_compartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartment.fromJson(value);
    case 'fhirgroup':
      return value is! Map<String, dynamic> ? null : FhirGroup.fromJson(value);
    case 'group':
      return value is! Map<String, dynamic> ? null : FhirGroup.fromJson(value);
    case 'groupcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristic.fromJson(value);
    case 'group_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristic.fromJson(value);
    case 'groupmember':
      return value is! Map<String, dynamic>
          ? null
          : GroupMember.fromJson(value);
    case 'group_member':
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
    case 'healthcareservice_eligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibility.fromJson(value);
    case 'healthcareserviceavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceAvailableTime.fromJson(value);
    case 'healthcareservice_availabletime':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceAvailableTime.fromJson(value);
    case 'healthcareservicenotavailable':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceNotAvailable.fromJson(value);
    case 'healthcareservice_notavailable':
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
    case 'imagingstudy_series':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeries.fromJson(value);
    case 'imagingstudyperformer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformer.fromJson(value);
    case 'imagingstudy_performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformer.fromJson(value);
    case 'imagingstudyinstance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstance.fromJson(value);
    case 'imagingstudy_instance':
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
    case 'immunization_performer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformer.fromJson(value);
    case 'immunizationeducation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEducation.fromJson(value);
    case 'immunization_education':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEducation.fromJson(value);
    case 'immunizationreaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReaction.fromJson(value);
    case 'immunization_reaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReaction.fromJson(value);
    case 'immunizationprotocolapplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolApplied.fromJson(value);
    case 'immunization_protocolapplied':
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
    case 'immunizationrecommendation_recommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendation.fromJson(value);
    case 'immunizationrecommendationdatecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterion.fromJson(value);
    case 'immunizationrecommendation_datecriterion':
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
    case 'implementationguide_dependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOn.fromJson(value);
    case 'implementationguideglobal':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobal.fromJson(value);
    case 'implementationguide_global':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobal.fromJson(value);
    case 'implementationguidedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinition.fromJson(value);
    case 'implementationguide_definition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinition.fromJson(value);
    case 'implementationguidegrouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGrouping.fromJson(value);
    case 'implementationguide_grouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGrouping.fromJson(value);
    case 'implementationguideresource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource.fromJson(value);
    case 'implementationguide_resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource.fromJson(value);
    case 'implementationguidepage':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage.fromJson(value);
    case 'implementationguide_page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage.fromJson(value);
    case 'implementationguideparameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameter.fromJson(value);
    case 'implementationguide_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameter.fromJson(value);
    case 'implementationguidetemplate':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplate.fromJson(value);
    case 'implementationguide_template':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplate.fromJson(value);
    case 'implementationguidemanifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifest.fromJson(value);
    case 'implementationguide_manifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifest.fromJson(value);
    case 'implementationguideresource1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1.fromJson(value);
    case 'implementationguide_resource1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1.fromJson(value);
    case 'implementationguidepage1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1.fromJson(value);
    case 'implementationguide_page1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1.fromJson(value);
    case 'ingredient':
      return value is! Map<String, dynamic> ? null : Ingredient.fromJson(value);
    case 'ingredientmanufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturer.fromJson(value);
    case 'ingredient_manufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturer.fromJson(value);
    case 'ingredientsubstance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstance.fromJson(value);
    case 'ingredient_substance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstance.fromJson(value);
    case 'ingredientstrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrength.fromJson(value);
    case 'ingredient_strength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrength.fromJson(value);
    case 'ingredientreferencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrength.fromJson(value);
    case 'ingredient_referencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrength.fromJson(value);
    case 'insuranceplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlan.fromJson(value);
    case 'insuranceplancontact':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanContact.fromJson(value);
    case 'insuranceplan_contact':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanContact.fromJson(value);
    case 'insuranceplancoverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverage.fromJson(value);
    case 'insuranceplan_coverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverage.fromJson(value);
    case 'insuranceplanbenefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit.fromJson(value);
    case 'insuranceplan_benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit.fromJson(value);
    case 'insuranceplanlimit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimit.fromJson(value);
    case 'insuranceplan_limit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimit.fromJson(value);
    case 'insuranceplanplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlan.fromJson(value);
    case 'insuranceplan_plan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlan.fromJson(value);
    case 'insuranceplangeneralcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCost.fromJson(value);
    case 'insuranceplan_generalcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCost.fromJson(value);
    case 'insuranceplanspecificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCost.fromJson(value);
    case 'insuranceplan_specificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCost.fromJson(value);
    case 'insuranceplanbenefit1':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1.fromJson(value);
    case 'insuranceplan_benefit1':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1.fromJson(value);
    case 'insuranceplancost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCost.fromJson(value);
    case 'insuranceplan_cost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCost.fromJson(value);
    case 'invoice':
      return value is! Map<String, dynamic> ? null : Invoice.fromJson(value);
    case 'invoiceparticipant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipant.fromJson(value);
    case 'invoice_participant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipant.fromJson(value);
    case 'invoicelineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItem.fromJson(value);
    case 'invoice_lineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItem.fromJson(value);
    case 'invoicepricecomponent':
      return value is! Map<String, dynamic>
          ? null
          : InvoicePriceComponent.fromJson(value);
    case 'invoice_pricecomponent':
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
    case 'linkage_item':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItem.fromJson(value);
    case 'fhirlist':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'list':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'listentry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'list_entry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'location':
      return value is! Map<String, dynamic> ? null : Location.fromJson(value);
    case 'locationposition':
      return value is! Map<String, dynamic>
          ? null
          : LocationPosition.fromJson(value);
    case 'location_position':
      return value is! Map<String, dynamic>
          ? null
          : LocationPosition.fromJson(value);
    case 'locationhoursofoperation':
      return value is! Map<String, dynamic>
          ? null
          : LocationHoursOfOperation.fromJson(value);
    case 'location_hoursofoperation':
      return value is! Map<String, dynamic>
          ? null
          : LocationHoursOfOperation.fromJson(value);
    case 'manufactureditemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinition.fromJson(value);
    case 'manufactureditemdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionProperty.fromJson(value);
    case 'manufactureditemdefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionProperty.fromJson(value);
    case 'measure':
      return value is! Map<String, dynamic> ? null : Measure.fromJson(value);
    case 'measuregroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroup.fromJson(value);
    case 'measure_group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroup.fromJson(value);
    case 'measurepopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulation.fromJson(value);
    case 'measure_population':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulation.fromJson(value);
    case 'measurestratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifier.fromJson(value);
    case 'measure_stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifier.fromJson(value);
    case 'measurecomponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponent.fromJson(value);
    case 'measure_component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponent.fromJson(value);
    case 'measuresupplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalData.fromJson(value);
    case 'measure_supplementaldata':
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
    case 'measurereport_group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroup.fromJson(value);
    case 'measurereportpopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation.fromJson(value);
    case 'measurereport_population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation.fromJson(value);
    case 'measurereportstratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifier.fromJson(value);
    case 'measurereport_stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifier.fromJson(value);
    case 'measurereportstratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratum.fromJson(value);
    case 'measurereport_stratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratum.fromJson(value);
    case 'measurereportcomponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponent.fromJson(value);
    case 'measurereport_component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponent.fromJson(value);
    case 'measurereportpopulation1':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1.fromJson(value);
    case 'measurereport_population1':
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
    case 'medication_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredient.fromJson(value);
    case 'medicationbatch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatch.fromJson(value);
    case 'medication_batch':
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
    case 'medicationadministration_performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformer.fromJson(value);
    case 'medicationadministrationdosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosage.fromJson(value);
    case 'medicationadministration_dosage':
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
    case 'medicationdispense_performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformer.fromJson(value);
    case 'medicationdispensesubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitution.fromJson(value);
    case 'medicationdispense_substitution':
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
    case 'medicationknowledge_relatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledge.fromJson(value);
    case 'medicationknowledgemonograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonograph.fromJson(value);
    case 'medicationknowledge_monograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonograph.fromJson(value);
    case 'medicationknowledgeingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredient.fromJson(value);
    case 'medicationknowledge_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredient.fromJson(value);
    case 'medicationknowledgecost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCost.fromJson(value);
    case 'medicationknowledge_cost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCost.fromJson(value);
    case 'medicationknowledgemonitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgram.fromJson(value);
    case 'medicationknowledge_monitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgram.fromJson(value);
    case 'medicationknowledgeadministrationguidelines':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeAdministrationGuidelines.fromJson(value);
    case 'medicationknowledge_administrationguidelines':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeAdministrationGuidelines.fromJson(value);
    case 'medicationknowledgedosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosage.fromJson(value);
    case 'medicationknowledge_dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosage.fromJson(value);
    case 'medicationknowledgepatientcharacteristics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristics.fromJson(value);
    case 'medicationknowledge_patientcharacteristics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristics.fromJson(value);
    case 'medicationknowledgemedicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassification.fromJson(value);
    case 'medicationknowledge_medicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassification.fromJson(value);
    case 'medicationknowledgepackaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackaging.fromJson(value);
    case 'medicationknowledge_packaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackaging.fromJson(value);
    case 'medicationknowledgedrugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristic.fromJson(value);
    case 'medicationknowledge_drugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristic.fromJson(value);
    case 'medicationknowledgeregulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatory.fromJson(value);
    case 'medicationknowledge_regulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatory.fromJson(value);
    case 'medicationknowledgesubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitution.fromJson(value);
    case 'medicationknowledge_substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitution.fromJson(value);
    case 'medicationknowledgeschedule':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSchedule.fromJson(value);
    case 'medicationknowledge_schedule':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSchedule.fromJson(value);
    case 'medicationknowledgemaxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispense.fromJson(value);
    case 'medicationknowledge_maxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispense.fromJson(value);
    case 'medicationknowledgekinetics':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeKinetics.fromJson(value);
    case 'medicationknowledge_kinetics':
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
    case 'medicationrequest_dispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequest.fromJson(value);
    case 'medicationrequestinitialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFill.fromJson(value);
    case 'medicationrequest_initialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFill.fromJson(value);
    case 'medicationrequestsubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitution.fromJson(value);
    case 'medicationrequest_substitution':
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
    case 'medicinalproductdefinitioncontact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContact.fromJson(value);
    case 'medicinalproductdefinition_contact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContact.fromJson(value);
    case 'medicinalproductdefinitionname':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionName.fromJson(value);
    case 'medicinalproductdefinition_name':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionName.fromJson(value);
    case 'medicinalproductdefinitionnamepart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNamePart.fromJson(value);
    case 'medicinalproductdefinition_namepart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNamePart.fromJson(value);
    case 'medicinalproductdefinitioncountrylanguage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCountryLanguage.fromJson(value);
    case 'medicinalproductdefinition_countrylanguage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCountryLanguage.fromJson(value);
    case 'medicinalproductdefinitioncrossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReference.fromJson(value);
    case 'medicinalproductdefinition_crossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReference.fromJson(value);
    case 'medicinalproductdefinitionoperation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperation.fromJson(value);
    case 'medicinalproductdefinition_operation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperation.fromJson(value);
    case 'medicinalproductdefinitioncharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristic.fromJson(value);
    case 'medicinalproductdefinition_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristic.fromJson(value);
    case 'messagedefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinition.fromJson(value);
    case 'messagedefinitionfocus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocus.fromJson(value);
    case 'messagedefinition_focus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocus.fromJson(value);
    case 'messagedefinitionallowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponse.fromJson(value);
    case 'messagedefinition_allowedresponse':
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
    case 'messageheader_destination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestination.fromJson(value);
    case 'messageheadersource':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSource.fromJson(value);
    case 'messageheader_source':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSource.fromJson(value);
    case 'messageheaderresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponse.fromJson(value);
    case 'messageheader_response':
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
    case 'molecularsequence_referenceseq':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceReferenceSeq.fromJson(value);
    case 'molecularsequencevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceVariant.fromJson(value);
    case 'molecularsequence_variant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceVariant.fromJson(value);
    case 'molecularsequencequality':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceQuality.fromJson(value);
    case 'molecularsequence_quality':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceQuality.fromJson(value);
    case 'molecularsequenceroc':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRoc.fromJson(value);
    case 'molecularsequence_roc':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRoc.fromJson(value);
    case 'molecularsequencerepository':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRepository.fromJson(value);
    case 'molecularsequence_repository':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRepository.fromJson(value);
    case 'molecularsequencestructurevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStructureVariant.fromJson(value);
    case 'molecularsequence_structurevariant':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStructureVariant.fromJson(value);
    case 'molecularsequenceouter':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceOuter.fromJson(value);
    case 'molecularsequence_outer':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceOuter.fromJson(value);
    case 'molecularsequenceinner':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceInner.fromJson(value);
    case 'molecularsequence_inner':
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
    case 'namingsystem_uniqueid':
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
    case 'nutritionorder_oraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDiet.fromJson(value);
    case 'nutritionordernutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrient.fromJson(value);
    case 'nutritionorder_nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrient.fromJson(value);
    case 'nutritionordertexture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTexture.fromJson(value);
    case 'nutritionorder_texture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTexture.fromJson(value);
    case 'nutritionordersupplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplement.fromJson(value);
    case 'nutritionorder_supplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplement.fromJson(value);
    case 'nutritionorderenteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormula.fromJson(value);
    case 'nutritionorder_enteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormula.fromJson(value);
    case 'nutritionorderadministration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministration.fromJson(value);
    case 'nutritionorder_administration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministration.fromJson(value);
    case 'nutritionproduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProduct.fromJson(value);
    case 'nutritionproductnutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrient.fromJson(value);
    case 'nutritionproduct_nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrient.fromJson(value);
    case 'nutritionproductingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredient.fromJson(value);
    case 'nutritionproduct_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredient.fromJson(value);
    case 'nutritionproductproductcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductProductCharacteristic.fromJson(value);
    case 'nutritionproduct_productcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductProductCharacteristic.fromJson(value);
    case 'nutritionproductinstance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstance.fromJson(value);
    case 'nutritionproduct_instance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstance.fromJson(value);
    case 'observation':
      return value is! Map<String, dynamic>
          ? null
          : Observation.fromJson(value);
    case 'observationreferencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRange.fromJson(value);
    case 'observation_referencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRange.fromJson(value);
    case 'observationcomponent':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponent.fromJson(value);
    case 'observation_component':
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
    case 'observationdefinition_quantitativedetails':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQuantitativeDetails.fromJson(value);
    case 'observationdefinitionqualifiedinterval':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedInterval.fromJson(value);
    case 'observationdefinition_qualifiedinterval':
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
    case 'operationdefinition_parameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameter.fromJson(value);
    case 'operationdefinitionbinding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBinding.fromJson(value);
    case 'operationdefinition_binding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBinding.fromJson(value);
    case 'operationdefinitionreferencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFrom.fromJson(value);
    case 'operationdefinition_referencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFrom.fromJson(value);
    case 'operationdefinitionoverload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverload.fromJson(value);
    case 'operationdefinition_overload':
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
    case 'operationoutcome_issue':
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
    case 'organization_contact':
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
    case 'packagedproductdefinitionlegalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupply.fromJson(value);
    case 'packagedproductdefinition_legalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupply.fromJson(value);
    case 'packagedproductdefinitionpackage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackage.fromJson(value);
    case 'packagedproductdefinition_package':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackage.fromJson(value);
    case 'packagedproductdefinitionshelflifestorage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionShelfLifeStorage.fromJson(value);
    case 'packagedproductdefinition_shelflifestorage':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionShelfLifeStorage.fromJson(value);
    case 'packagedproductdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionProperty.fromJson(value);
    case 'packagedproductdefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionProperty.fromJson(value);
    case 'packagedproductdefinitioncontaineditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItem.fromJson(value);
    case 'packagedproductdefinition_containeditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItem.fromJson(value);
    case 'parameters':
      return value is! Map<String, dynamic> ? null : Parameters.fromJson(value);
    case 'parametersparameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameter.fromJson(value);
    case 'parameters_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameter.fromJson(value);
    case 'patient':
      return value is! Map<String, dynamic> ? null : Patient.fromJson(value);
    case 'patientcontact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContact.fromJson(value);
    case 'patient_contact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContact.fromJson(value);
    case 'patientcommunication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunication.fromJson(value);
    case 'patient_communication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunication.fromJson(value);
    case 'patientlink':
      return value is! Map<String, dynamic>
          ? null
          : PatientLink.fromJson(value);
    case 'patient_link':
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
    case 'paymentreconciliation_detail':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationDetail.fromJson(value);
    case 'paymentreconciliationprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNote.fromJson(value);
    case 'paymentreconciliation_processnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNote.fromJson(value);
    case 'person':
      return value is! Map<String, dynamic> ? null : Person.fromJson(value);
    case 'personlink':
      return value is! Map<String, dynamic> ? null : PersonLink.fromJson(value);
    case 'person_link':
      return value is! Map<String, dynamic> ? null : PersonLink.fromJson(value);
    case 'plandefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinition.fromJson(value);
    case 'plandefinitiongoal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoal.fromJson(value);
    case 'plandefinition_goal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoal.fromJson(value);
    case 'plandefinitiontarget':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTarget.fromJson(value);
    case 'plandefinition_target':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTarget.fromJson(value);
    case 'plandefinitionaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionAction.fromJson(value);
    case 'plandefinition_action':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionAction.fromJson(value);
    case 'plandefinitioncondition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionCondition.fromJson(value);
    case 'plandefinition_condition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionCondition.fromJson(value);
    case 'plandefinitionrelatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedAction.fromJson(value);
    case 'plandefinition_relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedAction.fromJson(value);
    case 'plandefinitionparticipant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipant.fromJson(value);
    case 'plandefinition_participant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipant.fromJson(value);
    case 'plandefinitiondynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValue.fromJson(value);
    case 'plandefinition_dynamicvalue':
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
    case 'practitioner_qualification':
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
    case 'practitionerrole_availabletime':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleAvailableTime.fromJson(value);
    case 'practitionerrolenotavailable':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleNotAvailable.fromJson(value);
    case 'practitionerrole_notavailable':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleNotAvailable.fromJson(value);
    case 'procedure':
      return value is! Map<String, dynamic> ? null : Procedure.fromJson(value);
    case 'procedureperformer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformer.fromJson(value);
    case 'procedure_performer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformer.fromJson(value);
    case 'procedurefocaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDevice.fromJson(value);
    case 'procedure_focaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDevice.fromJson(value);
    case 'provenance':
      return value is! Map<String, dynamic> ? null : Provenance.fromJson(value);
    case 'provenanceagent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgent.fromJson(value);
    case 'provenance_agent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgent.fromJson(value);
    case 'provenanceentity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntity.fromJson(value);
    case 'provenance_entity':
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
    case 'questionnaire_item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItem.fromJson(value);
    case 'questionnaireenablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhen.fromJson(value);
    case 'questionnaire_enablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhen.fromJson(value);
    case 'questionnaireansweroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOption.fromJson(value);
    case 'questionnaire_answeroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOption.fromJson(value);
    case 'questionnaireinitial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitial.fromJson(value);
    case 'questionnaire_initial':
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
    case 'questionnaireresponse_item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItem.fromJson(value);
    case 'questionnaireresponseanswer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswer.fromJson(value);
    case 'questionnaireresponse_answer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswer.fromJson(value);
    case 'regulatedauthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorization.fromJson(value);
    case 'regulatedauthorizationcase':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCase.fromJson(value);
    case 'regulatedauthorization_case':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCase.fromJson(value);
    case 'relatedperson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPerson.fromJson(value);
    case 'relatedpersoncommunication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunication.fromJson(value);
    case 'relatedperson_communication':
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
    case 'requestgroup_action':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupAction.fromJson(value);
    case 'requestgroupcondition':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupCondition.fromJson(value);
    case 'requestgroup_condition':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupCondition.fromJson(value);
    case 'requestgrouprelatedaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestGroupRelatedAction.fromJson(value);
    case 'requestgroup_relatedaction':
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
    case 'researchelementdefinition_characteristic':
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
    case 'researchstudy_arm':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyArm.fromJson(value);
    case 'researchstudyobjective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjective.fromJson(value);
    case 'researchstudy_objective':
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
    case 'riskassessment_prediction':
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
    case 'searchparameter_component':
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
    case 'specimen_collection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollection.fromJson(value);
    case 'specimenprocessing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessing.fromJson(value);
    case 'specimen_processing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessing.fromJson(value);
    case 'specimencontainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainer.fromJson(value);
    case 'specimen_container':
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
    case 'specimendefinition_typetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTested.fromJson(value);
    case 'specimendefinitioncontainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainer.fromJson(value);
    case 'specimendefinition_container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainer.fromJson(value);
    case 'specimendefinitionadditive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditive.fromJson(value);
    case 'specimendefinition_additive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditive.fromJson(value);
    case 'specimendefinitionhandling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandling.fromJson(value);
    case 'specimendefinition_handling':
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
    case 'structuredefinition_mapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMapping.fromJson(value);
    case 'structuredefinitioncontext':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContext.fromJson(value);
    case 'structuredefinition_context':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContext.fromJson(value);
    case 'structuredefinitionsnapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshot.fromJson(value);
    case 'structuredefinition_snapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshot.fromJson(value);
    case 'structuredefinitiondifferential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferential.fromJson(value);
    case 'structuredefinition_differential':
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
    case 'structuremap_structure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructure.fromJson(value);
    case 'structuremapgroup':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroup.fromJson(value);
    case 'structuremap_group':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroup.fromJson(value);
    case 'structuremapinput':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInput.fromJson(value);
    case 'structuremap_input':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInput.fromJson(value);
    case 'structuremaprule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRule.fromJson(value);
    case 'structuremap_rule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRule.fromJson(value);
    case 'structuremapsource':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSource.fromJson(value);
    case 'structuremap_source':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSource.fromJson(value);
    case 'structuremaptarget':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTarget.fromJson(value);
    case 'structuremap_target':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTarget.fromJson(value);
    case 'structuremapparameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameter.fromJson(value);
    case 'structuremap_parameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameter.fromJson(value);
    case 'structuremapdependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependent.fromJson(value);
    case 'structuremap_dependent':
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
    case 'subscription_channel':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionChannel.fromJson(value);
    case 'subscriptionstatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatus.fromJson(value);
    case 'subscriptionstatusnotificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEvent.fromJson(value);
    case 'subscriptionstatus_notificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEvent.fromJson(value);
    case 'subscriptiontopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopic.fromJson(value);
    case 'subscriptiontopicresourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTrigger.fromJson(value);
    case 'subscriptiontopic_resourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTrigger.fromJson(value);
    case 'subscriptiontopicquerycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteria.fromJson(value);
    case 'subscriptiontopic_querycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteria.fromJson(value);
    case 'subscriptiontopiceventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTrigger.fromJson(value);
    case 'subscriptiontopic_eventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTrigger.fromJson(value);
    case 'subscriptiontopiccanfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterBy.fromJson(value);
    case 'subscriptiontopic_canfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterBy.fromJson(value);
    case 'subscriptiontopicnotificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShape.fromJson(value);
    case 'subscriptiontopic_notificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShape.fromJson(value);
    case 'substance':
      return value is! Map<String, dynamic> ? null : Substance.fromJson(value);
    case 'substanceinstance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceInstance.fromJson(value);
    case 'substance_instance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceInstance.fromJson(value);
    case 'substanceingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredient.fromJson(value);
    case 'substance_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredient.fromJson(value);
    case 'substancedefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinition.fromJson(value);
    case 'substancedefinitionmoiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoiety.fromJson(value);
    case 'substancedefinition_moiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoiety.fromJson(value);
    case 'substancedefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionProperty.fromJson(value);
    case 'substancedefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionProperty.fromJson(value);
    case 'substancedefinitionmolecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(value);
    case 'substancedefinition_molecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(value);
    case 'substancedefinitionstructure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructure.fromJson(value);
    case 'substancedefinition_structure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructure.fromJson(value);
    case 'substancedefinitionrepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentation.fromJson(value);
    case 'substancedefinition_representation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentation.fromJson(value);
    case 'substancedefinitioncode':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCode.fromJson(value);
    case 'substancedefinition_code':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCode.fromJson(value);
    case 'substancedefinitionname':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionName.fromJson(value);
    case 'substancedefinition_name':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionName.fromJson(value);
    case 'substancedefinitionofficial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficial.fromJson(value);
    case 'substancedefinition_official':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficial.fromJson(value);
    case 'substancedefinitionrelationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationship.fromJson(value);
    case 'substancedefinition_relationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationship.fromJson(value);
    case 'substancedefinitionsourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(value);
    case 'substancedefinition_sourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(value);
    case 'supplydelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDelivery.fromJson(value);
    case 'supplydeliverysupplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItem.fromJson(value);
    case 'supplydelivery_supplieditem':
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
    case 'supplyrequest_parameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameter.fromJson(value);
    case 'task':
      return value is! Map<String, dynamic> ? null : Task.fromJson(value);
    case 'taskrestriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestriction.fromJson(value);
    case 'task_restriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestriction.fromJson(value);
    case 'taskinput':
      return value is! Map<String, dynamic> ? null : TaskInput.fromJson(value);
    case 'task_input':
      return value is! Map<String, dynamic> ? null : TaskInput.fromJson(value);
    case 'taskoutput':
      return value is! Map<String, dynamic> ? null : TaskOutput.fromJson(value);
    case 'task_output':
      return value is! Map<String, dynamic> ? null : TaskOutput.fromJson(value);
    case 'terminologycapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilities.fromJson(value);
    case 'terminologycapabilitiessoftware':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(value);
    case 'terminologycapabilities_software':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(value);
    case 'terminologycapabilitiesimplementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(value);
    case 'terminologycapabilities_implementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(value);
    case 'terminologycapabilitiescodesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystem.fromJson(value);
    case 'terminologycapabilities_codesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystem.fromJson(value);
    case 'terminologycapabilitiesversion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersion.fromJson(value);
    case 'terminologycapabilities_version':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersion.fromJson(value);
    case 'terminologycapabilitiesfilter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilter.fromJson(value);
    case 'terminologycapabilities_filter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilter.fromJson(value);
    case 'terminologycapabilitiesexpansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(value);
    case 'terminologycapabilities_expansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(value);
    case 'terminologycapabilitiesparameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameter.fromJson(value);
    case 'terminologycapabilities_parameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameter.fromJson(value);
    case 'terminologycapabilitiesvalidatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(value);
    case 'terminologycapabilities_validatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(value);
    case 'terminologycapabilitiestranslation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(value);
    case 'terminologycapabilities_translation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(value);
    case 'terminologycapabilitiesclosure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosure.fromJson(value);
    case 'terminologycapabilities_closure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosure.fromJson(value);
    case 'testreport':
      return value is! Map<String, dynamic> ? null : TestReport.fromJson(value);
    case 'testreportparticipant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipant.fromJson(value);
    case 'testreport_participant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipant.fromJson(value);
    case 'testreportsetup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetup.fromJson(value);
    case 'testreport_setup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetup.fromJson(value);
    case 'testreportaction':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction.fromJson(value);
    case 'testreport_action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction.fromJson(value);
    case 'testreportoperation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperation.fromJson(value);
    case 'testreport_operation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperation.fromJson(value);
    case 'testreportassert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssert.fromJson(value);
    case 'testreport_assert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssert.fromJson(value);
    case 'testreporttest':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTest.fromJson(value);
    case 'testreport_test':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTest.fromJson(value);
    case 'testreportaction1':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1.fromJson(value);
    case 'testreport_action1':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1.fromJson(value);
    case 'testreportteardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardown.fromJson(value);
    case 'testreport_teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardown.fromJson(value);
    case 'testreportaction2':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2.fromJson(value);
    case 'testreport_action2':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2.fromJson(value);
    case 'testscript':
      return value is! Map<String, dynamic> ? null : TestScript.fromJson(value);
    case 'testscriptorigin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOrigin.fromJson(value);
    case 'testscript_origin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOrigin.fromJson(value);
    case 'testscriptdestination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestination.fromJson(value);
    case 'testscript_destination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestination.fromJson(value);
    case 'testscriptmetadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadata.fromJson(value);
    case 'testscript_metadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadata.fromJson(value);
    case 'testscriptlink':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLink.fromJson(value);
    case 'testscript_link':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLink.fromJson(value);
    case 'testscriptcapability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapability.fromJson(value);
    case 'testscript_capability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapability.fromJson(value);
    case 'testscriptfixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixture.fromJson(value);
    case 'testscript_fixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixture.fromJson(value);
    case 'testscriptvariable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariable.fromJson(value);
    case 'testscript_variable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariable.fromJson(value);
    case 'testscriptsetup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetup.fromJson(value);
    case 'testscript_setup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetup.fromJson(value);
    case 'testscriptaction':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction.fromJson(value);
    case 'testscript_action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction.fromJson(value);
    case 'testscriptoperation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperation.fromJson(value);
    case 'testscript_operation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperation.fromJson(value);
    case 'testscriptrequestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeader.fromJson(value);
    case 'testscript_requestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeader.fromJson(value);
    case 'testscriptassert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssert.fromJson(value);
    case 'testscript_assert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssert.fromJson(value);
    case 'testscripttest':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTest.fromJson(value);
    case 'testscript_test':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTest.fromJson(value);
    case 'testscriptaction1':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1.fromJson(value);
    case 'testscript_action1':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1.fromJson(value);
    case 'testscriptteardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardown.fromJson(value);
    case 'testscript_teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardown.fromJson(value);
    case 'testscriptaction2':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2.fromJson(value);
    case 'testscript_action2':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2.fromJson(value);
    case 'valueset':
      return value is! Map<String, dynamic> ? null : ValueSet.fromJson(value);
    case 'valuesetcompose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetCompose.fromJson(value);
    case 'valueset_compose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetCompose.fromJson(value);
    case 'valuesetinclude':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetInclude.fromJson(value);
    case 'valueset_include':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetInclude.fromJson(value);
    case 'valuesetconcept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConcept.fromJson(value);
    case 'valueset_concept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConcept.fromJson(value);
    case 'valuesetdesignation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignation.fromJson(value);
    case 'valueset_designation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignation.fromJson(value);
    case 'valuesetfilter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilter.fromJson(value);
    case 'valueset_filter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilter.fromJson(value);
    case 'valuesetexpansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansion.fromJson(value);
    case 'valueset_expansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansion.fromJson(value);
    case 'valuesetparameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameter.fromJson(value);
    case 'valueset_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameter.fromJson(value);
    case 'valuesetcontains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContains.fromJson(value);
    case 'valueset_contains':
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
    case 'verificationresult_primarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySource.fromJson(value);
    case 'verificationresultattestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestation.fromJson(value);
    case 'verificationresult_attestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestation.fromJson(value);
    case 'verificationresultvalidator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidator.fromJson(value);
    case 'verificationresult_validator':
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
    case 'visionprescription_lensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecification.fromJson(value);
    case 'visionprescriptionprism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrism.fromJson(value);
    case 'visionprescription_prism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrism.fromJson(value);
    default:
      return null;
  }
}
