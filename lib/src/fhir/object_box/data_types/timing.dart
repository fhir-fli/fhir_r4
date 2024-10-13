// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTiming {
  ObjectBoxTiming({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.event,
    List<ObjectBoxElement>? eventElement,
    ObjectBoxTimingRepeat? repeat,
    ObjectBoxCodeableConcept? code,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.eventElement.addAll(eventElement ?? []);
    this.repeat.target = repeat;
    this.code.target = code;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? event;
  ToMany<ObjectBoxElement> eventElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxTimingRepeat> repeat = ToOne<ObjectBoxTimingRepeat>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxTimingRepeat {
  ObjectBoxTimingRepeat({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxFhirDuration? boundsDuration,
    ObjectBoxRange? boundsRange,
    ObjectBoxPeriod? boundsPeriod,
    this.count,
    ObjectBoxElement? countElement,
    this.countMax,
    ObjectBoxElement? countMaxElement,
    this.duration,
    ObjectBoxElement? durationElement,
    this.durationMax,
    ObjectBoxElement? durationMaxElement,
    this.durationUnit,
    ObjectBoxElement? durationUnitElement,
    this.frequency,
    ObjectBoxElement? frequencyElement,
    this.frequencyMax,
    ObjectBoxElement? frequencyMaxElement,
    this.period,
    ObjectBoxElement? periodElement,
    this.periodMax,
    ObjectBoxElement? periodMaxElement,
    this.periodUnit,
    ObjectBoxElement? periodUnitElement,
    this.dayOfWeek,
    List<ObjectBoxElement>? dayOfWeekElement,
    this.timeOfDay,
    List<ObjectBoxElement>? timeOfDayElement,
    this.when,
    List<ObjectBoxElement>? whenElement,
    this.offset,
    ObjectBoxElement? offsetElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.boundsDuration.target = boundsDuration;
    this.boundsRange.target = boundsRange;
    this.boundsPeriod.target = boundsPeriod;
    this.countElement.target = countElement;
    this.countMaxElement.target = countMaxElement;
    this.durationElement.target = durationElement;
    this.durationMaxElement.target = durationMaxElement;
    this.durationUnitElement.target = durationUnitElement;
    this.frequencyElement.target = frequencyElement;
    this.frequencyMaxElement.target = frequencyMaxElement;
    this.periodElement.target = periodElement;
    this.periodMaxElement.target = periodMaxElement;
    this.periodUnitElement.target = periodUnitElement;
    this.dayOfWeekElement.addAll(dayOfWeekElement ?? []);
    this.timeOfDayElement.addAll(timeOfDayElement ?? []);
    this.whenElement.addAll(whenElement ?? []);
    this.offsetElement.target = offsetElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxFhirDuration> boundsDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange> boundsRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxPeriod> boundsPeriod = ToOne<ObjectBoxPeriod>();
  int? count;
  ToOne<ObjectBoxElement> countElement = ToOne<ObjectBoxElement>();
  int? countMax;
  ToOne<ObjectBoxElement> countMaxElement = ToOne<ObjectBoxElement>();
  double? duration;
  ToOne<ObjectBoxElement> durationElement = ToOne<ObjectBoxElement>();
  double? durationMax;
  ToOne<ObjectBoxElement> durationMaxElement = ToOne<ObjectBoxElement>();
  String? durationUnit;
  ToOne<ObjectBoxElement> durationUnitElement = ToOne<ObjectBoxElement>();
  int? frequency;
  ToOne<ObjectBoxElement> frequencyElement = ToOne<ObjectBoxElement>();
  int? frequencyMax;
  ToOne<ObjectBoxElement> frequencyMaxElement = ToOne<ObjectBoxElement>();
  double? period;
  ToOne<ObjectBoxElement> periodElement = ToOne<ObjectBoxElement>();
  double? periodMax;
  ToOne<ObjectBoxElement> periodMaxElement = ToOne<ObjectBoxElement>();
  String? periodUnit;
  ToOne<ObjectBoxElement> periodUnitElement = ToOne<ObjectBoxElement>();
  List<String>? dayOfWeek;
  ToMany<ObjectBoxElement> dayOfWeekElement = ToMany<ObjectBoxElement>();
  List<String>? timeOfDay;
  ToMany<ObjectBoxElement> timeOfDayElement = ToMany<ObjectBoxElement>();
  List<String>? when;
  ToMany<ObjectBoxElement> whenElement = ToMany<ObjectBoxElement>();
  int? offset;
  ToOne<ObjectBoxElement> offsetElement = ToOne<ObjectBoxElement>();
}
