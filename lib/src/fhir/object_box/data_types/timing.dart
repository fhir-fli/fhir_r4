import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Timing {
  Timing({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.event,
    this.repeat,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<String>? event;
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
    this.countMax,
    this.duration,
    this.durationMax,
    this.durationUnit,
    this.frequency,
    this.frequencyMax,
    this.period,
    this.periodMax,
    this.periodUnit,
    this.dayOfWeek,
    this.timeOfDay,
    this.when,
    this.offset,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<FhirDuration>? boundsDuration = ToOne<FhirDuration>();
  ToOne<Range>? boundsRange = ToOne<Range>();
  ToOne<Period>? boundsPeriod = ToOne<Period>();
  int? count;
  int? countMax;
  double? duration;
  double? durationMax;
  String? durationUnit;
  int? frequency;
  int? frequencyMax;
  double? period;
  double? periodMax;
  String? periodUnit;
  List<String>? dayOfWeek;
  List<String>? timeOfDay;
  List<String>? when;
  int? offset;
}
