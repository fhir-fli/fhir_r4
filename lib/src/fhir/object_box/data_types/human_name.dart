// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxHumanName {
  ObjectBoxHumanName({
    this.id,
    this.extension_,
    this.use,
    this.useElement,
    this.text,
    this.textElement,
    this.family,
    this.familyElement,
    this.given,
    this.givenElement,
    this.prefix,
    this.prefixElement,
    this.suffix,
    this.suffixElement,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? use;
  ToOne<ObjectBoxElement>? useElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  String? family;
  ToOne<ObjectBoxElement>? familyElement = ToOne<ObjectBoxElement>();
  List<String>? given;
  ToMany<ObjectBoxElement>? givenElement = ToMany<ObjectBoxElement>();
  List<String>? prefix;
  ToMany<ObjectBoxElement>? prefixElement = ToMany<ObjectBoxElement>();
  List<String>? suffix;
  ToMany<ObjectBoxElement>? suffixElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
}
