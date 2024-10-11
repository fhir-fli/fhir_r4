import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Range {
  Range({
    this.id,
    this.extension_,
    this.low,
    this.high,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Quantity>? low = ToOne<Quantity>();
  ToOne<Quantity>? high = ToOne<Quantity>();
}
