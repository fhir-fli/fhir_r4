import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Annotation {
  Annotation({
    this.id,
    this.extension_,
    this.authorReference,
    this.authorString,
    this.authorStringElement,
    this.time,
    this.timeElement,
    required this.text,
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Reference>? authorReference = ToOne<Reference>();
  String? authorString;
  ToOne<Element>? authorStringElement = ToOne<Element>();
  String? time;
  ToOne<Element>? timeElement = ToOne<Element>();
  String text;
  ToOne<Element>? textElement = ToOne<Element>();
}
