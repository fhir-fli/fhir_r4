import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class FhirMeta {
  FhirMeta({
    this.id,
    this.extension_,
    this.versionId,
    this.lastUpdated,
    this.source,
    this.profile,
    this.security,
    this.tag,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? versionId;
  String? lastUpdated;
  String? source;
  List<String>? profile;
  ToMany<Coding>? security = ToMany<Coding>();
  ToMany<Coding>? tag = ToMany<Coding>();
}
