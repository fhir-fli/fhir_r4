import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt itemSequence;
  final PrimitiveElement ItemSequence;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail> detail;
  const ClaimResponseItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.ItemSequence,
    this.noteNumber,
    this.NoteNumber,
    required this.adjudication,
    this.detail,
  });
}
