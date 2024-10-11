import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ContactDetail {
  ContactDetail({
    this.id,
    this.extension_,
    this.name,
    this.nameElement,
    this.telecom,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
}
