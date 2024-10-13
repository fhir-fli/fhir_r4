// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxQuantity {
  ObjectBoxQuantity({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.value,
    ObjectBoxElement? valueElement,
    this.comparator,
    ObjectBoxElement? comparatorElement,
    this.unit,
    ObjectBoxElement? unitElement,
    this.system,
    ObjectBoxElement? systemElement,
    this.code,
    ObjectBoxElement? codeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.valueElement.target = valueElement;
    this.comparatorElement.target = comparatorElement;
    this.unitElement.target = unitElement;
    this.systemElement.target = systemElement;
    this.codeElement.target = codeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  double? value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  String? comparator;
  ToOne<ObjectBoxElement> comparatorElement = ToOne<ObjectBoxElement>();
  String? unit;
  ToOne<ObjectBoxElement> unitElement = ToOne<ObjectBoxElement>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
}
