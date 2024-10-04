import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuideDependsOn {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCanonical uri;
  final FhirId packageId;
  final PrimitiveElement PackageId;
  final String version;
  final PrimitiveElement Version;
  const ImplementationGuideDependsOn({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.uri,
    this.packageId,
    this.PackageId,
    this.version,
    this.Version,
  });
}
