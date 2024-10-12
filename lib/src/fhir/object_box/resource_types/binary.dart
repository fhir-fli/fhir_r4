// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxBinary {
  ObjectBoxBinary({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    required this.contentType,
    this.contentTypeElement,
    this.securityContext,
    this.data,
    this.dataElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  String contentType;
  ToOne<ObjectBoxElement>? contentTypeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? securityContext = ToOne<ObjectBoxReference>();
  String? data;
  ToOne<ObjectBoxElement>? dataElement = ToOne<ObjectBoxElement>();
}
