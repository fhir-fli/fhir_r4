// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPeriod {
  ObjectBoxPeriod({
    this.id,
    this.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? start;
  ToOne<ObjectBoxElement>? startElement = ToOne<ObjectBoxElement>();
  String? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
}
