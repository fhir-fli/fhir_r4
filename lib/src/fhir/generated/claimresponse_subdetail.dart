import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseSubDetail {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt subDetailSequence;
  final PrimitiveElement SubDetailSequence;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> NoteNumber;
  final List<ClaimResponseAdjudication> adjudication;
  const ClaimResponseSubDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.subDetailSequence,
    this.SubDetailSequence,
    this.noteNumber,
    this.NoteNumber,
    this.adjudication,
  });
}
