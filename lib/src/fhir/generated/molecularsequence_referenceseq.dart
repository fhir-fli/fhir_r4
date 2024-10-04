import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceReferenceSeq {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept chromosome;
  final String genomeBuild;
  final PrimitiveElement GenomeBuild;
  final FhirCode orientation;
  final PrimitiveElement Orientation;
  final CodeableConcept referenceSeqId;
  final Reference referenceSeqPointer;
  final String referenceSeqString;
  final PrimitiveElement ReferenceSeqString;
  final FhirCode strand;
  final PrimitiveElement Strand;
  final FhirInteger windowStart;
  final PrimitiveElement WindowStart;
  final FhirInteger windowEnd;
  final PrimitiveElement WindowEnd;
  const MolecularSequenceReferenceSeq({
    this.id,
    this.extension,
    this.modifierExtension,
    this.chromosome,
    this.genomeBuild,
    this.GenomeBuild,
    this.orientation,
    this.Orientation,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.ReferenceSeqString,
    this.strand,
    this.Strand,
    this.windowStart,
    this.WindowStart,
    this.windowEnd,
    this.WindowEnd,
  });
}
