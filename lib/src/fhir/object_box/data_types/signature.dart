// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSignature {
  ObjectBoxSignature({
    this.id,
    this.extension_,
    required this.type,
    required this.when,
    this.whenElement,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.targetFormatElement,
    this.sigFormat,
    this.sigFormatElement,
    this.data,
    this.dataElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCoding> type = ToMany<ObjectBoxCoding>();
  String when;
  ToOne<ObjectBoxElement>? whenElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? onBehalfOf = ToOne<ObjectBoxReference>();
  String? targetFormat;
  ToOne<ObjectBoxElement>? targetFormatElement = ToOne<ObjectBoxElement>();
  String? sigFormat;
  ToOne<ObjectBoxElement>? sigFormatElement = ToOne<ObjectBoxElement>();
  String? data;
  ToOne<ObjectBoxElement>? dataElement = ToOne<ObjectBoxElement>();
}
