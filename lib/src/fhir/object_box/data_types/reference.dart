// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxReference {
  ObjectBoxReference({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.reference,
    ObjectBoxElement? referenceElement,
    this.type,
    ObjectBoxElement? typeElement,
    ObjectBoxIdentifier? identifier,
    this.display,
    ObjectBoxElement? displayElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.referenceElement.target = referenceElement;
    this.typeElement.target = typeElement;
    this.identifier.target = identifier;
    this.displayElement.target = displayElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? reference;
  ToOne<ObjectBoxElement> referenceElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
}
