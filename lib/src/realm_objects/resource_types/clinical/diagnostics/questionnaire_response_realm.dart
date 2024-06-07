import 'package:realm/realm.dart';
@RealmModel()
class _QuestionnaireResponseRealm {
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
  late _IdentifierRealm identifier;
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> partOf;
  late _FhirCanonicalRealm questionnaire;
  late _PrimitiveElementRealm questionnaireElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String authored;
  late _PrimitiveElementRealm authoredElement;
  late _ReferenceRealm author;
  late _ReferenceRealm source;
  late List<_QuestionnaireResponseItemRealm> item;
}
@RealmModel()
class _QuestionnaireResponseItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String linkId;
  late _PrimitiveElementRealm linkIdElement;
  late _FhirUriRealm definition;
  late _PrimitiveElementRealm definitionElement;
  late String text;
  late _PrimitiveElementRealm textElement;
  late List<_QuestionnaireResponseAnswerRealm> answer;
  late List<_QuestionnaireResponseItemRealm> item;
}
@RealmModel()
class _QuestionnaireResponseAnswerRealm {
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
  late List<_QuestionnaireResponseItemRealm> item;
}
