import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirMeta extends DataType {
  final FhirId? versionId;
  final Element? versionIdElement;
  final FhirInstant? lastUpdated;
  final Element? lastUpdatedElement;
  final FhirUri? source;
  final Element? sourceElement;
  final List<FhirCanonical>? profile;
  final List<Coding>? security;
  final List<Coding>? tag;

  FhirMeta({
    super.id,
    super.extension_,
    this.versionId,
    this.versionIdElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.source,
    this.sourceElement,
    this.profile,
    this.security,
    this.tag,
  });

}


