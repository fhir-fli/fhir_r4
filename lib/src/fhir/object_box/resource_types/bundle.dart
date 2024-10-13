// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxBundle {
  ObjectBoxBundle({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxIdentifier? identifier,
    required this.type,
    ObjectBoxElement? typeElement,
    this.timestamp,
    ObjectBoxElement? timestampElement,
    this.total,
    ObjectBoxElement? totalElement,
    List<ObjectBoxBundleLink>? link,
    List<ObjectBoxBundleEntry>? entry,
    ObjectBoxSignature? signature,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.identifier.target = identifier;
    this.typeElement.target = typeElement;
    this.timestampElement.target = timestampElement;
    this.totalElement.target = totalElement;
    this.link.addAll(link ?? []);
    this.entry.addAll(entry ?? []);
    this.signature.target = signature;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? timestamp;
  ToOne<ObjectBoxElement> timestampElement = ToOne<ObjectBoxElement>();
  int? total;
  ToOne<ObjectBoxElement> totalElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxBundleLink> link = ToMany<ObjectBoxBundleLink>();
  ToMany<ObjectBoxBundleEntry> entry = ToMany<ObjectBoxBundleEntry>();
  ToOne<ObjectBoxSignature> signature = ToOne<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxBundleLink {
  ObjectBoxBundleLink({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.relation,
    ObjectBoxElement? relationElement,
    required this.url,
    ObjectBoxElement? urlElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.relationElement.target = relationElement;
    this.urlElement.target = urlElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String relation;
  ToOne<ObjectBoxElement> relationElement = ToOne<ObjectBoxElement>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxBundleEntry {
  ObjectBoxBundleEntry({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxBundleLink>? link,
    this.fullUrl,
    ObjectBoxElement? fullUrlElement,
    ObjectBoxResource? resource,
    ObjectBoxBundleSearch? search,
    ObjectBoxBundleRequest? request,
    ObjectBoxBundleResponse? response,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.link.addAll(link ?? []);
    this.fullUrlElement.target = fullUrlElement;
    this.resource.target = resource;
    this.search.target = search;
    this.request.target = request;
    this.response.target = response;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxBundleLink> link = ToMany<ObjectBoxBundleLink>();
  String? fullUrl;
  ToOne<ObjectBoxElement> fullUrlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxResource> resource = ToOne<ObjectBoxResource>();
  ToOne<ObjectBoxBundleSearch> search = ToOne<ObjectBoxBundleSearch>();
  ToOne<ObjectBoxBundleRequest> request = ToOne<ObjectBoxBundleRequest>();
  ToOne<ObjectBoxBundleResponse> response = ToOne<ObjectBoxBundleResponse>();
}

@Entity()
class ObjectBoxBundleSearch {
  ObjectBoxBundleSearch({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.mode,
    ObjectBoxElement? modeElement,
    this.score,
    ObjectBoxElement? scoreElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modeElement.target = modeElement;
    this.scoreElement.target = scoreElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  double? score;
  ToOne<ObjectBoxElement> scoreElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxBundleRequest {
  ObjectBoxBundleRequest({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.method,
    ObjectBoxElement? methodElement,
    required this.url,
    ObjectBoxElement? urlElement,
    this.ifNoneMatch,
    ObjectBoxElement? ifNoneMatchElement,
    this.ifModifiedSince,
    ObjectBoxElement? ifModifiedSinceElement,
    this.ifMatch,
    ObjectBoxElement? ifMatchElement,
    this.ifNoneExist,
    ObjectBoxElement? ifNoneExistElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.methodElement.target = methodElement;
    this.urlElement.target = urlElement;
    this.ifNoneMatchElement.target = ifNoneMatchElement;
    this.ifModifiedSinceElement.target = ifModifiedSinceElement;
    this.ifMatchElement.target = ifMatchElement;
    this.ifNoneExistElement.target = ifNoneExistElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String method;
  ToOne<ObjectBoxElement> methodElement = ToOne<ObjectBoxElement>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? ifNoneMatch;
  ToOne<ObjectBoxElement> ifNoneMatchElement = ToOne<ObjectBoxElement>();
  String? ifModifiedSince;
  ToOne<ObjectBoxElement> ifModifiedSinceElement = ToOne<ObjectBoxElement>();
  String? ifMatch;
  ToOne<ObjectBoxElement> ifMatchElement = ToOne<ObjectBoxElement>();
  String? ifNoneExist;
  ToOne<ObjectBoxElement> ifNoneExistElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxBundleResponse {
  ObjectBoxBundleResponse({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.status,
    ObjectBoxElement? statusElement,
    this.location,
    ObjectBoxElement? locationElement,
    this.etag,
    ObjectBoxElement? etagElement,
    this.lastModified,
    ObjectBoxElement? lastModifiedElement,
    ObjectBoxResource? outcome,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.statusElement.target = statusElement;
    this.locationElement.target = locationElement;
    this.etagElement.target = etagElement;
    this.lastModifiedElement.target = lastModifiedElement;
    this.outcome.target = outcome;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String? location;
  ToOne<ObjectBoxElement> locationElement = ToOne<ObjectBoxElement>();
  String? etag;
  ToOne<ObjectBoxElement> etagElement = ToOne<ObjectBoxElement>();
  String? lastModified;
  ToOne<ObjectBoxElement> lastModifiedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxResource> outcome = ToOne<ObjectBoxResource>();
}
