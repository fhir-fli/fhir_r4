import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CodeableReference {
  CodeableReference({
    this.id,
    this.extension_,
    this.concept,
    this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? concept = ToOne<CodeableConcept>();
  ToOne<Reference>? reference = ToOne<Reference>();
}
