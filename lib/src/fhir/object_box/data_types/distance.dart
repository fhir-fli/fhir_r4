import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Distance {
  Distance({
    this.id,
    this.extension_,
    this.value,
    this.valueElement,
    this.comparator,
    this.comparatorElement,
    this.unit,
    this.unitElement,
    this.system,
    this.systemElement,
    this.code,
    this.codeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  double? value;
  ToOne<Element>? valueElement = ToOne<Element>();
  String? comparator;
  ToOne<Element>? comparatorElement = ToOne<Element>();
  String? unit;
  ToOne<Element>? unitElement = ToOne<Element>();
  String? system;
  ToOne<Element>? systemElement = ToOne<Element>();
  String? code;
  ToOne<Element>? codeElement = ToOne<Element>();
}
