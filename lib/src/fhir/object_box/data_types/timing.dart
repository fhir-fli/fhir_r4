import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Timing {
  Timing({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<String>? event;
  ToMany<Element>? eventElement = ToMany<Element>();
  ToOne<TimingRepeat>? repeat = ToOne<TimingRepeat>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
}

@Entity()
class TimingRepeat {
  TimingRepeat({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<FhirDuration>? boundsDuration = ToOne<FhirDuration>();
  ToOne<Range>? boundsRange = ToOne<Range>();
  ToOne<Period>? boundsPeriod = ToOne<Period>();
  int? count;
  ToOne<Element>? countElement = ToOne<Element>();
  int? countMax;
  ToOne<Element>? countMaxElement = ToOne<Element>();
  double? duration;
  ToOne<Element>? durationElement = ToOne<Element>();
  double? durationMax;
  ToOne<Element>? durationMaxElement = ToOne<Element>();
  String? durationUnit;
  ToOne<Element>? durationUnitElement = ToOne<Element>();
  int? frequency;
  ToOne<Element>? frequencyElement = ToOne<Element>();
  int? frequencyMax;
  ToOne<Element>? frequencyMaxElement = ToOne<Element>();
  double? period;
  ToOne<Element>? periodElement = ToOne<Element>();
  double? periodMax;
  ToOne<Element>? periodMaxElement = ToOne<Element>();
  String? periodUnit;
  ToOne<Element>? periodUnitElement = ToOne<Element>();
  List<String>? dayOfWeek;
  ToMany<Element>? dayOfWeekElement = ToMany<Element>();
  List<String>? timeOfDay;
  ToMany<Element>? timeOfDayElement = ToMany<Element>();
  List<String>? when;
  ToMany<Element>? whenElement = ToMany<Element>();
  int? offset;
  ToOne<Element>? offsetElement = ToOne<Element>();
}
