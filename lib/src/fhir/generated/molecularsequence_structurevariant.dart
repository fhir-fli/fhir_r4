import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceStructureVariant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept variantType;
  final FhirBoolean exact;
  final PrimitiveElement Exact;
  final FhirInteger length;
  final PrimitiveElement Length;
  final MolecularSequence_Outer outer;
  final MolecularSequence_Inner inner;
  const MolecularSequenceStructureVariant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.variantType,
    this.exact,
    this.Exact,
    this.length,
    this.Length,
    this.outer,
    this.inner,
  });
}
