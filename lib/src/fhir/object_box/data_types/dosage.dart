// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDosage {
  ObjectBoxDosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.text,
    this.textElement,
    this.additionalInstruction,
    this.patientInstruction,
    this.patientInstructionElement,
    this.timing,
    this.asNeededBoolean,
    this.asNeededBooleanElement,
    this.asNeededCodeableConcept,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? additionalInstruction =
      ToMany<ObjectBoxCodeableConcept>();
  String? patientInstruction;
  ToOne<ObjectBoxElement>? patientInstructionElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming>? timing = ToOne<ObjectBoxTiming>();
  bool? asNeededBoolean;
  ToOne<ObjectBoxElement>? asNeededBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? asNeededCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? site = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? route = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDosageDoseAndRate>? doseAndRate =
      ToMany<ObjectBoxDosageDoseAndRate>();
  ToOne<ObjectBoxRatio>? maxDosePerPeriod = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxQuantity>? maxDosePerAdministration =
      ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? maxDosePerLifetime = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxDosageDoseAndRate {
  ObjectBoxDosageDoseAndRate({
    this.id,
    this.extension_,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRange>? doseRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxQuantity>? doseQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio>? rateRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRange>? rateRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxQuantity>? rateQuantity = ToOne<ObjectBoxQuantity>();
}
