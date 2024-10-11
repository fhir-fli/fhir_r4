import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Ratio {
  Ratio({
    this.id,
    this.extension_,
    this.numerator,
    this.denominator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Quantity>? numerator = ToOne<Quantity>();
  ToOne<Quantity>? denominator = ToOne<Quantity>();
}
