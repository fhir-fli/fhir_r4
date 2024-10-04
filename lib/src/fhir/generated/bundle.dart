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
  const Bundle({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.identifier,
    required this.type,
    required this.typeElement,
    required this.timestamp,
    required this.timestampElement,
    required this.total,
    required this.totalElement,
    required this.link,
    required this.entry,
    required this.signature,
  });
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
  const BundleLink({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.relation,
    required this.relationElement,
    required this.url,
    required this.urlElement,
  });
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
  const BundleEntry({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.link,
    required this.fullUrl,
    required this.fullUrlElement,
    required this.resource,
    required this.search,
    required this.request,
    required this.response,
  });
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
  const BundleSearch({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.mode,
    required this.modeElement,
    required this.score,
    required this.scoreElement,
  });
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
  const BundleRequest({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.method,
    required this.methodElement,
    required this.url,
    required this.urlElement,
    required this.ifNoneMatch,
    required this.ifNoneMatchElement,
    required this.ifModifiedSince,
    required this.ifModifiedSinceElement,
    required this.ifMatch,
    required this.ifMatchElement,
    required this.ifNoneExist,
    required this.ifNoneExistElement,
  });
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
  const BundleResponse({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.status,
    required this.statusElement,
    required this.location,
    required this.locationElement,
    required this.etag,
    required this.etagElement,
    required this.lastModified,
    required this.lastModifiedElement,
    required this.outcome,
  });
}


