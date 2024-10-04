import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseError {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt itemSequence;
  final PrimitiveElement ItemSequence;
  final FhirPositiveInt detailSequence;
  final PrimitiveElement DetailSequence;
  final FhirPositiveInt subDetailSequence;
  final PrimitiveElement SubDetailSequence;
  final CodeableConcept code;
  const ClaimResponseError({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.ItemSequence,
    this.detailSequence,
    this.DetailSequence,
    this.subDetailSequence,
    this.SubDetailSequence,
    required this.code,
  });
}
