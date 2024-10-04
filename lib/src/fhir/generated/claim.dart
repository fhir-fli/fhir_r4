import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Claim {
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
  final CodeableConcept fundsReserve;
  final List<ClaimRelated> related;
  final Reference prescription;
  final Reference originalPrescription;
  final ClaimPayee payee;
  final Reference referral;
  final Reference facility;
  final List<ClaimCareTeam> careTeam;
  final List<ClaimSupportingInfo> supportingInfo;
  final List<ClaimDiagnosis> diagnosis;
  final List<ClaimProcedure> procedure;
  final List<ClaimInsurance> insurance;
  final ClaimAccident accident;
  final List<ClaimItem> item;
  final Money total;
}

@Data()
@JsonCodable()
class ClaimRelated {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference claim;
  final CodeableConcept relationship;
  final Identifier reference;
}

@Data()
@JsonCodable()
class ClaimPayee {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference party;
}

@Data()
@JsonCodable()
class ClaimCareTeam {
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
class ClaimSupportingInfo {
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
  final CodeableConcept reason;
}

@Data()
@JsonCodable()
class ClaimDiagnosis {
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
class ClaimProcedure {
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
class ClaimInsurance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Identifier identifier;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement BusinessArrangement;
  final List<String> preAuthRef;
  final List<PrimitiveElement> PreAuthRef;
  final Reference claimResponse;
}

@Data()
@JsonCodable()
class ClaimAccident {
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
class ClaimItem {
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
  final List<ClaimDetail> detail;
}

@Data()
@JsonCodable()
class ClaimDetail {
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
  final List<ClaimSubDetail> subDetail;
}

@Data()
@JsonCodable()
class ClaimSubDetail {
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
}

@Data()
@JsonCodable()
class ClaimResponse {
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
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference insurer;
  final Reference requestor;
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final String preAuthRef;
  final PrimitiveElement PreAuthRef;
  final Period preAuthPeriod;
  final CodeableConcept payeeType;
  final List<ClaimResponseItem> item;
  final List<ClaimResponseAddItem> addItem;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseTotal> total;
  final ClaimResponsePayment payment;
  final CodeableConcept fundsReserve;
  final CodeableConcept formCode;
  final Attachment form;
  final List<ClaimResponseProcessNote> processNote;
  final List<Reference> communicationRequest;
  final List<ClaimResponseInsurance> insurance;
  final List<ClaimResponseError> error;
}

@Data()
@JsonCodable()
class ClaimResponseItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt itemSequence;
  final PrimitiveElement ItemSequence;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail> detail;
}

@Data()
@JsonCodable()
class ClaimResponseAdjudication {
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
class ClaimResponseDetail {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt detailSequence;
  final PrimitiveElement DetailSequence;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail> subDetail;
}

@Data()
@JsonCodable()
class ClaimResponseSubDetail {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt subDetailSequence;
  final PrimitiveElement SubDetailSequence;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ClaimResponseAdjudication> adjudication;
}

@Data()
@JsonCodable()
class ClaimResponseAddItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> itemSequence;
  final List<PrimitiveElement> ItemSequence;
  final List<FhirPositiveInt> detailSequence;
  final List<PrimitiveElement> DetailSequence;
  final List<FhirPositiveInt> subdetailSequence;
  final List<PrimitiveElement> SubdetailSequence;
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
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail1> detail;
}

@Data()
@JsonCodable()
class ClaimResponseDetail1 {
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
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail1> subDetail;
}

@Data()
@JsonCodable()
class ClaimResponseSubDetail1 {
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
  final List<ClaimResponseAdjudication> adjudication;
}

@Data()
@JsonCodable()
class ClaimResponseTotal {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final Money amount;
}

@Data()
@JsonCodable()
class ClaimResponsePayment {
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
class ClaimResponseProcessNote {
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
class ClaimResponseInsurance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement BusinessArrangement;
  final Reference claimResponse;
}

@Data()
@JsonCodable()
class ClaimResponseError {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt itemSequence;
  final PrimitiveElement ItemSequence;
  final FhirPositiveInt detailSequence;
  final PrimitiveElement DetailSequence;
  final FhirPositiveInt subDetailSequence;
  final PrimitiveElement SubDetailSequence;
  final CodeableConcept code;
}


