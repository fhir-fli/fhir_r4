import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

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
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  final ExplanationOfBenefit_Payee payee;
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
  final ExplanationOfBenefit_Accident accident;
  final List<ExplanationOfBenefitItem> item;
  final List<ExplanationOfBenefitAddItem> addItem;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitTotal> total;
  final ExplanationOfBenefit_Payment payment;
  final CodeableConcept formCode;
  final Attachment form;
  final List<ExplanationOfBenefitProcessNote> processNote;
  final Period benefitPeriod;
  final List<ExplanationOfBenefitBenefitBalance> benefitBalance;
  const ExplanationOfBenefit({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.Status,
    required this.type,
    this.subType,
    this.use,
    this.Use,
    required this.patient,
    this.billablePeriod,
    this.created,
    this.Created,
    this.enterer,
    required this.insurer,
    required this.provider,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.claim,
    this.claimResponse,
    this.outcome,
    this.Outcome,
    this.disposition,
    this.Disposition,
    this.preAuthRef,
    this.PreAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.Precedence,
    required this.insurance,
    this.accident,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
  });
}
