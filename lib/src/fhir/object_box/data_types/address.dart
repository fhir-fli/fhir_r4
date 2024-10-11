import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Address {
  Address({
    this.id,
    this.extension_,
    this.use,
    this.type,
    this.text,
    this.line,
    this.city,
    this.district,
    this.state,
    this.postalCode,
    this.country,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? use;
  String? type;
  String? text;
  List<String>? line;
  String? city;
  String? district;
  String? state;
  String? postalCode;
  String? country;
  ToOne<Period>? period = ToOne<Period>();
}
