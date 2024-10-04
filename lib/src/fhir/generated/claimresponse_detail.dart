import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseDetail {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt detailSequence;
  final PrimitiveElement DetailSequence;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail> subDetail;
  const ClaimResponseDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.detailSequence,
    this.DetailSequence,
    this.noteNumber,
    this.NoteNumber,
    required this.adjudication,
    this.subDetail,
  });
}
