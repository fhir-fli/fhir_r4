import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

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
  final CodeableConcept fundsReserve;
  final List<ClaimRelated> related;
  final Reference prescription;
  final Reference originalPrescription;
  final Claim_Payee payee;
  final Reference referral;
  final Reference facility;
  final List<ClaimCareTeam> careTeam;
  final List<ClaimSupportingInfo> supportingInfo;
  final List<ClaimDiagnosis> diagnosis;
  final List<ClaimProcedure> procedure;
  final List<ClaimInsurance> insurance;
  final Claim_Accident accident;
  final List<ClaimItem> item;
  final Money total;
  const Claim({
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
    this.insurer,
    required this.provider,
    required this.priority,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    required this.insurance,
    this.accident,
    this.item,
    this.total,
  });
}
