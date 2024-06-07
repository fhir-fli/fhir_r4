import 'package:realm/realm.dart';
@RealmModel()
class _ClaimResponseRealm {
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
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm subType;
  late _FhirCodeRealm use;
  late _PrimitiveElementRealm useElement;
  late _ReferenceRealm patient;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm insurer;
  late _ReferenceRealm requestor;
  late _ReferenceRealm request;
  late _FhirCodeRealm outcome;
  late _PrimitiveElementRealm outcomeElement;
  late String disposition;
  late _PrimitiveElementRealm dispositionElement;
  late String preAuthRef;
  late _PrimitiveElementRealm preAuthRefElement;
  late _PeriodRealm preAuthPeriod;
  late _CodeableConceptRealm payeeType;
  late List<_ClaimResponseItemRealm> item;
  late List<_ClaimResponseAddItemRealm> addItem;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
  late List<_ClaimResponseTotalRealm> total;
  late _ClaimResponsePaymentRealm payment;
  late _CodeableConceptRealm fundsReserve;
  late _CodeableConceptRealm formCode;
  late _AttachmentRealm form;
  late List<_ClaimResponseProcessNoteRealm> processNote;
  late List<_ReferenceRealm> communicationRequest;
  late List<_ClaimResponseInsuranceRealm> insurance;
  late List<_ClaimResponseErrorRealm> error;
}
@RealmModel()
class _ClaimResponseItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm itemSequence;
  late _PrimitiveElementRealm itemSequenceElement;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
  late List<_ClaimResponseDetailRealm> detail;
}
@RealmModel()
class _ClaimResponseAdjudicationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm reason;
  late _MoneyRealm amount;
  late _FhirDecimalRealm value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _ClaimResponseDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm detailSequence;
  late _PrimitiveElementRealm detailSequenceElement;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
  late List<_ClaimResponseSubDetailRealm> subDetail;
}
@RealmModel()
class _ClaimResponseSubDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm subDetailSequence;
  late _PrimitiveElementRealm subDetailSequenceElement;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
}
@RealmModel()
class _ClaimResponseAddItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirPositiveIntRealm> itemSequence;
  late List<_PrimitiveElementRealm> itemSequenceElement;
  late List<_FhirPositiveIntRealm> detailSequence;
  late List<_PrimitiveElementRealm> detailSequenceElement;
  late List<_FhirPositiveIntRealm> subdetailSequence;
  late List<_ElementRealm> subdetailSequenceElement;
  late List<_ReferenceRealm> provider;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late List<_CodeableConceptRealm> programCode;
  late _FhirDateRealm servicedDate;
  late _PrimitiveElementRealm servicedDateElement;
  late _PeriodRealm servicedPeriod;
  late _CodeableConceptRealm locationCodeableConcept;
  late _AddressRealm locationAddress;
  late _ReferenceRealm locationReference;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm net;
  late _CodeableConceptRealm bodySite;
  late List<_CodeableConceptRealm> subSite;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
  late List<_ClaimResponseDetail1Realm> detail;
}
@RealmModel()
class _ClaimResponseDetail1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm net;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
  late List<_ClaimResponseSubDetail1Realm> subDetail;
}
@RealmModel()
class _ClaimResponseSubDetail1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm net;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ClaimResponseAdjudicationRealm> adjudication;
}
@RealmModel()
class _ClaimResponseTotalRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late _MoneyRealm amount;
}
@RealmModel()
class _ClaimResponsePaymentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _MoneyRealm adjustment;
  late _CodeableConceptRealm adjustmentReason;
  late _FhirDateRealm date;
  late _PrimitiveElementRealm dateElement;
  late _MoneyRealm amount;
  late _IdentifierRealm identifier;
}
@RealmModel()
class _ClaimResponseProcessNoteRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm number;
  late _PrimitiveElementRealm numberElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String text;
  late _PrimitiveElementRealm textElement;
  late _CodeableConceptRealm language;
}
@RealmModel()
class _ClaimResponseInsuranceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _FhirBooleanRealm focal;
  late _PrimitiveElementRealm focalElement;
  late _ReferenceRealm coverage;
  late String businessArrangement;
  late _PrimitiveElementRealm businessArrangementElement;
  late _ReferenceRealm claimResponse;
}
@RealmModel()
class _ClaimResponseErrorRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm itemSequence;
  late _PrimitiveElementRealm itemSequenceElement;
  late _FhirPositiveIntRealm detailSequence;
  late _PrimitiveElementRealm detailSequenceElement;
  late _FhirPositiveIntRealm subDetailSequence;
  late _PrimitiveElementRealm subDetailSequenceElement;
  late _CodeableConceptRealm code;
}
