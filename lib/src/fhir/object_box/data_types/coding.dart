// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoding {
  ObjectBoxCoding({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.system,
    ObjectBoxElement? systemElement,
    this.version,
    ObjectBoxElement? versionElement,
    this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    this.userSelected,
    ObjectBoxElement? userSelectedElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.systemElement.target = systemElement;
    this.versionElement.target = versionElement;
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.userSelectedElement.target = userSelectedElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  bool? userSelected;
  ToOne<ObjectBoxElement> userSelectedElement = ToOne<ObjectBoxElement>();
}
