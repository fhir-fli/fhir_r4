import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BundleRequest {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode method;
  final PrimitiveElement Method;
  final FhirUri url;
  final PrimitiveElement Url;
  final String ifNoneMatch;
  final PrimitiveElement IfNoneMatch;
  final FhirInstant ifModifiedSince;
  final PrimitiveElement IfModifiedSince;
  final String ifMatch;
  final PrimitiveElement IfMatch;
  final String ifNoneExist;
  final PrimitiveElement IfNoneExist;
  const BundleRequest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.method,
    this.Method,
    this.url,
    this.Url,
    this.ifNoneMatch,
    this.IfNoneMatch,
    this.ifModifiedSince,
    this.IfModifiedSince,
    this.ifMatch,
    this.IfMatch,
    this.ifNoneExist,
    this.IfNoneExist,
  });
}
