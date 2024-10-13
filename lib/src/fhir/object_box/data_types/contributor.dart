// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxContributor {
  ObjectBoxContributor({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.name,
    ObjectBoxElement? nameElement,
    List<ObjectBoxContactDetail>? contact,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.typeElement.target = typeElement;
    this.nameElement.target = nameElement;
    this.contact.addAll(contact ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
}
