import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Element {
  Element({
    this.id,
    this.extension_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
}
