import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Bundle extends DomainResource {
  Bundle({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    this.identifier,
    required this.type,
    this.typeElement,
    this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.link,
    this.entry,
    this.signature,
  }) : super(resourceType: R4ResourceType.Bundle);

  final Identifier? identifier;
  final FhirCode type;
  final Element? typeElement;
  final FhirInstant? timestamp;
  final Element? timestampElement;
  final FhirUnsignedInt? total;
  final Element? totalElement;
  final List<BundleLink>? link;
  final List<BundleEntry>? entry;
  final Signature? signature;
  @override
  Bundle clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class BundleLink extends BackboneElement {
  BundleLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relation,
    this.relationElement,
    required this.url,
    this.urlElement,
  });

  final FhirString relation;
  final Element? relationElement;
  final FhirUri url;
  final Element? urlElement;
  @override
  BundleLink clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class BundleEntry extends BackboneElement {
  BundleEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    this.fullUrl,
    this.fullUrlElement,
    this.resource,
    this.search,
    this.request,
    this.response,
  });

  final List<BundleLink>? link;
  final FhirUri? fullUrl;
  final Element? fullUrlElement;
  final Resource? resource;
  final BundleSearch? search;
  final BundleRequest? request;
  final BundleResponse? response;
  @override
  BundleEntry clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class BundleSearch extends BackboneElement {
  BundleSearch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.modeElement,
    this.score,
    this.scoreElement,
  });

  final FhirCode? mode;
  final Element? modeElement;
  final FhirDecimal? score;
  final Element? scoreElement;
  @override
  BundleSearch clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class BundleRequest extends BackboneElement {
  BundleRequest({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.method,
    this.methodElement,
    required this.url,
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

  final FhirCode method;
  final Element? methodElement;
  final FhirUri url;
  final Element? urlElement;
  final FhirString? ifNoneMatch;
  final Element? ifNoneMatchElement;
  final FhirInstant? ifModifiedSince;
  final Element? ifModifiedSinceElement;
  final FhirString? ifMatch;
  final Element? ifMatchElement;
  final FhirString? ifNoneExist;
  final Element? ifNoneExistElement;
  @override
  BundleRequest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class BundleResponse extends BackboneElement {
  BundleResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    this.location,
    this.locationElement,
    this.etag,
    this.etagElement,
    this.lastModified,
    this.lastModifiedElement,
    this.outcome,
  });

  final FhirString status;
  final Element? statusElement;
  final FhirUri? location;
  final Element? locationElement;
  final FhirString? etag;
  final Element? etagElement;
  final FhirInstant? lastModified;
  final Element? lastModifiedElement;
  final Resource? outcome;
  @override
  BundleResponse clone() => throw UnimplementedError();
}
