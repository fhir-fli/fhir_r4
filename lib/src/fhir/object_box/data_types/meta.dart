// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirMeta {
  ObjectBoxFhirMeta({
    this.id,
    this.extension_,
    this.versionId,
    this.versionIdElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.source,
    this.sourceElement,
    this.profile,
    this.profileElement,
    this.security,
    this.tag,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? versionId;
  ToOne<ObjectBoxElement>? versionIdElement = ToOne<ObjectBoxElement>();
  String? lastUpdated;
  ToOne<ObjectBoxElement>? lastUpdatedElement = ToOne<ObjectBoxElement>();
  String? source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
  List<String>? profile;
  ToMany<ObjectBoxElement>? profileElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCoding>? security = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? tag = ToMany<ObjectBoxCoding>();
}
