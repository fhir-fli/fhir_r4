// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxContactDetail {
  ObjectBoxContactDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    this.name,
    ObjectBoxElement? nameElement,
    List<ObjectBoxContactPoint>? telecom,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.nameElement.target = nameElement;
    this.telecom.addAll(telecom ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
}
