import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConsentPolicy {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri authority;
  final PrimitiveElement Authority;
  final FhirUri uri;
  final PrimitiveElement Uri;
  const ConsentPolicy({
    this.id,
    this.extension,
    this.modifierExtension,
    this.authority,
    this.Authority,
    this.uri,
    this.Uri,
  });
}
