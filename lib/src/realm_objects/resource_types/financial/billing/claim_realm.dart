import 'package:realm/realm.dart';
@RealmModel()
class _ClaimRealm {
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
  late _CodeableConceptRealm fundsReserve;
  late List<_ClaimRelatedRealm> related;
  late _ReferenceRealm prescription;
  late _ReferenceRealm originalPrescription;
  late _ClaimPayeeRealm payee;
  late _ReferenceRealm referral;
  late _ReferenceRealm facility;
  late List<_ClaimCareTeamRealm> careTeam;
  late List<_ClaimSupportingInfoRealm> supportingInfo;
  late List<_ClaimDiagnosisRealm> diagnosis;
  late List<_ClaimProcedureRealm> procedure;
  late List<_ClaimInsuranceRealm> insurance;
  late _ClaimAccidentRealm accident;
  late List<_ClaimItemRealm> item;
  late _MoneyRealm total;
}
@RealmModel()
class _ClaimRelatedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm claim;
  late _CodeableConceptRealm relationship;
  late _IdentifierRealm reference;
}
@RealmModel()
class _ClaimPayeeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _ReferenceRealm party;
}
@RealmModel()
class _ClaimCareTeamRealm {
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
class _ClaimSupportingInfoRealm {
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
  late _CodeableConceptRealm reason;
}
@RealmModel()
class _ClaimDiagnosisRealm {
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
class _ClaimProcedureRealm {
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
class _ClaimInsuranceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _FhirBooleanRealm focal;
  late _PrimitiveElementRealm focalElement;
  late _IdentifierRealm identifier;
  late _ReferenceRealm coverage;
  late String businessArrangement;
  late _PrimitiveElementRealm businessArrangementElement;
  late String preAuthRef;
  late List<_PrimitiveElementRealm> preAuthRefElement;
  late _ReferenceRealm claimResponse;
}
@RealmModel()
class _ClaimAccidentRealm {
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
class _ClaimItemRealm {
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
  late List<_ClaimDetailRealm> detail;
}
@RealmModel()
class _ClaimDetailRealm {
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
  late List<_ClaimSubDetailRealm> subDetail;
}
@RealmModel()
class _ClaimSubDetailRealm {
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
}
