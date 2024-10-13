// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPeriod {
  ObjectBoxPeriod({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.startElement.target = startElement;
    this.endElement.target = endElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  String? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
}
