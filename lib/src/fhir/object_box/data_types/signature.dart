// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSignature {
  ObjectBoxSignature({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxCoding>? type,
    required this.when,
    ObjectBoxElement? whenElement,
    ObjectBoxReference? who,
    ObjectBoxReference? onBehalfOf,
    this.targetFormat,
    ObjectBoxElement? targetFormatElement,
    this.sigFormat,
    ObjectBoxElement? sigFormatElement,
    this.data,
    ObjectBoxElement? dataElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.type.addAll(type ?? []);
    this.whenElement.target = whenElement;
    this.who.target = who;
    this.onBehalfOf.target = onBehalfOf;
    this.targetFormatElement.target = targetFormatElement;
    this.sigFormatElement.target = sigFormatElement;
    this.dataElement.target = dataElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCoding> type = ToMany<ObjectBoxCoding>();
  String when;
  ToOne<ObjectBoxElement> whenElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> onBehalfOf = ToOne<ObjectBoxReference>();
  String? targetFormat;
  ToOne<ObjectBoxElement> targetFormatElement = ToOne<ObjectBoxElement>();
  String? sigFormat;
  ToOne<ObjectBoxElement> sigFormatElement = ToOne<ObjectBoxElement>();
  String? data;
  ToOne<ObjectBoxElement> dataElement = ToOne<ObjectBoxElement>();
}
