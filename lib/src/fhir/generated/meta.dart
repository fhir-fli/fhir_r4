import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class FhirMeta {
  final String id;
  final List<FhirExtension> extension_;
  final FhirId versionId;
  final PrimitiveElement versionIdElement;
  final FhirInstant lastUpdated;
  final PrimitiveElement lastUpdatedElement;
  final FhirUri source;
  final PrimitiveElement sourceElement;
  final List<FhirCanonical> profile;
  final List<Coding> security;
  final List<Coding> tag;
  const FhirMeta({
    required this.id,
    required this.extension_,
    required this.versionId,
    required this.versionIdElement,
    required this.lastUpdated,
    required this.lastUpdatedElement,
    required this.source,
    required this.sourceElement,
    required this.profile,
    required this.security,
    required this.tag,
  });
}


