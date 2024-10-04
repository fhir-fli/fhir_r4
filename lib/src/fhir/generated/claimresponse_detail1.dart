import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseDetail1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const ClaimResponseDetail1({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.Factor,
    this.net,
    this.noteNumber,
    this.NoteNumber,
    required this.adjudication,
    this.subDetail,
  });
}
