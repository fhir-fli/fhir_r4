import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Reference {
  Reference({
    this.id,
    this.extension_,
    this.reference,
    this.referenceElement,
    this.type,
    this.typeElement,
    this.identifier,
    this.display,
    this.displayElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? reference;
  ToOne<Element>? referenceElement = ToOne<Element>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? display;
  ToOne<Element>? displayElement = ToOne<Element>();
}
