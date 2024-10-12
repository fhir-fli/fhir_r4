// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirExpression {
  ObjectBoxFhirExpression({
    this.id,
    this.extension_,
    this.description,
    this.descriptionElement,
    this.name,
    this.nameElement,
    required this.language,
    this.languageElement,
    this.expression,
    this.expressionElement,
    this.reference,
    this.referenceElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
  String? reference;
  ToOne<ObjectBoxElement>? referenceElement = ToOne<ObjectBoxElement>();
}
