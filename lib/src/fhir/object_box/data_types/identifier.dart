// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxIdentifier {
  ObjectBoxIdentifier({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    this.use,
    ObjectBoxElement? useElement,
    ObjectBoxCodeableConcept? type,
    this.system,
    ObjectBoxElement? systemElement,
    this.value,
    ObjectBoxElement? valueElement,
    ObjectBoxPeriod? period,
    ObjectBoxReference? assigner,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.useElement.target = useElement;
    this.type.target = type;
    this.systemElement.target = systemElement;
    this.valueElement.target = valueElement;
    this.period.target = period;
    this.assigner.target = assigner;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  String? value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> assigner = ToOne<ObjectBoxReference>();
}
