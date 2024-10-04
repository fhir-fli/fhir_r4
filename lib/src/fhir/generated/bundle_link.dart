import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BundleLink {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String relation;
  final PrimitiveElement Relation;
  final FhirUri url;
  final PrimitiveElement Url;
  const BundleLink({
    this.id,
    this.extension,
    this.modifierExtension,
    this.relation,
    this.Relation,
    this.url,
    this.Url,
  });
}
