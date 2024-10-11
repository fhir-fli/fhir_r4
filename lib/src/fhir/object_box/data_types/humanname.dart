import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class HumanName {
  HumanName({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? use;
  ToOne<Element>? useElement = ToOne<Element>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  String? family;
  ToOne<Element>? familyElement = ToOne<Element>();
  List<String>? given;
  ToMany<Element>? givenElement = ToMany<Element>();
  List<String>? prefix;
  ToMany<Element>? prefixElement = ToMany<Element>();
  List<String>? suffix;
  ToMany<Element>? suffixElement = ToMany<Element>();
  ToOne<Period>? period = ToOne<Period>();
}
