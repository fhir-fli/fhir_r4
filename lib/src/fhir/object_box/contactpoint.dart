import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ContactPoint {
  ContactPoint({
    this.id,
    this.extension_,
    this.system,
    this.value,
    this.use,
    this.rank,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? system;
  String? value;
  String? use;
  int? rank;
  ToOne<Period>? period = ToOne<Period>();
}
