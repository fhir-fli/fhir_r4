import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitAddItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const ExplanationOfBenefitAddItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.ItemSequence,
    this.detailSequence,
    this.DetailSequence,
    this.subDetailSequence,
    this.SubDetailSequence,
    this.provider,
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
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.NoteNumber,
    this.adjudication,
    this.detail,
  });
}
