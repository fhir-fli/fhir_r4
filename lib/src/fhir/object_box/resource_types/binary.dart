import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Binary extends Resource {
  Binary({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    required this.contentType,
    this.securityContext,
    this.data,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  String contentType;
  ToOne<Reference>? securityContext = ToOne<Reference>();
  String? data;
}
