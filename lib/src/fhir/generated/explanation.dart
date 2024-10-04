import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefit {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final CodeableConcept subType;
  final FhirCode use;
  final PrimitiveElement useElement;
  final Reference patient;
  final Period billablePeriod;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference enterer;
  final Reference insurer;
  final Reference provider;
  final CodeableConcept priority;
  final CodeableConcept fundsReserveRequested;
  final CodeableConcept fundsReserve;
  final List<ExplanationOfBenefitRelated> related;
  final Reference prescription;
  final Reference originalPrescription;
  final ExplanationOfBenefitPayee payee;
  final Reference referral;
  final Reference facility;
  final Reference claim;
  final Reference claimResponse;
  final FhirCode outcome;
  final PrimitiveElement outcomeElement;
  final String disposition;
  final PrimitiveElement dispositionElement;
  final List<String> preAuthRef;
  final List<PrimitiveElement> preAuthRefElement;
  final List<Period> preAuthRefPeriod;
  final List<ExplanationOfBenefitCareTeam> careTeam;
  final List<ExplanationOfBenefitSupportingInfo> supportingInfo;
  final List<ExplanationOfBenefitDiagnosis> diagnosis;
  final List<ExplanationOfBenefitProcedure> procedure;
  final FhirPositiveInt precedence;
  final PrimitiveElement precedenceElement;
  final List<ExplanationOfBenefitInsurance> insurance;
  final ExplanationOfBenefitAccident accident;
  final List<ExplanationOfBenefitItem> item;
  final List<ExplanationOfBenefitAddItem> addItem;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitTotal> total;
  final ExplanationOfBenefitPayment payment;
  final CodeableConcept formCode;
  final Attachment form;
  final List<ExplanationOfBenefitProcessNote> processNote;
  final Period benefitPeriod;
  final List<ExplanationOfBenefitBenefitBalance> benefitBalance;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitRelated {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference claim;
  final CodeableConcept relationship;
  final Identifier reference;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayee {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference party;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitCareTeam {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final Reference provider;
  final FhirBoolean responsible;
  final PrimitiveElement responsibleElement;
  final CodeableConcept role;
  final CodeableConcept qualification;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSupportingInfo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept category;
  final CodeableConcept code;
  final String timingDate;
  final PrimitiveElement timingDateElement;
  final Period timingPeriod;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final Quantity valueQuantity;
  final Attachment valueAttachment;
  final Reference valueReference;
  final Coding reason;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDiagnosis {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  final List<CodeableConcept> type;
  final CodeableConcept onAdmission;
  final CodeableConcept packageCode;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitProcedure {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final List<CodeableConcept> type;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference> udi;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitInsurance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement focalElement;
  final Reference coverage;
  final List<String> preAuthRef;
  final List<PrimitiveElement> preAuthRefElement;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAccident {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final CodeableConcept type;
  final Address locationAddress;
  final Reference locationReference;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final List<FhirPositiveInt> careTeamSequence;
  final List<PrimitiveElement> careTeamSequenceElement;
  final List<FhirPositiveInt> diagnosisSequence;
  final List<PrimitiveElement> diagnosisSequenceElement;
  final List<FhirPositiveInt> procedureSequence;
  final List<PrimitiveElement> procedureSequenceElement;
  final List<FhirPositiveInt> informationSequence;
  final List<PrimitiveElement> informationSequenceElement;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final String servicedDate;
  final PrimitiveElement servicedDateElement;
  final Period servicedPeriod;
  final CodeableConcept locationCodeableConcept;
  final Address locationAddress;
  final Reference locationReference;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<Reference> udi;
  final CodeableConcept bodySite;
  final List<CodeableConcept> subSite;
  final List<Reference> encounter;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitDetail> detail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAdjudication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept reason;
  final Money amount;
  final FhirDecimal value;
  final PrimitiveElement valueElement;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<Reference> udi;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitSubDetail> subDetail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<Reference> udi;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAddItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> itemSequence;
  final List<PrimitiveElement> itemSequenceElement;
  final List<FhirPositiveInt> detailSequence;
  final List<PrimitiveElement> detailSequenceElement;
  final List<FhirPositiveInt> subDetailSequence;
  final List<PrimitiveElement> subDetailSequenceElement;
  final List<Reference> provider;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final String servicedDate;
  final PrimitiveElement servicedDateElement;
  final Period servicedPeriod;
  final CodeableConcept locationCodeableConcept;
  final Address locationAddress;
  final Reference locationReference;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final CodeableConcept bodySite;
  final List<CodeableConcept> subSite;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitDetail1> detail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDetail1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitSubDetail1> subDetail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitTotal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final Money amount;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayment {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Money adjustment;
  final CodeableConcept adjustmentReason;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final Money amount;
  final Identifier identifier;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitProcessNote {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt number;
  final PrimitiveElement numberElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String text;
  final PrimitiveElement textElement;
  final CodeableConcept language;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitBenefitBalance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final FhirBoolean excluded;
  final PrimitiveElement excludedElement;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<ExplanationOfBenefitFinancial> financial;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitFinancial {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final double allowedUnsignedInt;
  final PrimitiveElement allowedUnsignedIntElement;
  final String allowedString;
  final PrimitiveElement allowedStringElement;
  final Money allowedMoney;
  final double usedUnsignedInt;
  final PrimitiveElement usedUnsignedIntElement;
  final Money usedMoney;
}


