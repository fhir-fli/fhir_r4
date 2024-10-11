import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Annotation {
  Annotation({
    this.id,
    this.extension_,
    this.authorReference,
    this.authorString,
    this.time,
    required this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Reference>? authorReference = ToOne<Reference>();
  String? authorString;
  String? time;
  String text;
}
