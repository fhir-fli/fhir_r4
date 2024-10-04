import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class FhirMeta {
  final String id;
  final List<FhirExtension> extension;
  final FhirId versionId;
  final PrimitiveElement VersionId;
  final FhirInstant lastUpdated;
  final PrimitiveElement LastUpdated;
  final FhirUri source;
  final PrimitiveElement Source;
  final List<FhirCanonical> profile;
  final List<Coding> security;
  final List<Coding> tag;
}


