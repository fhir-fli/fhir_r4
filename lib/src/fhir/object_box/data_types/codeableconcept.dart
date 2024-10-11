import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CodeableConcept {
  CodeableConcept({
    this.id,
    this.extension_,
    this.coding,
    this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<Coding>? coding = ToMany<Coding>();
  String? text;
}
