import 'package:realm/realm.dart';
@RealmModel()
class _PaymentReconciliationRealm {
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
  late _PeriodRealm period;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm paymentIssuer;
  late _ReferenceRealm request;
  late _ReferenceRealm requestor;
  late _FhirCodeRealm outcome;
  late _PrimitiveElementRealm outcomeElement;
  late String disposition;
  late _PrimitiveElementRealm dispositionElement;
  late _FhirDateRealm paymentDate;
  late _PrimitiveElementRealm paymentDateElement;
  late _MoneyRealm paymentAmount;
  late _IdentifierRealm paymentIdentifier;
  late List<_PaymentReconciliationDetailRealm> detail;
  late _CodeableConceptRealm formCode;
  late List<_PaymentReconciliationProcessNoteRealm> processNote;
}
@RealmModel()
class _PaymentReconciliationDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late _IdentifierRealm predecessor;
  late _CodeableConceptRealm type;
  late _ReferenceRealm request;
  late _ReferenceRealm submitter;
  late _ReferenceRealm response;
  late _FhirDateRealm date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm responsible;
  late _ReferenceRealm payee;
  late _MoneyRealm amount;
}
@RealmModel()
class _PaymentReconciliationProcessNoteRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String text;
  late _PrimitiveElementRealm textElement;
}
