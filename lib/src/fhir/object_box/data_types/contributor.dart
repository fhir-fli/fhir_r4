import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Contributor {
  Contributor({
    this.id,
    this.extension_,
    required this.type,
    this.typeElement,
    required this.name,
    this.nameElement,
    this.contact,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
}
