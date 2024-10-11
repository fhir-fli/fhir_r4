import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Money {
  Money({
    this.id,
    this.extension_,
    this.value,
    this.currency,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  double? value;
  String? currency;
}
