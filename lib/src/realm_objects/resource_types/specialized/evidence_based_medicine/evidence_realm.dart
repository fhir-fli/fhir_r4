import 'package:realm/realm.dart';
@RealmModel()
class _EvidenceRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _ReferenceRealm citeAsReference;
  late _FhirMarkdownRealm citAsMarkdown;
  late _PrimitiveElementRealm citeAsMarkdownElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late List<_UsageContextRealm> useContext;
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late List<_ContactDetailRealm> author;
  late List<_ContactDetailRealm> editor;
  late List<_ContactDetailRealm> reviewer;
  late List<_ContactDetailRealm> endorser;
  late List<_RelatedArtifactRealm> relatedArtifact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirMarkdownRealm assertion;
  late _PrimitiveElementRealm assertionElement;
  late List<_AnnotationRealm> note;
  late List<_EvidenceVariableDefinitionRealm> variableDefinition;
  late _CodeableConceptRealm synthesisType;
  late _CodeableConceptRealm studyType;
  late List<_EvidenceStatisticRealm> statistic;
  late List<_EvidenceCertaintyRealm> certainty;
}
@RealmModel()
class _EvidenceVariableDefinitionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AnnotationRealm> note;
  late _CodeableConceptRealm variableRole;
  late _ReferenceRealm observed;
  late _ReferenceRealm intended;
  late _CodeableConceptRealm directnessMatch;
}
@RealmModel()
class _EvidenceStatisticRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AnnotationRealm> note;
  late _CodeableConceptRealm statisticType;
  late _CodeableConceptRealm category;
  late _QuantityRealm quantity;
  late _FhirUnsignedIntRealm numberOfEvents;
  late _PrimitiveElementRealm numberOfEventsElement;
  late _FhirUnsignedIntRealm numberAffected;
  late _PrimitiveElementRealm numberAffectedElement;
  late _EvidenceSampleSizeRealm sampleSize;
  late List<_EvidenceAttributeEstimateRealm> attributeEstimate;
  late List<_EvidenceModelCharacteristicRealm> modelCharacteristic;
}
@RealmModel()
class _EvidenceSampleSizeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AnnotationRealm> note;
  late _FhirUnsignedIntRealm numberOfStudies;
  late _PrimitiveElementRealm numberOfStudiesElement;
  late _FhirUnsignedIntRealm numberOfParticipants;
  late _PrimitiveElementRealm numberOfParticipantsElement;
  late _FhirUnsignedIntRealm knownDataCount;
  late _PrimitiveElementRealm knownDataCountElement;
}
@RealmModel()
class _EvidenceAttributeEstimateRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AnnotationRealm> note;
  late _CodeableConceptRealm type;
  late _QuantityRealm quantity;
  late _FhirDecimalRealm level;
  late _PrimitiveElementRealm levelElement;
  late _RangeRealm range;
  late List<_EvidenceAttributeEstimateRealm> attributeEstimate;
}
@RealmModel()
class _EvidenceModelCharacteristicRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _QuantityRealm value;
  late List<_EvidenceVarRealm> variable;
  late List<_EvidenceAttributeEstimateRealm> attributeEstimate;
}
@RealmModel()
class _EvidenceVarRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm variableDefinition;
  late _FhirCodeRealm handling;
  late _PrimitiveElementRealm handlingElement;
  late List<_CodeableConceptRealm> valueCategory;
  late List<_QuantityRealm> valueQuantity;
  late List<_RangeRealm> valueRange;
}
@RealmModel()
class _EvidenceCertaintyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AnnotationRealm> note;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm rating;
  late String rater;
  late _PrimitiveElementRealm raterElement;
  late List<_EvidenceCertaintyRealm> subcomponent;
}
