import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Identifier {
  Identifier({
    this.id,
    this.extension_,
    this.use,
    this.type,
    this.system,
    this.value,
    this.period,
    this.assigner,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? use;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? system;
  String? value;
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? assigner = ToOne<Reference>();
}
