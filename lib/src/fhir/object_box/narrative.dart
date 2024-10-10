import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Narrative {
  Narrative({
    this.id,
    this.extension_,
    required this.status,
    required this.div,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String status;
  String div;
}
