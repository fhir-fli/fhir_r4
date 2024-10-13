// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMarketingStatus {
  ObjectBoxMarketingStatus({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? country,
    ObjectBoxCodeableConcept? jurisdiction,
    ObjectBoxCodeableConcept? status,
    ObjectBoxPeriod? dateRange,
    this.restoreDate,
    ObjectBoxElement? restoreDateElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.country.target = country;
    this.jurisdiction.target = jurisdiction;
    this.status.target = status;
    this.dateRange.target = dateRange;
    this.restoreDateElement.target = restoreDateElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> country = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> jurisdiction =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> dateRange = ToOne<ObjectBoxPeriod>();
  String? restoreDate;
  ToOne<ObjectBoxElement> restoreDateElement = ToOne<ObjectBoxElement>();
}
