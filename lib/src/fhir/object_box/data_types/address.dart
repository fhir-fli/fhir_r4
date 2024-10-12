// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAddress {
  ObjectBoxAddress({
    this.id,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  String? use;
  ToOne<ObjectBoxElement>? useElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  List<String>? line;
  ToMany<ObjectBoxElement>? lineElement = ToMany<ObjectBoxElement>();
  String? city;
  ToOne<ObjectBoxElement>? cityElement = ToOne<ObjectBoxElement>();
  String? district;
  ToOne<ObjectBoxElement>? districtElement = ToOne<ObjectBoxElement>();
  String? state;
  ToOne<ObjectBoxElement>? stateElement = ToOne<ObjectBoxElement>();
  String? postalCode;
  ToOne<ObjectBoxElement>? postalCodeElement = ToOne<ObjectBoxElement>();
  String? country;
  ToOne<ObjectBoxElement>? countryElement = ToOne<ObjectBoxElement>();
}
