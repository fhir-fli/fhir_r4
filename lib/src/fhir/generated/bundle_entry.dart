import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BundleEntry {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<BundleLink> link;
  final FhirUri fullUrl;
  final PrimitiveElement FullUrl;
  final ResourceList resource;
  final Bundle_Search search;
  final Bundle_Request request;
  final Bundle_Response response;
  const BundleEntry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.link,
    this.fullUrl,
    this.FullUrl,
    this.resource,
    this.search,
    this.request,
    this.response,
  });
}
