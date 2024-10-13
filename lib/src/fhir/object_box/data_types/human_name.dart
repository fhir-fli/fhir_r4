// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxHumanName {
  ObjectBoxHumanName({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    this.use,
    ObjectBoxElement? useElement,
    this.text,
    ObjectBoxElement? textElement,
    this.family,
    ObjectBoxElement? familyElement,
    this.given,
    List<ObjectBoxElement>? givenElement,
    this.prefix,
    List<ObjectBoxElement>? prefixElement,
    this.suffix,
    List<ObjectBoxElement>? suffixElement,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.useElement.target = useElement;
    this.textElement.target = textElement;
    this.familyElement.target = familyElement;
    this.givenElement.addAll(givenElement ?? []);
    this.prefixElement.addAll(prefixElement ?? []);
    this.suffixElement.addAll(suffixElement ?? []);
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  String? family;
  ToOne<ObjectBoxElement> familyElement = ToOne<ObjectBoxElement>();
  List<String>? given;
  ToMany<ObjectBoxElement> givenElement = ToMany<ObjectBoxElement>();
  List<String>? prefix;
  ToMany<ObjectBoxElement> prefixElement = ToMany<ObjectBoxElement>();
  List<String>? suffix;
  ToMany<ObjectBoxElement> suffixElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
