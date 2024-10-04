import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Bundle {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Identifier identifier;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirInstant timestamp;
  final PrimitiveElement timestampElement;
  final FhirUnsignedInt total;
  final PrimitiveElement totalElement;
  final List<BundleLink> link;
  final List<BundleEntry> entry;
  final Signature signature;
}

@Data()
@JsonCodable()
class BundleLink {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String relation;
  final PrimitiveElement relationElement;
  final FhirUri url;
  final PrimitiveElement urlElement;
}

@Data()
@JsonCodable()
class BundleEntry {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<BundleLink> link;
  final FhirUri fullUrl;
  final PrimitiveElement fullUrlElement;
  final Resource resource;
  final BundleSearch search;
  final BundleRequest request;
  final BundleResponse response;
}

@Data()
@JsonCodable()
class BundleSearch {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final FhirDecimal score;
  final PrimitiveElement scoreElement;
}

@Data()
@JsonCodable()
class BundleRequest {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode method;
  final PrimitiveElement methodElement;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String ifNoneMatch;
  final PrimitiveElement ifNoneMatchElement;
  final FhirInstant ifModifiedSince;
  final PrimitiveElement ifModifiedSinceElement;
  final String ifMatch;
  final PrimitiveElement ifMatchElement;
  final String ifNoneExist;
  final PrimitiveElement ifNoneExistElement;
}

@Data()
@JsonCodable()
class BundleResponse {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String status;
  final PrimitiveElement statusElement;
  final FhirUri location;
  final PrimitiveElement locationElement;
  final String etag;
  final PrimitiveElement etagElement;
  final FhirInstant lastModified;
  final PrimitiveElement lastModifiedElement;
  final Resource outcome;
}


