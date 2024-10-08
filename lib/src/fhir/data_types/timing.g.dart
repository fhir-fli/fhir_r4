// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timing _$TimingFromJson(Map<String, dynamic> json) => Timing(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => FhirDateTime.fromJson(e as String))
          .toList(),
      eventElement: (json['_event'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      repeat: json['repeat'] == null
          ? null
          : Element.fromJson(json['repeat'] as Map<String, dynamic>),
      code: $enumDecodeNullable(_$TimingAbbreviationEnumMap, json['code']),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$TimingToJson(Timing instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('event', instance.event?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_event', instance.eventElement?.map((e) => e.toJson()).toList());
  writeNotNull('repeat', instance.repeat?.toJson());
  writeNotNull('code', instance.code?.toJson());
  return val;
}

const _$TimingAbbreviationEnumMap = {
  TimingAbbreviation.BID: 'BID',
  TimingAbbreviation.TID: 'TID',
  TimingAbbreviation.QID: 'QID',
  TimingAbbreviation.AM: 'AM',
  TimingAbbreviation.PM: 'PM',
  TimingAbbreviation.QD: 'QD',
  TimingAbbreviation.QOD: 'QOD',
  TimingAbbreviation.Q1H: 'Q1H',
  TimingAbbreviation.Q2H: 'Q2H',
  TimingAbbreviation.Q3H: 'Q3H',
  TimingAbbreviation.Q4H: 'Q4H',
  TimingAbbreviation.Q6H: 'Q6H',
  TimingAbbreviation.Q8H: 'Q8H',
  TimingAbbreviation.BED: 'BED',
  TimingAbbreviation.WK: 'WK',
  TimingAbbreviation.MO: 'MO',
};

TimingRepeat _$TimingRepeatFromJson(Map<String, dynamic> json) => TimingRepeat(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      boundsDuration: json['boundsDuration'] == null
          ? null
          : FhirDuration.fromJson(
              json['boundsDuration'] as Map<String, dynamic>),
      boundsRange: json['boundsRange'] == null
          ? null
          : Range.fromJson(json['boundsRange'] as Map<String, dynamic>),
      boundsPeriod: json['boundsPeriod'] == null
          ? null
          : Period.fromJson(json['boundsPeriod'] as Map<String, dynamic>),
      count: json['count'] == null
          ? null
          : FhirPositiveInt.fromJson(json['count']),
      countElement: json['_count'] == null
          ? null
          : Element.fromJson(json['_count'] as Map<String, dynamic>),
      countMax: json['countMax'] == null
          ? null
          : FhirPositiveInt.fromJson(json['countMax']),
      countMaxElement: json['_countMax'] == null
          ? null
          : Element.fromJson(json['_countMax'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : FhirDecimal.fromJson(json['duration']),
      durationElement: json['_duration'] == null
          ? null
          : Element.fromJson(json['_duration'] as Map<String, dynamic>),
      durationMax: json['durationMax'] == null
          ? null
          : FhirDecimal.fromJson(json['durationMax']),
      durationMaxElement: json['_durationMax'] == null
          ? null
          : Element.fromJson(json['_durationMax'] as Map<String, dynamic>),
      durationUnit:
          $enumDecodeNullable(_$UnitsOfTimeEnumMap, json['durationUnit']),
      durationUnitElement: json['_durationUnit'] == null
          ? null
          : Element.fromJson(json['_durationUnit'] as Map<String, dynamic>),
      frequency: json['frequency'] == null
          ? null
          : FhirPositiveInt.fromJson(json['frequency']),
      frequencyElement: json['_frequency'] == null
          ? null
          : Element.fromJson(json['_frequency'] as Map<String, dynamic>),
      frequencyMax: json['frequencyMax'] == null
          ? null
          : FhirPositiveInt.fromJson(json['frequencyMax']),
      frequencyMaxElement: json['_frequencyMax'] == null
          ? null
          : Element.fromJson(json['_frequencyMax'] as Map<String, dynamic>),
      period:
          json['period'] == null ? null : FhirDecimal.fromJson(json['period']),
      periodElement: json['_period'] == null
          ? null
          : Element.fromJson(json['_period'] as Map<String, dynamic>),
      periodMax: json['periodMax'] == null
          ? null
          : FhirDecimal.fromJson(json['periodMax']),
      periodMaxElement: json['_periodMax'] == null
          ? null
          : Element.fromJson(json['_periodMax'] as Map<String, dynamic>),
      periodUnit: $enumDecodeNullable(_$UnitsOfTimeEnumMap, json['periodUnit']),
      periodUnitElement: json['_periodUnit'] == null
          ? null
          : Element.fromJson(json['_periodUnit'] as Map<String, dynamic>),
      dayOfWeek: (json['dayOfWeek'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DaysOfWeekEnumMap, e))
          .toList(),
      dayOfWeekElement: (json['_dayOfWeek'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeOfDay: (json['timeOfDay'] as List<dynamic>?)
          ?.map(FhirTime.fromJson)
          .toList(),
      timeOfDayElement: (json['_timeOfDay'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      when: (json['when'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EventTimingEnumMap, e))
          .toList(),
      whenElement: (json['_when'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: json['offset'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['offset']),
      offsetElement: json['_offset'] == null
          ? null
          : Element.fromJson(json['_offset'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$TimingRepeatToJson(TimingRepeat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('boundsDuration', instance.boundsDuration?.toJson());
  writeNotNull('boundsRange', instance.boundsRange?.toJson());
  writeNotNull('boundsPeriod', instance.boundsPeriod?.toJson());
  writeNotNull('count', instance.count?.toJson());
  writeNotNull('_count', instance.countElement?.toJson());
  writeNotNull('countMax', instance.countMax?.toJson());
  writeNotNull('_countMax', instance.countMaxElement?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  writeNotNull('_duration', instance.durationElement?.toJson());
  writeNotNull('durationMax', instance.durationMax?.toJson());
  writeNotNull('_durationMax', instance.durationMaxElement?.toJson());
  writeNotNull('durationUnit', instance.durationUnit?.toJson());
  writeNotNull('_durationUnit', instance.durationUnitElement?.toJson());
  writeNotNull('frequency', instance.frequency?.toJson());
  writeNotNull('_frequency', instance.frequencyElement?.toJson());
  writeNotNull('frequencyMax', instance.frequencyMax?.toJson());
  writeNotNull('_frequencyMax', instance.frequencyMaxElement?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('_period', instance.periodElement?.toJson());
  writeNotNull('periodMax', instance.periodMax?.toJson());
  writeNotNull('_periodMax', instance.periodMaxElement?.toJson());
  writeNotNull('periodUnit', instance.periodUnit?.toJson());
  writeNotNull('_periodUnit', instance.periodUnitElement?.toJson());
  writeNotNull(
      'dayOfWeek', instance.dayOfWeek?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_dayOfWeek', instance.dayOfWeekElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'timeOfDay', instance.timeOfDay?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_timeOfDay', instance.timeOfDayElement?.map((e) => e.toJson()).toList());
  writeNotNull('when', instance.when?.map((e) => e.toJson()).toList());
  writeNotNull('_when', instance.whenElement?.map((e) => e.toJson()).toList());
  writeNotNull('offset', instance.offset?.toJson());
  writeNotNull('_offset', instance.offsetElement?.toJson());
  return val;
}

const _$UnitsOfTimeEnumMap = {
  UnitsOfTime.s: 's',
  UnitsOfTime.min: 'min',
  UnitsOfTime.h: 'h',
  UnitsOfTime.d: 'd',
  UnitsOfTime.wk: 'wk',
  UnitsOfTime.mo: 'mo',
  UnitsOfTime.a: 'a',
};

const _$DaysOfWeekEnumMap = {
  DaysOfWeek.mon: 'mon',
  DaysOfWeek.tue: 'tue',
  DaysOfWeek.wed: 'wed',
  DaysOfWeek.thu: 'thu',
  DaysOfWeek.fri: 'fri',
  DaysOfWeek.sat: 'sat',
  DaysOfWeek.sun: 'sun',
};

const _$EventTimingEnumMap = {
  EventTiming.MORN: 'MORN',
  EventTiming.MORN_early: 'MORN.early',
  EventTiming.MORN_late: 'MORN.late',
  EventTiming.NOON: 'NOON',
  EventTiming.AFT: 'AFT',
  EventTiming.AFT_early: 'AFT.early',
  EventTiming.AFT_late: 'AFT.late',
  EventTiming.EVE: 'EVE',
  EventTiming.EVE_early: 'EVE.early',
  EventTiming.EVE_late: 'EVE.late',
  EventTiming.NIGHT: 'NIGHT',
  EventTiming.PHS: 'PHS',
  EventTiming.HS: 'HS',
  EventTiming.WAKE: 'WAKE',
  EventTiming.C: 'C',
  EventTiming.CM: 'CM',
  EventTiming.CD: 'CD',
  EventTiming.CV: 'CV',
  EventTiming.AC: 'AC',
  EventTiming.ACM: 'ACM',
  EventTiming.ACD: 'ACD',
  EventTiming.ACV: 'ACV',
  EventTiming.PC: 'PC',
  EventTiming.PCM: 'PCM',
  EventTiming.PCD: 'PCD',
  EventTiming.PCV: 'PCV',
};
