// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDosage {
  ObjectBoxDosage({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.sequence,
    ObjectBoxElement? sequenceElement,
    this.text,
    ObjectBoxElement? textElement,
    List<ObjectBoxCodeableConcept>? additionalInstruction,
    this.patientInstruction,
    ObjectBoxElement? patientInstructionElement,
    ObjectBoxTiming? timing,
    this.asNeededBoolean,
    ObjectBoxElement? asNeededBooleanElement,
    ObjectBoxCodeableConcept? asNeededCodeableConcept,
    ObjectBoxCodeableConcept? site,
    ObjectBoxCodeableConcept? route,
    ObjectBoxCodeableConcept? method,
    List<ObjectBoxDosageDoseAndRate>? doseAndRate,
    ObjectBoxRatio? maxDosePerPeriod,
    ObjectBoxQuantity? maxDosePerAdministration,
    ObjectBoxQuantity? maxDosePerLifetime,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.textElement.target = textElement;
    this.additionalInstruction.addAll(additionalInstruction ?? []);
    this.patientInstructionElement.target = patientInstructionElement;
    this.timing.target = timing;
    this.asNeededBooleanElement.target = asNeededBooleanElement;
    this.asNeededCodeableConcept.target = asNeededCodeableConcept;
    this.site.target = site;
    this.route.target = route;
    this.method.target = method;
    this.doseAndRate.addAll(doseAndRate ?? []);
    this.maxDosePerPeriod.target = maxDosePerPeriod;
    this.maxDosePerAdministration.target = maxDosePerAdministration;
    this.maxDosePerLifetime.target = maxDosePerLifetime;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> additionalInstruction =
      ToMany<ObjectBoxCodeableConcept>();
  String? patientInstruction;
  ToOne<ObjectBoxElement> patientInstructionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming> timing = ToOne<ObjectBoxTiming>();
  bool? asNeededBoolean;
  ToOne<ObjectBoxElement> asNeededBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> asNeededCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> site = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> route = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDosageDoseAndRate> doseAndRate =
      ToMany<ObjectBoxDosageDoseAndRate>();
  ToOne<ObjectBoxRatio> maxDosePerPeriod = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxQuantity> maxDosePerAdministration =
      ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> maxDosePerLifetime = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxDosageDoseAndRate {
  ObjectBoxDosageDoseAndRate({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxCodeableConcept? type,
    ObjectBoxRange? doseRange,
    ObjectBoxQuantity? doseQuantity,
    ObjectBoxRatio? rateRatio,
    ObjectBoxRange? rateRange,
    ObjectBoxQuantity? rateQuantity,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.type.target = type;
    this.doseRange.target = doseRange;
    this.doseQuantity.target = doseQuantity;
    this.rateRatio.target = rateRatio;
    this.rateRange.target = rateRange;
    this.rateQuantity.target = rateQuantity;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRange> doseRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxQuantity> doseQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio> rateRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRange> rateRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxQuantity> rateQuantity = ToOne<ObjectBoxQuantity>();
}
