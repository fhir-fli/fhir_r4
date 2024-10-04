import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceOuter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
  const MolecularSequenceOuter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.Start,
    this.end,
    this.End,
  });
}
