import 'package:realm/realm.dart';
@RealmModel()
class _InvoiceRealm {
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
  late String cancelledReason;
  late _PrimitiveElementRealm cancelledReasonElement;
  late _CodeableConceptRealm type;
  late _ReferenceRealm subject;
  late _ReferenceRealm recipient;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late List<_InvoiceParticipantRealm> participant;
  late _ReferenceRealm issuer;
  late _ReferenceRealm account;
  late List<_InvoiceLineItemRealm> lineItem;
  late List<_InvoicePriceComponentRealm> totalPriceComponent;
  late _MoneyRealm totalNet;
  late _MoneyRealm totalGross;
  late _FhirMarkdownRealm paymentTerms;
  late _PrimitiveElementRealm paymentTermsElement;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _InvoiceParticipantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm role;
  late _ReferenceRealm actor;
}
@RealmModel()
class _InvoiceLineItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _ReferenceRealm chargeItemReference;
  late _CodeableConceptRealm chargeItemCodeableConcept;
  late List<_InvoicePriceComponentRealm> priceComponent;
}
@RealmModel()
class _InvoicePriceComponentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _CodeableConceptRealm code;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm amount;
}
