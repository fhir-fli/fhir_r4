import 'package:realm/realm.dart';
@RealmModel()
class _ExplanationOfBenefitRealm {
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
  late _PeriodRealm billablePeriod;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm enterer;
  late _ReferenceRealm insurer;
  late _ReferenceRealm provider;
  late _CodeableConceptRealm priority;
  late _CodeableConceptRealm fundsReserveRequested;
  late _CodeableConceptRealm fundsReserve;
  late List<_ExplanationOfBenefitRelatedRealm> related;
  late _ReferenceRealm prescription;
  late _ReferenceRealm originalPrescription;
  late _ExplanationOfBenefitPayeeRealm payee;
  late _ReferenceRealm referral;
  late _ReferenceRealm facility;
  late _ReferenceRealm claim;
  late _ReferenceRealm claimResponse;
  late _FhirCodeRealm outcome;
  late _PrimitiveElementRealm outcomeElement;
  late String disposition;
  late _PrimitiveElementRealm dispositionElement;
  late String preAuthRef;
  late List<_PrimitiveElementRealm> preAuthRefElement;
  late List<_PeriodRealm> preAuthRefPeriod;
  late List<_ExplanationOfBenefitCareTeamRealm> careTeam;
  late List<_ExplanationOfBenefitSupportingInfoRealm> supportingInfo;
  late List<_ExplanationOfBenefitDiagnosisRealm> diagnosis;
  late List<_ExplanationOfBenefitProcedureRealm> procedure;
  late _FhirPositiveIntRealm precedence;
  late _PrimitiveElementRealm precedenceElement;
  late List<_ExplanationOfBenefitInsuranceRealm> insurance;
  late _ExplanationOfBenefitAccidentRealm accident;
  late List<_ExplanationOfBenefitItemRealm> item;
  late List<_ExplanationOfBenefitAddItemRealm> addItem;
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
  late List<_ExplanationOfBenefitTotalRealm> total;
  late _ExplanationOfBenefitPaymentRealm payment;
  late _CodeableConceptRealm formCode;
  late _AttachmentRealm form;
  late List<_ExplanationOfBenefitProcessNoteRealm> processNote;
  late _PeriodRealm benefitPeriod;
  late List<_ExplanationOfBenefitBenefitBalanceRealm> benefitBalance;
}
@RealmModel()
class _ExplanationOfBenefitRelatedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm claim;
  late _CodeableConceptRealm relationship;
  late _IdentifierRealm reference;
}
@RealmModel()
class _ExplanationOfBenefitPayeeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _ReferenceRealm party;
}
@RealmModel()
class _ExplanationOfBenefitCareTeamRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _ReferenceRealm provider;
  late _FhirBooleanRealm responsible;
  late _PrimitiveElementRealm responsibleElement;
  late _CodeableConceptRealm role;
  late _CodeableConceptRealm qualification;
}
@RealmModel()
class _ExplanationOfBenefitSupportingInfoRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm code;
  late _FhirDateRealm timingDate;
  late _PrimitiveElementRealm timingDateElement;
  late _PeriodRealm timingPeriod;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _QuantityRealm valueQuantity;
  late _AttachmentRealm valueAttachment;
  late _ReferenceRealm valueReference;
  late _CodingRealm reason;
}
@RealmModel()
class _ExplanationOfBenefitDiagnosisRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _CodeableConceptRealm diagnosisCodeableConcept;
  late _ReferenceRealm diagnosisReference;
  late List<_CodeableConceptRealm> type;
  late _CodeableConceptRealm onAdmission;
  late _CodeableConceptRealm packageCode;
}
@RealmModel()
class _ExplanationOfBenefitProcedureRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late List<_CodeableConceptRealm> type;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _CodeableConceptRealm procedureCodeableConcept;
  late _ReferenceRealm procedureReference;
  late List<_ReferenceRealm> udi;
}
@RealmModel()
class _ExplanationOfBenefitInsuranceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm focal;
  late _PrimitiveElementRealm focalElement;
  late _ReferenceRealm coverage;
  late String preAuthRef;
  late List<_PrimitiveElementRealm> preAuthRefElement;
}
@RealmModel()
class _ExplanationOfBenefitAccidentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirDateRealm date;
  late _PrimitiveElementRealm dateElement;
  late _CodeableConceptRealm type;
  late _AddressRealm locationAddress;
  late _ReferenceRealm locationReference;
}
@RealmModel()
class _ExplanationOfBenefitItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late List<_FhirPositiveIntRealm> careTeamSequence;
  late List<_PrimitiveElementRealm> careTeamSequenceElement;
  late List<_FhirPositiveIntRealm> diagnosisSequence;
  late List<_ElementRealm> diagnosisSequenceElement;
  late List<_FhirPositiveIntRealm> procedureSequence;
  late List<_ElementRealm> procedureSequenceElement;
  late List<_FhirPositiveIntRealm> informationSequence;
  late List<_ElementRealm> informationSequenceElement;
  late _CodeableConceptRealm revenue;
  late _CodeableConceptRealm category;
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
  late List<_ReferenceRealm> udi;
  late _CodeableConceptRealm bodySite;
  late List<_CodeableConceptRealm> subSite;
  late List<_ReferenceRealm> encounter;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
  late List<_ExplanationOfBenefitDetailRealm> detail;
}
@RealmModel()
class _ExplanationOfBenefitAdjudicationRealm {
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
class _ExplanationOfBenefitDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _CodeableConceptRealm revenue;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late List<_CodeableConceptRealm> programCode;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm net;
  late List<_ReferenceRealm> udi;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
  late List<_ExplanationOfBenefitSubDetailRealm> subDetail;
}
@RealmModel()
class _ExplanationOfBenefitSubDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _CodeableConceptRealm revenue;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late List<_CodeableConceptRealm> programCode;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm net;
  late List<_ReferenceRealm> udi;
  late List<_FhirPositiveIntRealm> noteNumber;
  late List<_PrimitiveElementRealm> noteNumberElement;
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
}
@RealmModel()
class _ExplanationOfBenefitAddItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirPositiveIntRealm> itemSequence;
  late List<_PrimitiveElementRealm> itemSequenceElement;
  late List<_FhirPositiveIntRealm> detailSequence;
  late List<_PrimitiveElementRealm> detailSequenceElement;
  late List<_FhirPositiveIntRealm> subDetailSequence;
  late List<_ElementRealm> subDetailSequenceElement;
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
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
  late List<_ExplanationOfBenefitDetail1Realm> detail;
}
@RealmModel()
class _ExplanationOfBenefitDetail1Realm {
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
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
  late List<_ExplanationOfBenefitSubDetail1Realm> subDetail;
}
@RealmModel()
class _ExplanationOfBenefitSubDetail1Realm {
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
  late List<_ExplanationOfBenefitAdjudicationRealm> adjudication;
}
@RealmModel()
class _ExplanationOfBenefitTotalRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late _MoneyRealm amount;
}
@RealmModel()
class _ExplanationOfBenefitPaymentRealm {
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
class _ExplanationOfBenefitProcessNoteRealm {
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
class _ExplanationOfBenefitBenefitBalanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late _FhirBooleanRealm excluded;
  late _PrimitiveElementRealm excludedElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm network;
  late _CodeableConceptRealm unit;
  late _CodeableConceptRealm term;
  late List<_ExplanationOfBenefitFinancialRealm> financial;
}
@RealmModel()
class _ExplanationOfBenefitFinancialRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _FhirUnsignedIntRealm allowedUnsignedInt;
  late _PrimitiveElementRealm allowedUnsignedIntElement;
  late String allowedString;
  late _PrimitiveElementRealm allowedStringElement;
  late _MoneyRealm allowedMoney;
  late _FhirUnsignedIntRealm usedUnsignedInt;
  late _PrimitiveElementRealm usedUnsignedIntElement;
  late _MoneyRealm usedMoney;
}
