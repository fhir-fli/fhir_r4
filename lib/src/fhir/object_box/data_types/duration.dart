// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirDuration {
  ObjectBoxFhirDuration({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  double? value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  String? comparator;
  ToOne<ObjectBoxElement>? comparatorElement = ToOne<ObjectBoxElement>();
  String? unit;
  ToOne<ObjectBoxElement>? unitElement = ToOne<ObjectBoxElement>();
  String? system;
  ToOne<ObjectBoxElement>? systemElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
}
