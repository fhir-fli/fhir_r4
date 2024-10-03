import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class TimingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<FhirDateTime>? event;

  @ToMany()
  List<PrimitiveElementEntity>? eventElement;

  @ToOne()
  TimingRepeatEntity? repeat;

  @ToOne()
  CodeableConceptEntity? code;
}

class TimingRepeatEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  FhirDurationEntity? boundsDuration;

  @ToOne()
  RangeEntity? boundsRange;

  @ToOne()
  PeriodEntity? boundsPeriod;

  int? count;

  @ToOne()
  PrimitiveElementEntity? countElement;

  int? countMax;

  @ToOne()
  PrimitiveElementEntity? countMaxElement;

  double? duration;

  @ToOne()
  PrimitiveElementEntity? durationElement;

  double? durationMax;

  @ToOne()
  PrimitiveElementEntity? durationMaxElement;

  @ToOne()
  TimingRepeatDurationUnitEntity? durationUnit;

  @ToOne()
  PrimitiveElementEntity? durationUnitElement;

  int? frequency;

  @ToOne()
  PrimitiveElementEntity? frequencyElement;

  int? frequencyMax;

  @ToOne()
  PrimitiveElementEntity? frequencyMaxElement;

  double? period;

  @ToOne()
  PrimitiveElementEntity? periodElement;

  double? periodMax;

  @ToOne()
  PrimitiveElementEntity? periodMaxElement;

  @ToOne()
  TimingRepeatPeriodUnitEntity? periodUnit;

  @ToOne()
  PrimitiveElementEntity? periodUnitElement;

  List<String>? dayOfWeek;

  @ToMany()
  List<PrimitiveElementEntity>? dayOfWeekElement;

  List<FhirTime>? timeOfDay;

  @ToMany()
  List<PrimitiveElementEntity>? timeOfDayElement;

  @ToMany()
  List<TimingRepeatWhenEntity>? when;

  @ToMany()
  List<PrimitiveElementEntity>? whenElement;

  int? offset;

  @ToOne()
  PrimitiveElementEntity? offsetElement;
}
