import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Bundle extends DomainResource {
  final Identifier? identifier;
  final FhirCode? type;
  final Element? typeElement;
  final FhirInstant? timestamp;
  final Element? timestampElement;
  final FhirUnsignedInt? total;
  final Element? totalElement;
  final List<BundleLink>? link;
  final List<BundleEntry>? entry;
  final Signature? signature;

  Bundle({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    this.identifier,
    this.type,
    this.typeElement,
    this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.link,
    this.entry,
    this.signature,
  }): super(resourceType: R4ResourceType.Bundle);

@override
Bundle clone() => this;

}


@Data()
@JsonCodable()
class BundleLink {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? relation;
  final Element? relationElement;
  final FhirUri? url;
  final Element? urlElement;

  BundleLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.relation,
    this.relationElement,
    this.url,
    this.urlElement,
  });

}


@Data()
@JsonCodable()
class BundleEntry {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<BundleLink>? link;
  final FhirUri? fullUrl;
  final Element? fullUrlElement;
  final Resource? resource;
  final BundleSearch? search;
  final BundleRequest? request;
  final BundleResponse? response;

  BundleEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.link,
    this.fullUrl,
    this.fullUrlElement,
    this.resource,
    this.search,
    this.request,
    this.response,
  });

}


@Data()
@JsonCodable()
class BundleSearch {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirDecimal? score;
  final Element? scoreElement;

  BundleSearch({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    this.score,
    this.scoreElement,
  });

}


@Data()
@JsonCodable()
class BundleRequest {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? method;
  final Element? methodElement;
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? ifNoneMatch;
  final Element? ifNoneMatchElement;
  final FhirInstant? ifModifiedSince;
  final Element? ifModifiedSinceElement;
  final FhirString? ifMatch;
  final Element? ifMatchElement;
  final FhirString? ifNoneExist;
  final Element? ifNoneExistElement;

  BundleRequest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.method,
    this.methodElement,
    this.url,
    this.urlElement,
    this.ifNoneMatch,
    this.ifNoneMatchElement,
    this.ifModifiedSince,
    this.ifModifiedSinceElement,
    this.ifMatch,
    this.ifMatchElement,
    this.ifNoneExist,
    this.ifNoneExistElement,
  });

}


@Data()
@JsonCodable()
class BundleResponse {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? status;
  final Element? statusElement;
  final FhirUri? location;
  final Element? locationElement;
  final FhirString? etag;
  final Element? etagElement;
  final FhirInstant? lastModified;
  final Element? lastModifiedElement;
  final Resource? outcome;

  BundleResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.status,
    this.statusElement,
    this.location,
    this.locationElement,
    this.etag,
    this.etagElement,
    this.lastModified,
    this.lastModifiedElement,
    this.outcome,
  });

}



