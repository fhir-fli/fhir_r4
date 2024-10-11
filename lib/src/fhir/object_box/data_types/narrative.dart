import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Narrative {
  Narrative({
    this.id,
    this.extension_,
    required this.status,
    this.statusElement,
    required this.div,
    this.divElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  String div;
  ToOne<Element>? divElement = ToOne<Element>();
}
