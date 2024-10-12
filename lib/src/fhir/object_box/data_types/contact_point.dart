// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxContactPoint {
  ObjectBoxContactPoint({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement>? systemElement = ToOne<ObjectBoxElement>();
  String? value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  String? use;
  ToOne<ObjectBoxElement>? useElement = ToOne<ObjectBoxElement>();
  int? rank;
  ToOne<ObjectBoxElement>? rankElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
}
