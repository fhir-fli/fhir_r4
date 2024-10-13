// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxContactPoint {
  ObjectBoxContactPoint({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.system,
    ObjectBoxElement? systemElement,
    this.value,
    ObjectBoxElement? valueElement,
    this.use,
    ObjectBoxElement? useElement,
    this.rank,
    ObjectBoxElement? rankElement,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.systemElement.target = systemElement;
    this.valueElement.target = valueElement;
    this.useElement.target = useElement;
    this.rankElement.target = rankElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  String? value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  String? use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  int? rank;
  ToOne<ObjectBoxElement> rankElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
