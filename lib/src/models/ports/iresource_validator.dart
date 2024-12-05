// // ignore_for_file: public_member_api_docs

// /// Interface to the instance validator. This takes a resource, in one of many
// /// forms, and checks whether it is valid
// /// 
// /// @author Grahame Grieve
// abstract class IResourceValidator {

//   /// how much to check displays for coded elements
//   CheckDisplayOption getCheckDisplay();

//   void setCheckDisplay(CheckDisplayOption checkDisplay);

  
//   /// whether the resource must have an id or not (depends on context)
//   IdStatus getResourceIdRule();

//   void setResourceIdRule(IdStatus resourceIdRule);

  
//   /// whether the validator should enforce best practice guidelines as defined by
//   /// various HL7 committees
//   BestPracticeWarningLevel getBestPracticeWarningLevel();

//   IResourceValidator setBestPracticeWarningLevel(BestPracticeWarningLevel value);

//   IValidatorResourceFetcher getFetcher();

//   IResourceValidator setFetcher(IValidatorResourceFetcher value);

//   IValidationPolicyAdvisor getPolicyAdvisor();

//   IResourceValidator setPolicyAdvisor(IValidationPolicyAdvisor advisor);

//   IValidationProfileUsageTracker getTracker();

//   IResourceValidator setTracker(IValidationProfileUsageTracker value);

//   boolean isNoBindingMsgSuppressed();

//   IResourceValidator setNoBindingMsgSuppressed(boolean noBindingMsgSuppressed);

//   boolean isNoInvariantChecks();

//   IResourceValidator setNoInvariantChecks(boolean value);

//   boolean isWantInvariantInMessage();

//   IResourceValidator setWantInvariantInMessage(boolean wantInvariantInMessage);

//   boolean isNoTerminologyChecks();

//   IResourceValidator setNoTerminologyChecks(boolean noTerminologyChecks);

//   boolean isNoExtensibleWarnings();

//   IResourceValidator setNoExtensibleWarnings(boolean noExtensibleWarnings);

//   boolean isNoUnicodeBiDiControlChars();

//   void setNoUnicodeBiDiControlChars(boolean noUnicodeBiDiControlChars);

  
//   /// Whether being unable to resolve a profile in found in Resource.meta.profile
//   /// or ElementDefinition.type.profile or targetProfile is an error or just a
//   /// warning
  
//   boolean isErrorForUnknownProfiles();

//   void setErrorForUnknownProfiles(boolean errorForUnknownProfiles);

//   boolean isShowMessagesFromReferences();

//   void setShowMessagesFromReferences(boolean value);

  
//   /// this is used internally in the publishing stack to ensure that everything is
//   /// water tight, but this check is not necessary or appropriate at run time when
//   /// the validator is hosted in HAPI
//   /// 
//   /// @return
  
//   boolean isWantCheckSnapshotUnchanged();

//   void setWantCheckSnapshotUnchanged(boolean wantCheckSnapshotUnchanged);

  
//   /// It's common to see references such as Patient/234234 - these usually mean a
//   /// reference to a Patient resource. But there's no actual technical rule that it
//   /// does, so the validator doesn't enforce that unless this setting is set to
//   /// true
//   /// 
//   /// @return
  
//   boolean isAssumeValidRestReferences();

//   void setAssumeValidRestReferences(boolean value);

  
//   /// if this is true, the validator will accept extensions and references to
//   /// example.org and acme.com as valid, on the basis that they are understood to
//   /// be references to content that could exist in priniple but can't in practice
  
//   boolean isAllowExamples();

//   void setAllowExamples(boolean value);

//   boolean isNoCheckAggregation();

//   void setNoCheckAggregation(boolean value);

  
//   /// CrumbTrail - whether the validator creates hints to
//   /// 
//   /// @return
  
//   boolean isCrumbTrails();

//   void setCrumbTrails(boolean crumbTrails);

//   boolean isValidateValueSetCodesOnTxServer();

//   void setValidateValueSetCodesOnTxServer(boolean value);

  
//   /// Bundle validation rules allow for requesting particular entries in a bundle
//   /// get validated against particular profiles Typically this is used from the
//   /// command line to avoid having to construct profile just to validate a
//   /// particular resource in a bundle against a particular profile
//   /// 
//   /// @return
  
//   List<BundleValidationRule> getBundleValidationRules();

  
//   /// Validate suite
//   /// 
//   /// you can validate one of the following representations of resources:
//   /// 
//   /// stream - provide a format - this is the preferred choice
//   /// 
//   /// Use one of these two if the content is known to be valid XML/JSON, and
//   /// already parsed - a DOM element or Document - a Json Object
//   /// 
//   /// In order to use these, the content must already be parsed - e.g. it must
//   /// syntactically valid - a native resource - a elementmodel resource
//   /// 
//   /// in addition, you can pass one or more profiles ti validate beyond the base
//   /// standard - as structure definitions or canonical URLs
//   /// 
//   /// @throws IOException
  
//   void validate(Object Context, List<ValidationMessage> errors, String initialPath,
//       org.hl7.fhir.r4b.elementmodel.Element element) throws FHIRException;

//   void validate(Object Context, List<ValidationMessage> errors, String initialPath,
//       org.hl7.fhir.r4b.elementmodel.Element element, String profile) throws FHIRException;

//   void validate(Object Context, List<ValidationMessage> errors, String initialPath,
//       org.hl7.fhir.r4b.elementmodel.Element element, List<StructureDefinition> profiles) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors, InputStream stream,
//       FhirFormat format) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors, InputStream stream,
//       FhirFormat format, String profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors, InputStream stream,
//       FhirFormat format, List<StructureDefinition> profiles) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.hl7.fhir.r4b.model.Resource resource) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.hl7.fhir.r4b.model.Resource resource, String profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.hl7.fhir.r4b.model.Resource resource, List<StructureDefinition> profiles) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.w3c.dom.Element element) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.w3c.dom.Element element, String profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.w3c.dom.Element element, List<StructureDefinition> profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.w3c.dom.Document document) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.w3c.dom.Document document, String profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors,
//       org.w3c.dom.Document document, List<StructureDefinition> profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors, JsonObject object)
//       throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors, JsonObject object,
//       String profile) throws FHIRException;

//   org.hl7.fhir.r4b.elementmodel.Element validate(Object Context, List<ValidationMessage> errors, JsonObject object,
//       List<StructureDefinition> profile) throws FHIRException;

// }