import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Signature {
  Signature({
    this.id,
    this.extension_,
    required this.type,
    required this.when,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.sigFormat,
    this.data,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<Coding> type = ToMany<Coding>();
  String when;
  ToOne<Reference> who = ToOne<Reference>();
  ToOne<Reference>? onBehalfOf = ToOne<Reference>();
  String? targetFormat;
  String? sigFormat;
  String? data;
}
