import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class RatioRange {
  RatioRange({
    this.id,
    this.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Quantity>? lowNumerator = ToOne<Quantity>();
  ToOne<Quantity>? highNumerator = ToOne<Quantity>();
  ToOne<Quantity>? denominator = ToOne<Quantity>();
}
