import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const ClaimItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.careTeamSequence,
    this.CareTeamSequence,
    this.diagnosisSequence,
    this.DiagnosisSequence,
    this.procedureSequence,
    this.ProcedureSequence,
    this.informationSequence,
    this.InformationSequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.ServicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.Factor,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.detail,
  });
}
