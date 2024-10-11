import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Distance {
  Distance({
    this.id,
    this.extension_,
    this.value,
    this.comparator,
    this.unit,
    this.system,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  double? value;
  String? comparator;
  String? unit;
  String? system;
  String? code;
}
