import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Period {
  Period({
    this.id,
    this.extension_,
    this.start,
    this.end,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? start;
  String? end;
}
