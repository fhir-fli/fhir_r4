import 'package:realm/realm.dart';
@RealmModel()
class _PaymentNoticeRealm {
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
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm request;
  late _ReferenceRealm response;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm provider;
  late _ReferenceRealm payment;
  late _FhirDateRealm paymentDate;
  late _PrimitiveElementRealm paymentDateElement;
  late _ReferenceRealm payee;
  late _ReferenceRealm recipient;
  late _MoneyRealm amount;
  late _CodeableConceptRealm paymentStatus;
}
