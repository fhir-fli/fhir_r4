import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Contributor {
  Contributor({
    this.id,
    this.extension_,
    required this.type,
    required this.name,
    this.contact,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  String name;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
}
