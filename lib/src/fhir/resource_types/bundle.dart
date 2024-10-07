import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Bundle extends DomainResource {
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

  @override
  Bundle clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BundleLink extends BackboneElement {
  final FhirString relation;
  final Element? relationElement;
  final FhirUri url;
  final Element? urlElement;

  BundleLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relation,
    this.relationElement,
    required this.url,
    this.urlElement,
  });

  @override
  BundleLink clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BundleEntry extends BackboneElement {
  final List<BundleLink>? link;
  final FhirUri? fullUrl;
  final Element? fullUrlElement;
  final Resource? resource;
  final BundleSearch? search;
  final BundleRequest? request;
  final BundleResponse? response;

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

  @override
  BundleEntry clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BundleSearch extends BackboneElement {
  final FhirCode? mode;
  final Element? modeElement;
  final FhirDecimal? score;
  final Element? scoreElement;

  BundleSearch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.modeElement,
    this.score,
    this.scoreElement,
  });

  @override
  BundleSearch clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BundleRequest extends BackboneElement {
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

  @override
  BundleRequest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BundleResponse extends BackboneElement {
  final FhirString status;
  final Element? statusElement;
  final FhirUri? location;
  final Element? locationElement;
  final FhirString? etag;
  final Element? etagElement;
  final FhirInstant? lastModified;
  final Element? lastModifiedElement;
  final Resource? outcome;

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

  @override
  BundleResponse clone() => throw UnimplementedError();
}
