import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Bundle extends Resource {
  Bundle({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.identifier,
    required this.type,
    this.timestamp,
    this.total,
    this.link,
    this.entry,
    this.signature,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String type;
  String? timestamp;
  int? total;
  ToMany<BundleLink>? link = ToMany<BundleLink>();
  ToMany<BundleEntry>? entry = ToMany<BundleEntry>();
  ToOne<Signature>? signature = ToOne<Signature>();
}

@Entity()
class BundleLink {
  BundleLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relation,
    required this.url,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String relation;
  String url;
}

@Entity()
class BundleEntry {
  BundleEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.link,
    this.fullUrl,
    this.resource,
    this.search,
    this.request,
    this.response,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<BundleLink>? link = ToMany<BundleLink>();
  String? fullUrl;
  ToOne<Resource>? resource = ToOne<Resource>();
  ToOne<BundleSearch>? search = ToOne<BundleSearch>();
  ToOne<BundleRequest>? request = ToOne<BundleRequest>();
  ToOne<BundleResponse>? response = ToOne<BundleResponse>();
}

@Entity()
class BundleSearch {
  BundleSearch({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.score,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? mode;
  double? score;
}

@Entity()
class BundleRequest {
  BundleRequest({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.method,
    required this.url,
    this.ifNoneMatch,
    this.ifModifiedSince,
    this.ifMatch,
    this.ifNoneExist,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String method;
  String url;
  String? ifNoneMatch;
  String? ifModifiedSince;
  String? ifMatch;
  String? ifNoneExist;
}

@Entity()
class BundleResponse {
  BundleResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.status,
    this.location,
    this.etag,
    this.lastModified,
    this.outcome,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String status;
  String? location;
  String? etag;
  String? lastModified;
  ToOne<Resource>? outcome = ToOne<Resource>();
}
