import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceVariant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
  final String observedAllele;
  final PrimitiveElement ObservedAllele;
  final String referenceAllele;
  final PrimitiveElement ReferenceAllele;
  final String cigar;
  final PrimitiveElement Cigar;
  final Reference variantPointer;
  const MolecularSequenceVariant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.start,
    this.Start,
    this.end,
    this.End,
    this.observedAllele,
    this.ObservedAllele,
    this.referenceAllele,
    this.ReferenceAllele,
    this.cigar,
    this.Cigar,
    this.variantPointer,
  });
}
