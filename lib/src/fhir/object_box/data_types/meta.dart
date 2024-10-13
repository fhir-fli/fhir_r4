// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirMeta {
  ObjectBoxFhirMeta({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.versionId,
    ObjectBoxElement? versionIdElement,
    this.lastUpdated,
    ObjectBoxElement? lastUpdatedElement,
    this.source,
    ObjectBoxElement? sourceElement,
    this.profile,
    List<ObjectBoxElement>? profileElement,
    List<ObjectBoxCoding>? security,
    List<ObjectBoxCoding>? tag,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.versionIdElement.target = versionIdElement;
    this.lastUpdatedElement.target = lastUpdatedElement;
    this.sourceElement.target = sourceElement;
    this.profileElement.addAll(profileElement ?? []);
    this.security.addAll(security ?? []);
    this.tag.addAll(tag ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? versionId;
  ToOne<ObjectBoxElement> versionIdElement = ToOne<ObjectBoxElement>();
  String? lastUpdated;
  ToOne<ObjectBoxElement> lastUpdatedElement = ToOne<ObjectBoxElement>();
  String? source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
  List<String>? profile;
  ToMany<ObjectBoxElement> profileElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCoding> security = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> tag = ToMany<ObjectBoxCoding>();
}
