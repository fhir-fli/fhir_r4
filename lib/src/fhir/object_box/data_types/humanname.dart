import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class HumanName {
  HumanName({
    this.id,
    this.extension_,
    this.use,
    this.text,
    this.family,
    this.given,
    this.prefix,
    this.suffix,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? use;
  String? text;
  String? family;
  List<String>? given;
  List<String>? prefix;
  List<String>? suffix;
  ToOne<Period>? period = ToOne<Period>();
}
