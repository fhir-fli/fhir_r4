import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Identifier {
  Identifier({
    this.id,
    this.extension_,
    this.use,
    this.useElement,
    this.type,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.period,
    this.assigner,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? use;
  ToOne<Element>? useElement = ToOne<Element>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? system;
  ToOne<Element>? systemElement = ToOne<Element>();
  String? value;
  ToOne<Element>? valueElement = ToOne<Element>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? assigner = ToOne<Reference>();
}
