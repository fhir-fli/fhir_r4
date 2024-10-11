import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Reference {
  Reference({
    this.id,
    this.extension_,
    this.reference,
    this.type,
    this.identifier,
    this.display,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? reference;
  String? type;
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? display;
}
