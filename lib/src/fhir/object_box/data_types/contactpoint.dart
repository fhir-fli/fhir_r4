import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ContactPoint {
  ContactPoint({
    this.id,
    this.extension_,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.use,
    this.useElement,
    this.rank,
    this.rankElement,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? system;
  ToOne<Element>? systemElement = ToOne<Element>();
  String? value;
  ToOne<Element>? valueElement = ToOne<Element>();
  String? use;
  ToOne<Element>? useElement = ToOne<Element>();
  int? rank;
  ToOne<Element>? rankElement = ToOne<Element>();
  ToOne<Period>? period = ToOne<Period>();
}
