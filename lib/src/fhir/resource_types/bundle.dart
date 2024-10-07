import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Bundle] /// A container for a collection of resources.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A persistent identifier for the bundle that won't change as a bundle is
  /// copied from server to server.
  final Identifier? identifier;

  /// [type] /// Indicates the purpose of this bundle - how it is intended to be used.
  final FhirCode type;
  final Element? typeElement;

  /// [timestamp] /// The date/time that the bundle was assembled - i.e. when the resources were
  /// placed in the bundle.
  final FhirInstant? timestamp;
  final Element? timestampElement;

  /// [total] /// If a set of search matches, this is the total number of entries of type
  /// 'match' across all pages in the search. It does not include search.mode =
  /// 'include' or 'outcome' entries and it does not provide a count of the
  /// number of entries in the Bundle.
  final FhirUnsignedInt? total;
  final Element? totalElement;

  /// [link] /// A series of links that provide context to this bundle.
  final List<BundleLink>? link;

  /// [entry] /// An entry in a bundle resource - will either contain a resource or
  /// information about a resource (transactions and history only).
  final List<BundleEntry>? entry;

  /// [signature] /// Digital Signature - base64 encoded. XML-DSig or a JWT.
  final Signature? signature;
  @override
  Bundle clone() => throw UnimplementedError();
  Bundle copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Identifier? identifier,
    FhirCode? type,
    Element? typeElement,
    FhirInstant? timestamp,
    Element? timestampElement,
    FhirUnsignedInt? total,
    Element? totalElement,
    List<BundleLink>? link,
    List<BundleEntry>? entry,
    Signature? signature,
  }) {
    return Bundle(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      timestamp: timestamp ?? this.timestamp,
      timestampElement: timestampElement ?? this.timestampElement,
      total: total ?? this.total,
      totalElement: totalElement ?? this.totalElement,
      link: link ?? this.link,
      entry: entry ?? this.entry,
      signature: signature ?? this.signature,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BundleLink] /// A series of links that provide context to this bundle.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relation] /// A name which details the functional use for this link - see
  /// [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  final FhirString relation;
  final Element? relationElement;

  /// [url] /// The reference details for the link.
  final FhirUri url;
  final Element? urlElement;
  @override
  BundleLink clone() => throw UnimplementedError();
  BundleLink copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? relation,
    Element? relationElement,
    FhirUri? url,
    Element? urlElement,
  }) {
    return BundleLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relation: relation ?? this.relation,
      relationElement: relationElement ?? this.relationElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BundleEntry] /// An entry in a bundle resource - will either contain a resource or
/// information about a resource (transactions and history only).
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [link] /// A series of links that provide context to this entry.
  final List<BundleLink>? link;

  /// [fullUrl] /// The Absolute URL for the resource. The fullUrl SHALL NOT disagree with the
  /// id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL shall
  /// be version-independent URL consistent with the Resource.id. The fullUrl is
  /// a version independent reference to the resource. The fullUrl element SHALL
  /// have a value except that:
  /// * fullUrl can be empty on a POST (although it does not need to when
  /// specifying a temporary id for reference in the bundle)
  /// * Results from operations might involve resources that are not identified.
  final FhirUri? fullUrl;
  final Element? fullUrlElement;

  /// [resource] /// The Resource for the entry. The purpose/meaning of the resource is
  /// determined by the Bundle.type.
  final Resource? resource;

  /// [search] /// Information about the search process that lead to the creation of this
  /// entry.
  final BundleSearch? search;

  /// [request] /// Additional information about how this entry should be processed as part of
  /// a transaction or batch. For history, it shows how the entry was processed
  /// to create the version contained in the entry.
  final BundleRequest? request;

  /// [response] /// Indicates the results of processing the corresponding 'request' entry in
  /// the batch or transaction being responded to or what the results of an
  /// operation where when returning history.
  final BundleResponse? response;
  @override
  BundleEntry clone() => throw UnimplementedError();
  BundleEntry copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<BundleLink>? link,
    FhirUri? fullUrl,
    Element? fullUrlElement,
    Resource? resource,
    BundleSearch? search,
    BundleRequest? request,
    BundleResponse? response,
  }) {
    return BundleEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      fullUrl: fullUrl ?? this.fullUrl,
      fullUrlElement: fullUrlElement ?? this.fullUrlElement,
      resource: resource ?? this.resource,
      search: search ?? this.search,
      request: request ?? this.request,
      response: response ?? this.response,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BundleSearch] /// Information about the search process that lead to the creation of this
