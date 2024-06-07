import 'package:realm/realm.dart';
@RealmModel()
class _QuestionnaireRealm {
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
  late List<_FhirCanonicalRealm> derivedFrom;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late List<_FhirCodeRealm> subjectType;
  late List<_PrimitiveElementRealm> subjectTypeElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late _PeriodRealm effectivePeriod;
  late List<_CodingRealm> code;
  late List<_QuestionnaireItemRealm> item;
}
@RealmModel()
class _QuestionnaireItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String linkId;
  late _PrimitiveElementRealm linkIdElement;
  late _FhirUriRealm definition;
  late _PrimitiveElementRealm definitionElement;
  late List<_CodingRealm> code;
  late String prefix;
  late _PrimitiveElementRealm prefixElement;
  late String text;
  late _PrimitiveElementRealm textElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late List<_QuestionnaireEnableWhenRealm> enableWhen;
  late _FhirCodeRealm enableBehavior;
  late _PrimitiveElementRealm enableBehaviorElement;
  late _FhirBooleanRealm required_;
  late _PrimitiveElementRealm requiredElement;
  late _FhirBooleanRealm repeats;
  late _PrimitiveElementRealm repeatsElement;
  late _FhirBooleanRealm readOnly;
  late _PrimitiveElementRealm readOnlyElement;
  late _FhirIntegerRealm maxLength;
  late _PrimitiveElementRealm maxLengthElement;
  late _FhirCanonicalRealm answerValueSet;
  late List<_QuestionnaireAnswerOptionRealm> answerOption;
  late List<_QuestionnaireInitialRealm> initial;
  late List<_QuestionnaireItemRealm> item;
}
@RealmModel()
class _QuestionnaireEnableWhenRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String question;
  late _PrimitiveElementRealm questionElement;
  late _FhirCodeRealm operator_;
  late _PrimitiveElementRealm operatorElement;
  late _FhirBooleanRealm answerBoolean;
  late _PrimitiveElementRealm answerBooleanElement;
  late _FhirDecimalRealm answerDecimal;
  late _PrimitiveElementRealm answerDecimalElement;
  late _FhirIntegerRealm answerInteger;
  late _PrimitiveElementRealm answerIntegerElement;
  late _FhirDateRealm answerDate;
  late _PrimitiveElementRealm answerDateElement;
  late String answerDateTime;
  late _PrimitiveElementRealm answerDateTimeElement;
  late _FhirTimeRealm answerTime;
  late _PrimitiveElementRealm answerTimeElement;
  late String answerString;
  late _PrimitiveElementRealm answerStringElement;
  late _CodingRealm answerCoding;
  late _QuantityRealm answerQuantity;
  late _ReferenceRealm answerReference;
}
@RealmModel()
class _QuestionnaireAnswerOptionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm valueInteger;
  late _PrimitiveElementRealm valueIntegerElement;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late _FhirTimeRealm valueTime;
  late _PrimitiveElementRealm valueTimeElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _CodingRealm valueCoding;
  late _ReferenceRealm valueReference;
  late _FhirBooleanRealm initialSelected;
  late _PrimitiveElementRealm initialSelectedElement;
}
@RealmModel()
class _QuestionnaireInitialRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _FhirDecimalRealm valueDecimal;
  late _PrimitiveElementRealm valueDecimalElement;
  late _FhirIntegerRealm valueInteger;
  late _PrimitiveElementRealm valueIntegerElement;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late String valueDateTime;
  late _PrimitiveElementRealm valueDateTimeElement;
  late _FhirTimeRealm valueTime;
  late _PrimitiveElementRealm valueTimeElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _FhirUriRealm valueUri;
  late _PrimitiveElementRealm valueUriElement;
  late _AttachmentRealm valueAttachment;
  late _CodingRealm valueCoding;
  late _QuantityRealm valueQuantity;
  late _ReferenceRealm valueReference;
}
