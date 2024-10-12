// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxBundle {
  ObjectBoxBundle({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? timestamp;
  ToOne<ObjectBoxElement>? timestampElement = ToOne<ObjectBoxElement>();
  int? total;
  ToOne<ObjectBoxElement>? totalElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxBundleLink>? link = ToMany<ObjectBoxBundleLink>();
  ToMany<ObjectBoxBundleEntry>? entry = ToMany<ObjectBoxBundleEntry>();
  ToOne<ObjectBoxSignature>? signature = ToOne<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxBundleLink {
  ObjectBoxBundleLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relation,
    this.relationElement,
    required this.url,
    this.urlElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String relation;
  ToOne<ObjectBoxElement>? relationElement = ToOne<ObjectBoxElement>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxBundleEntry {
  ObjectBoxBundleEntry({
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxBundleLink>? link = ToMany<ObjectBoxBundleLink>();
  String? fullUrl;
  ToOne<ObjectBoxElement>? fullUrlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxResource>? resource = ToOne<ObjectBoxResource>();
  ToOne<ObjectBoxBundleSearch>? search = ToOne<ObjectBoxBundleSearch>();
  ToOne<ObjectBoxBundleRequest>? request = ToOne<ObjectBoxBundleRequest>();
  ToOne<ObjectBoxBundleResponse>? response = ToOne<ObjectBoxBundleResponse>();
}

@Entity()
class ObjectBoxBundleSearch {
  ObjectBoxBundleSearch({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    this.score,
    this.scoreElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  double? score;
  ToOne<ObjectBoxElement>? scoreElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxBundleRequest {
  ObjectBoxBundleRequest({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String method;
  ToOne<ObjectBoxElement>? methodElement = ToOne<ObjectBoxElement>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? ifNoneMatch;
  ToOne<ObjectBoxElement>? ifNoneMatchElement = ToOne<ObjectBoxElement>();
  String? ifModifiedSince;
  ToOne<ObjectBoxElement>? ifModifiedSinceElement = ToOne<ObjectBoxElement>();
  String? ifMatch;
  ToOne<ObjectBoxElement>? ifMatchElement = ToOne<ObjectBoxElement>();
  String? ifNoneExist;
  ToOne<ObjectBoxElement>? ifNoneExistElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxBundleResponse {
  ObjectBoxBundleResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String? location;
  ToOne<ObjectBoxElement>? locationElement = ToOne<ObjectBoxElement>();
  String? etag;
  ToOne<ObjectBoxElement>? etagElement = ToOne<ObjectBoxElement>();
  String? lastModified;
  ToOne<ObjectBoxElement>? lastModifiedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxResource>? outcome = ToOne<ObjectBoxResource>();
}
