// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAddress {
  ObjectBoxAddress({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    this.use,
    ObjectBoxElement? useElement,
    this.type,
    ObjectBoxElement? typeElement,
    this.text,
    ObjectBoxElement? textElement,
    this.line,
    List<ObjectBoxElement>? lineElement,
    this.city,
    ObjectBoxElement? cityElement,
    this.district,
    ObjectBoxElement? districtElement,
    this.state,
    ObjectBoxElement? stateElement,
    this.postalCode,
    ObjectBoxElement? postalCodeElement,
    this.country,
    ObjectBoxElement? countryElement,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.useElement.target = useElement;
    this.typeElement.target = typeElement;
    this.textElement.target = textElement;
    this.lineElement.addAll(lineElement ?? []);
    this.cityElement.target = cityElement;
    this.districtElement.target = districtElement;
    this.stateElement.target = stateElement;
    this.postalCodeElement.target = postalCodeElement;
    this.countryElement.target = countryElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  List<String>? line;
  ToMany<ObjectBoxElement> lineElement = ToMany<ObjectBoxElement>();
  String? city;
  ToOne<ObjectBoxElement> cityElement = ToOne<ObjectBoxElement>();
  String? district;
  ToOne<ObjectBoxElement> districtElement = ToOne<ObjectBoxElement>();
  String? state;
  ToOne<ObjectBoxElement> stateElement = ToOne<ObjectBoxElement>();
  String? postalCode;
  ToOne<ObjectBoxElement> postalCodeElement = ToOne<ObjectBoxElement>();
  String? country;
  ToOne<ObjectBoxElement> countryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
