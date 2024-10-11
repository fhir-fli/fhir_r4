import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirMeta {
  FhirMeta({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? versionId;
  ToOne<Element>? versionIdElement = ToOne<Element>();
  String? lastUpdated;
  ToOne<Element>? lastUpdatedElement = ToOne<Element>();
  String? source;
  ToOne<Element>? sourceElement = ToOne<Element>();
  List<String>? profile;
  ToMany<Element>? profileElement = ToMany<Element>();
  ToMany<Coding>? security = ToMany<Coding>();
  ToMany<Coding>? tag = ToMany<Coding>();
}
