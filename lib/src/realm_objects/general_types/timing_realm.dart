import 'package:realm/realm.dart';

@RealmModel()
class _TimingRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String event;
  late List<_PrimitiveElementRealm> eventElement;
  late _TimingRepeatRealm repeat;
  late _CodeableConceptRealm code;
}

@RealmModel()
class _TimingRepeatRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirDurationRealm boundsDuration;
  late _RangeRealm boundsRange;
  late _PeriodRealm boundsPeriod;
  late _FhirPositiveIntRealm count;
  late _PrimitiveElementRealm countElement;
  late _FhirPositiveIntRealm countMax;
  late _PrimitiveElementRealm countMaxElement;
  late _FhirDecimalRealm duration;
  late _PrimitiveElementRealm durationElement;
  late _FhirDecimalRealm durationMax;
  late _PrimitiveElementRealm durationMaxElement;
  late _TimingRepeatDurationUnitRealm durationUnit;
  late _PrimitiveElementRealm durationUnitElement;
  late _FhirPositiveIntRealm frequency;
  late _PrimitiveElementRealm frequencyElement;
  late _FhirPositiveIntRealm frequencyMax;
  late _PrimitiveElementRealm frequencyMaxElement;
  late _FhirDecimalRealm period;
  late _PrimitiveElementRealm periodElement;
  late _FhirDecimalRealm periodMax;
  late _PrimitiveElementRealm periodMaxElement;
  late _TimingRepeatPeriodUnitRealm periodUnit;
  late _PrimitiveElementRealm periodUnitElement;
  late List<_FhirCodeRealm> dayOfWeek;
  late List<_PrimitiveElementRealm> dayOfWeekElement;
  late List<_FhirTimeRealm> timeOfDay;
  late List<_PrimitiveElementRealm> timeOfDayElement;
  late List<_TimingRepeatWhenRealm> when;
  late List<_PrimitiveElementRealm> whenElement;
  late _FhirUnsignedIntRealm offset;
  late _PrimitiveElementRealm offsetElement;
}
