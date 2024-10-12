// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTiming {
  ObjectBoxTiming({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.event,
    this.eventElement,
    this.repeat,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? event;
  ToMany<ObjectBoxElement>? eventElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxTimingRepeat>? repeat = ToOne<ObjectBoxTimingRepeat>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxTimingRepeat {
  ObjectBoxTimingRepeat({
    this.id,
    this.extension_,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.countElement,
    this.countMax,
    this.countMaxElement,
    this.duration,
    this.durationElement,
    this.durationMax,
    this.durationMaxElement,
    this.durationUnit,
    this.durationUnitElement,
    this.frequency,
    this.frequencyElement,
    this.frequencyMax,
    this.frequencyMaxElement,
    this.period,
    this.periodElement,
    this.periodMax,
    this.periodMaxElement,
    this.periodUnit,
    this.periodUnitElement,
    this.dayOfWeek,
    this.dayOfWeekElement,
    this.timeOfDay,
    this.timeOfDayElement,
    this.when,
    this.whenElement,
    this.offset,
    this.offsetElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxFhirDuration>? boundsDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange>? boundsRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxPeriod>? boundsPeriod = ToOne<ObjectBoxPeriod>();
  int? count;
  ToOne<ObjectBoxElement>? countElement = ToOne<ObjectBoxElement>();
  int? countMax;
  ToOne<ObjectBoxElement>? countMaxElement = ToOne<ObjectBoxElement>();
  double? duration;
  ToOne<ObjectBoxElement>? durationElement = ToOne<ObjectBoxElement>();
  double? durationMax;
  ToOne<ObjectBoxElement>? durationMaxElement = ToOne<ObjectBoxElement>();
  String? durationUnit;
  ToOne<ObjectBoxElement>? durationUnitElement = ToOne<ObjectBoxElement>();
  int? frequency;
  ToOne<ObjectBoxElement>? frequencyElement = ToOne<ObjectBoxElement>();
  int? frequencyMax;
  ToOne<ObjectBoxElement>? frequencyMaxElement = ToOne<ObjectBoxElement>();
  double? period;
  ToOne<ObjectBoxElement>? periodElement = ToOne<ObjectBoxElement>();
  double? periodMax;
  ToOne<ObjectBoxElement>? periodMaxElement = ToOne<ObjectBoxElement>();
  String? periodUnit;
  ToOne<ObjectBoxElement>? periodUnitElement = ToOne<ObjectBoxElement>();
  List<String>? dayOfWeek;
  ToMany<ObjectBoxElement>? dayOfWeekElement = ToMany<ObjectBoxElement>();
  List<String>? timeOfDay;
  ToMany<ObjectBoxElement>? timeOfDayElement = ToMany<ObjectBoxElement>();
  List<String>? when;
  ToMany<ObjectBoxElement>? whenElement = ToMany<ObjectBoxElement>();
  int? offset;
  ToOne<ObjectBoxElement>? offsetElement = ToOne<ObjectBoxElement>();
}
