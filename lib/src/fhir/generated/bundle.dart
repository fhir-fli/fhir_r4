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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Identifier identifier;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirInstant timestamp;
  final PrimitiveElement Timestamp;
  final FhirUnsignedInt total;
  final PrimitiveElement Total;
  final List<BundleLink> link;
  final List<BundleEntry> entry;
  final Signature signature;
}

@Data()
@JsonCodable()
class BundleLink {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String relation;
  final PrimitiveElement Relation;
  final FhirUri url;
  final PrimitiveElement Url;
}

@Data()
@JsonCodable()
class BundleEntry {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<BundleLink> link;
  final FhirUri fullUrl;
  final PrimitiveElement FullUrl;
  final ResourceList resource;
  final BundleSearch search;
  final BundleRequest request;
  final BundleResponse response;
}

@Data()
@JsonCodable()
class BundleSearch {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirDecimal score;
  final PrimitiveElement Score;
}

@Data()
@JsonCodable()
class BundleRequest {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
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
}

@Data()
@JsonCodable()
class BundleResponse {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String status;
  final PrimitiveElement Status;
  final FhirUri location;
  final PrimitiveElement Location;
  final String etag;
  final PrimitiveElement Etag;
  final FhirInstant lastModified;
  final PrimitiveElement LastModified;
  final ResourceList outcome;
}