/// entry.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Why this entry is in the result set - whether it's included as a match or
  /// because of an _include requirement, or to convey information or warning
  /// information about the search process.
  final FhirCode? mode;
  final Element? modeElement;

  /// [score] /// When searching, the server's search ranking score for the entry.
  final FhirDecimal? score;
  final Element? scoreElement;
  @override
  BundleSearch clone() => throw UnimplementedError();
  BundleSearch copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirDecimal? score,
    Element? scoreElement,
  }) {
    return BundleSearch(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      score: score ?? this.score,
      scoreElement: scoreElement ?? this.scoreElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BundleRequest] /// Additional information about how this entry should be processed as part of
/// a transaction or batch. For history, it shows how the entry was processed
/// to create the version contained in the entry.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [method] /// In a transaction or batch, this is the HTTP action to be executed for this
  /// entry. In a history bundle, this indicates the HTTP action that occurred.
  final FhirCode method;
  final Element? methodElement;

  /// [url] /// The URL for this entry, relative to the root (the address to which the
  /// request is posted).
  final FhirUri url;
  final Element? urlElement;

  /// [ifNoneMatch] /// If the ETag values match, return a 304 Not Modified status. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  final FhirString? ifNoneMatch;
  final Element? ifNoneMatchElement;

  /// [ifModifiedSince] /// Only perform the operation if the last updated date matches. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  final FhirInstant? ifModifiedSince;
  final Element? ifModifiedSinceElement;

  /// [ifMatch] /// Only perform the operation if the Etag value matches. For more information,
  /// see the API section ["Managing Resource
  /// Contention"](http.html#concurrency).
  final FhirString? ifMatch;
  final Element? ifMatchElement;

  /// [ifNoneExist] /// Instruct the server not to perform the create if a specified resource
  /// already exists. For further information, see the API documentation for
  /// ["Conditional Create"](http.html#ccreate). This is just the query portion
  /// of the URL - what follows the "?" (not including the "?").
  final FhirString? ifNoneExist;
  final Element? ifNoneExistElement;
  @override
  BundleRequest clone() => throw UnimplementedError();
  BundleRequest copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? method,
    Element? methodElement,
    FhirUri? url,
    Element? urlElement,
    FhirString? ifNoneMatch,
    Element? ifNoneMatchElement,
    FhirInstant? ifModifiedSince,
    Element? ifModifiedSinceElement,
    FhirString? ifMatch,
    Element? ifMatchElement,
    FhirString? ifNoneExist,
    Element? ifNoneExistElement,
  }) {
    return BundleRequest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      methodElement: methodElement ?? this.methodElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      ifNoneMatch: ifNoneMatch ?? this.ifNoneMatch,
      ifNoneMatchElement: ifNoneMatchElement ?? this.ifNoneMatchElement,
      ifModifiedSince: ifModifiedSince ?? this.ifModifiedSince,
      ifModifiedSinceElement:
          ifModifiedSinceElement ?? this.ifModifiedSinceElement,
      ifMatch: ifMatch ?? this.ifMatch,
      ifMatchElement: ifMatchElement ?? this.ifMatchElement,
      ifNoneExist: ifNoneExist ?? this.ifNoneExist,
      ifNoneExistElement: ifNoneExistElement ?? this.ifNoneExistElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BundleResponse] /// Indicates the results of processing the corresponding 'request' entry in
/// the batch or transaction being responded to or what the results of an
/// operation where when returning history.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status code returned by processing this entry. The status SHALL start
  /// with a 3 digit HTTP code (e.g. 404) and may contain the standard HTTP
  /// description associated with the status code.
  final FhirString status;
  final Element? statusElement;

  /// [location] /// The location header created by processing this operation, populated if the
  /// operation returns a location.
  final FhirUri? location;
  final Element? locationElement;

  /// [etag] /// The Etag for the resource, if the operation for the entry produced a
  /// versioned resource (see [Resource Metadata and
  /// Versioning](http.html#versioning) and [Managing Resource
  /// Contention](http.html#concurrency)).
  final FhirString? etag;
  final Element? etagElement;

  /// [lastModified] /// The date/time that the resource was modified on the server.
  final FhirInstant? lastModified;
  final Element? lastModifiedElement;

  /// [outcome] /// An OperationOutcome containing hints and warnings produced as part of
  /// processing this entry in a batch or transaction.
  final Resource? outcome;
  @override
  BundleResponse clone() => throw UnimplementedError();
  BundleResponse copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? status,
    Element? statusElement,
    FhirUri? location,
    Element? locationElement,
    FhirString? etag,
    Element? etagElement,
    FhirInstant? lastModified,
    Element? lastModifiedElement,
    Resource? outcome,
  }) {
    return BundleResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      location: location ?? this.location,
      locationElement: locationElement ?? this.locationElement,
      etag: etag ?? this.etag,
      etagElement: etagElement ?? this.etagElement,
      lastModified: lastModified ?? this.lastModified,
      lastModifiedElement: lastModifiedElement ?? this.lastModifiedElement,
      outcome: outcome ?? this.outcome,
    );
  }
}
