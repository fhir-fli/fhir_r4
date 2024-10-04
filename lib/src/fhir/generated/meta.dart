import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Meta {
  final String id;
  final List<Extension> extension;
  final FhirId versionId;
  final PrimitiveElement VersionId;
  final FhirInstant lastUpdated;
  final PrimitiveElement LastUpdated;
  final FhirUri source;
  final PrimitiveElement Source;
  final List<FhirCanonical> profile;
  final List<Coding> security;
  final List<Coding> tag;
  const Meta({
    this.id,
    this.extension,
    this.versionId,
    this.VersionId,
    this.lastUpdated,
    this.LastUpdated,
    this.source,
    this.Source,
    this.profile,
    this.security,
    this.tag,
  });
}
