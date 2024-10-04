import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimDetail {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const ClaimDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.Factor,
    this.net,
    this.udi,
    this.subDetail,
  });
}
