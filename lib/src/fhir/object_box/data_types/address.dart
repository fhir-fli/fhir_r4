import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Address {
  Address({
    this.id,
    this.extension_,
    this.use,
    this.useElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.line,
    this.lineElement,
    this.city,
    this.cityElement,
    this.district,
    this.districtElement,
    this.state,
    this.stateElement,
    this.postalCode,
    this.postalCodeElement,
    this.country,
    this.countryElement,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? use;
  ToOne<Element>? useElement = ToOne<Element>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  List<String>? line;
  ToMany<Element>? lineElement = ToMany<Element>();
  String? city;
  ToOne<Element>? cityElement = ToOne<Element>();
  String? district;
  ToOne<Element>? districtElement = ToOne<Element>();
  String? state;
  ToOne<Element>? stateElement = ToOne<Element>();
  String? postalCode;
  ToOne<Element>? postalCodeElement = ToOne<Element>();
  String? country;
  ToOne<Element>? countryElement = ToOne<Element>();
  ToOne<Period>? period = ToOne<Period>();
}
