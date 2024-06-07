import 'package:realm/realm.dart';
@RealmModel()
class _EvidenceVariableRealm {
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
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String shortTitle;
  late _PrimitiveElementRealm shortTitleElement;
  late String subtitle;
  late _PrimitiveElementRealm subtitleElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AnnotationRealm> note;
  late List<_UsageContextRealm> useContext;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late List<_ContactDetailRealm> author;
  late List<_ContactDetailRealm> editor;
  late List<_ContactDetailRealm> reviewer;
  late List<_ContactDetailRealm> endorser;
  late List<_RelatedArtifactRealm> relatedArtifact;
  late _FhirBooleanRealm actual;
  late _PrimitiveElementRealm actualElement;
  late _FhirCodeRealm characteristicCombination;
  late _PrimitiveElementRealm characteristicCombinationElement;
  late List<_EvidenceVariableCharacteristicRealm> characteristic;
  late _FhirCodeRealm handling;
  late _PrimitiveElementRealm handlingElement;
  late List<_EvidenceVariableCategoryRealm> category;
}
@RealmModel()
class _EvidenceVariableCharacteristicRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _ReferenceRealm definitionReference;
  late _FhirCanonicalRealm definitionCanonical;
  late _PrimitiveElementRealm definitionCanonicalElement;
  late _CodeableConceptRealm definitionCodeableConcept;
  late _FhirExpressionRealm definitionExpression;
  late _FhirBooleanRealm exclude;
  late _PrimitiveElementRealm excludeElement;
  late _EvidenceVariableTimeFromStartRealm timeFromStart;
  late _FhirCodeRealm groupMeasure;
  late _PrimitiveElementRealm groupMeasureElement;
}
@RealmModel()
class _EvidenceVariableTimeFromStartRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _QuantityRealm quantity;
  late _RangeRealm range;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _EvidenceVariableCategoryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _RangeRealm valueRange;
}
