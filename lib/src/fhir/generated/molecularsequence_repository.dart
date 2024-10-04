import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceRepository {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirUri url;
  final PrimitiveElement Url;
  final String name;
  final PrimitiveElement Name;
  final String datasetId;
  final PrimitiveElement DatasetId;
  final String variantsetId;
  final PrimitiveElement VariantsetId;
  final String readsetId;
  final PrimitiveElement ReadsetId;
  const MolecularSequenceRepository({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.url,
    this.Url,
    this.name,
    this.Name,
    this.datasetId,
    this.DatasetId,
    this.variantsetId,
    this.VariantsetId,
    this.readsetId,
    this.ReadsetId,
  });
}
