import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementSoftware {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String version;
  final PrimitiveElement Version;
  final FhirDateTime releaseDate;
  final PrimitiveElement ReleaseDate;
  const CapabilityStatementSoftware({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.version,
    this.Version,
    this.releaseDate,
    this.ReleaseDate,
  });
}
