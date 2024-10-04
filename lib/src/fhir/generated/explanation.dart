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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final CodeableConcept subType;
  final FhirCode use;
  final PrimitiveElement Use;
  final Reference patient;
  final Period billablePeriod;
  final FhirDateTime created;
  final PrimitiveElement Created;
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
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final List<String> preAuthRef;
  final List<PrimitiveElement> PreAuthRef;
  final List<Period> preAuthRefPeriod;
  final List<ExplanationOfBenefitCareTeam> careTeam;
  final List<ExplanationOfBenefitSupportingInfo> supportingInfo;
  final List<ExplanationOfBenefitDiagnosis> diagnosis;
  final List<ExplanationOfBenefitProcedure> procedure;
  final FhirPositiveInt precedence;
  final PrimitiveElement Precedence;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference claim;
  final CodeableConcept relationship;
  final Identifier reference;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayee {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference party;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitCareTeam {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final Reference provider;
  final FhirBoolean responsible;
  final PrimitiveElement Responsible;
  final CodeableConcept role;
  final CodeableConcept qualification;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSupportingInfo {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final CodeableConcept category;
  final CodeableConcept code;
  final String timingDate;
  final PrimitiveElement TimingDate;
  final Period timingPeriod;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final String valueString;
  final PrimitiveElement ValueString;
  final Quantity valueQuantity;
  final Attachment valueAttachment;
  final Reference valueReference;
  final Coding reason;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDiagnosis {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final List<CodeableConcept> type;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference> udi;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitInsurance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Reference coverage;
  final List<String> preAuthRef;
  final List<PrimitiveElement> PreAuthRef;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAccident {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement Date;
  final CodeableConcept type;
  final Address locationAddress;
  final Reference locationReference;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final List<FhirPositiveInt> careTeamSequence;
  final List<PrimitiveElement> CareTeamSequence;
  final List<FhirPositiveInt> diagnosisSequence;
  final List<PrimitiveElement> DiagnosisSequence;
  final List<FhirPositiveInt> procedureSequence;
  final List<PrimitiveElement> ProcedureSequence;
  final List<FhirPositiveInt> informationSequence;
  final List<PrimitiveElement> InformationSequence;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final String servicedDate;
  final PrimitiveElement ServicedDate;
  final Period servicedPeriod;
  final CodeableConcept locationCodeableConcept;
  final Address locationAddress;
  final Reference locationReference;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money net;
  final List<Reference> udi;
  final CodeableConcept bodySite;
  final List<CodeableConcept> subSite;
  final List<Reference> encounter;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitDetail> detail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAdjudication {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept reason;
  final Money amount;
  final FhirDecimal value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDetail {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money net;
  final List<Reference> udi;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitSubDetail> subDetail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money net;
  final List<Reference> udi;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ExplanationOfBenefitAdjudication> adjudication;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAddItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> itemSequence;
  final List<PrimitiveElement> ItemSequence;
  final List<FhirPositiveInt> detailSequence;
  final List<PrimitiveElement> DetailSequence;
  final List<FhirPositiveInt> subDetailSequence;
  final List<PrimitiveElement> SubDetailSequence;
  final List<Reference> provider;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final String servicedDate;
  final PrimitiveElement ServicedDate;
  final Period servicedPeriod;
  final CodeableConcept locationCodeableConcept;
  final Address locationAddress;
  final Reference locationReference;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money net;
  final CodeableConcept bodySite;
  final List<CodeableConcept> subSite;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitDetail1> detail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDetail1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money net;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitSubDetail1> subDetail;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money net;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ExplanationOfBenefitAdjudication> adjudication;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitTotal {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final Money amount;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayment {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Money adjustment;
  final CodeableConcept adjustmentReason;
  final FhirDate date;
  final PrimitiveElement Date;
  final Money amount;
  final Identifier identifier;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitProcessNote {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt number;
  final PrimitiveElement Number;
  final FhirCode type;
  final PrimitiveElement Type;
  final String text;
  final PrimitiveElement Text;
  final CodeableConcept language;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitBenefitBalance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final FhirBoolean excluded;
  final PrimitiveElement Excluded;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<ExplanationOfBenefitFinancial> financial;
}

@Data()
@JsonCodable()
class ExplanationOfBenefitFinancial {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final double allowedUnsignedInt;
  final PrimitiveElement AllowedUnsignedInt;
  final String allowedString;
  final PrimitiveElement AllowedString;
  final Money allowedMoney;
  final double usedUnsignedInt;
  final PrimitiveElement UsedUnsignedInt;
  final Money usedMoney;
}


