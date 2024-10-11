import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class UsageContext {
  UsageContext({
    this.id,
    this.extension_,
    required this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Coding> code = ToOne<Coding>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Range>? valueRange = ToOne<Range>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
}
