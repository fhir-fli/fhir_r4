// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxBinary {
  ObjectBoxBinary({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    required this.contentType,
    ObjectBoxElement? contentTypeElement,
    ObjectBoxReference? securityContext,
    this.data,
    ObjectBoxElement? dataElement,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.contentTypeElement.target = contentTypeElement;
    this.securityContext.target = securityContext;
    this.dataElement.target = dataElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  String contentType;
  ToOne<ObjectBoxElement> contentTypeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> securityContext = ToOne<ObjectBoxReference>();
  String? data;
  ToOne<ObjectBoxElement> dataElement = ToOne<ObjectBoxElement>();
}
