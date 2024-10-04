import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BundleResponse {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String status;
  final PrimitiveElement Status;
  final FhirUri location;
  final PrimitiveElement Location;
  final String etag;
  final PrimitiveElement Etag;
  final FhirInstant lastModified;
  final PrimitiveElement LastModified;
  final ResourceList outcome;
  const BundleResponse({
    this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.Status,
    this.location,
    this.Location,
    this.etag,
    this.Etag,
    this.lastModified,
    this.LastModified,
    this.outcome,
  });
}
