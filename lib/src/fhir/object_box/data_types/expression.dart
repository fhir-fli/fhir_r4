import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirExpression {
  FhirExpression({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String language;
  ToOne<Element>? languageElement = ToOne<Element>();
  String? expression;
  ToOne<Element>? expressionElement = ToOne<Element>();
  String? reference;
  ToOne<Element>? referenceElement = ToOne<Element>();
}
