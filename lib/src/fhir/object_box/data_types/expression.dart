// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirExpression {
  ObjectBoxFhirExpression({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.name,
    ObjectBoxElement? nameElement,
    required this.language,
    ObjectBoxElement? languageElement,
    this.expression,
    ObjectBoxElement? expressionElement,
    this.reference,
    ObjectBoxElement? referenceElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.descriptionElement.target = descriptionElement;
    this.nameElement.target = nameElement;
    this.languageElement.target = languageElement;
    this.expressionElement.target = expressionElement;
    this.referenceElement.target = referenceElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  String? reference;
  ToOne<ObjectBoxElement> referenceElement = ToOne<ObjectBoxElement>();
}
