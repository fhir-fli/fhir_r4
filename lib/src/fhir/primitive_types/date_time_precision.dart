// enum FhirDateTimePrecision {
//   // '2012',
//   yyyy,
//   // '2012-01',
//   yyyy_MM,
//   // '2012-01-31',
//   yyyy_MM_dd,
//   // '2012-01-31T',
//   yyyy_MM_dd_T_Z,
//   // '2012-01-31T-04:00',
//   yyyy_MM_dd_T_ZZ,
//   // '2012-01-31T12',
//   yyyy_MM_dd_T_HH,
//   // '2012-01-31T12Z',
//   yyyy_MM_dd_T_HH_Z,
//   // '2012-01-31T12-04:00',
//   yyyy_MM_dd_T_HHZZ,
//   // '2012-01-31T12:30',
//   yyyy_MM_dd_T_HH_mm,
//   // '2012-01-31T12:30Z',
//   yyyy_MM_dd_T_HH_mm_Z,
//   // '2012-01-31T12:30-04:00',
//   yyyy_MM_dd_T_HH_mmZZ,
//   // '2012-01-31T12:30:59',
//   yyyy_MM_dd_T_HH_mm_ss,
//   // '2012-01-31T12:30:59Z',
//   yyyy_MM_dd_T_HH_mm_ss_Z,
//   // '2012-01-31T12:30:59-04:00',
//   yyyy_MM_dd_T_HH_mm_ssZZ,
//   // '2012-01-31T12:30:59.000',
//   yyyy_MM_dd_T_HH_mm_ss_SSS,
//   // '2012-01-31T12:30:59.000Z',
//   yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//   // '2012-01-31T12:30:59.000-04:00'
//   yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//   dateTime,
//   instant,
//   invalid;

//   bool get isValidInstantPrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.invalid,
//       ].contains(this);

//   bool get isValidDatePrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy,
//         FhirDateTimePrecision.yyyy_MM,
//         FhirDateTimePrecision.yyyy_MM_dd,
//         FhirDateTimePrecision.invalid,
//       ].contains(this);

//   bool get isValidFhirDateTimePrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy,
//         FhirDateTimePrecision.yyyy_MM,
//         FhirDateTimePrecision.yyyy_MM_dd,
//         FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.dateTime,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.invalid,
//       ].contains(this);

//   bool get hasYear => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy,
//         FhirDateTimePrecision.yyyy_MM,
//         FhirDateTimePrecision.yyyy_MM_dd,
//         FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.dateTime,
//         FhirDateTimePrecision.instant,
//       ].contains(this);

//   bool get hasMonth => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM,
//         FhirDateTimePrecision.yyyy_MM_dd,
//         FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.dateTime,
//       ].contains(this);

//   bool get hasDay => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd,
//         FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.dateTime,
//       ].contains(this);

//   bool get hasHours => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.dateTime,
//       ].contains(this);

//   bool get hasMinutes => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.dateTime,
//       ].contains(this);

//   bool get hasSeconds => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.dateTime,
//       ].contains(this);

//   bool get hasMilliseconds => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//         FhirDateTimePrecision.dateTime,
//       ].contains(this);

//   bool get hasTimezoneOffset => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.instant,
//       ].contains(this);

//   bool get yearsPrecision => FhirDateTimePrecision.yyyy == this;

//   bool get monthsPrecision => FhirDateTimePrecision.yyyy_MM == this;

//   bool get daysPrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd,
//         FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//       ].contains(this);

//   bool get hoursPrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//       ].contains(this);

//   bool get minutesPrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//       ].contains(this);

//   bool get secondsPrecision => <FhirDateTimePrecision>[
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//         FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//         FhirDateTimePrecision.dateTime,
//         FhirDateTimePrecision.instant,
//       ].contains(this);

//   bool isEquivalentTo(FhirDateTimePrecision precision) =>
//       (yearsPrecision && precision.yearsPrecision) ||
//       (monthsPrecision && precision.monthsPrecision) ||
//       (daysPrecision && precision.daysPrecision) ||
//       (hoursPrecision && precision.hoursPrecision) ||
//       (minutesPrecision && precision.minutesPrecision) ||
//       (secondsPrecision && precision.secondsPrecision);

//   String dateTimeToString(DateTime dateTime) {
//     final String year = dateTime.year.toString().padLeft(4, '0');
//     final String month = dateTime.month.toString().padLeft(2, '0');
//     final String day = dateTime.day.toString().padLeft(2, '0');
//     final String hour = dateTime.hour.toString().padLeft(2, '0');
//     final String minute = dateTime.minute.toString().padLeft(2, '0');
//     final String second = dateTime.second.toString().padLeft(2, '0');
//     final String millisecond = dateTime.millisecond.toString().padLeft(3, '0');
//     final String microsecond = dateTime.microsecond.toString().padLeft(3, '0');
//     final String offset = timeZoneOffsetToString(
//         dateTime.timeZoneOffset.inHours.toDouble() +
//             dateTime.timeZoneOffset.inMinutes.toDouble() / 60);

//     switch (this) {
//       case FhirDateTimePrecision.yyyy:
//         return year;
//       case FhirDateTimePrecision.yyyy_MM:
//         return '$year-$month';
//       case FhirDateTimePrecision.yyyy_MM_dd:
//         return '$year-$month-$day';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_Z:
//         return '$year-$month-${day}TZ';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_ZZ:
//         return '$year-$month-${day}T$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH:
//         return '$year-$month-${day}T$hour';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z:
//         return '$year-$month-${day}T${hour}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ:
//         return '$year-$month-${day}T$hour$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm:
//         return '$year-$month-${day}T$hour:$minute';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z:
//         return '$year-$month-${day}T$hour:${minute}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ:
//         return '$year-$month-${day}T$hour:$minute$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss:
//         return '$year-$month-${day}T$hour:$minute:$second';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z:
//         return '$year-$month-${day}T$hour:$minute:${second}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ:
//         return '$year-$month-${day}T$hour:$minute:$second$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z:
//         return '$year-$month-${day}T$hour:$minute:$second.${millisecond}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond$offset';
//       case FhirDateTimePrecision.dateTime:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond$microsecond$offset';
//       case FhirDateTimePrecision.instant:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond$offset';
//       case FhirDateTimePrecision.invalid:
//         return '';
//     }
//   }

//   bool isEquallyPrecise(FhirDateTimePrecision precision) {
//     switch (this) {
//       case FhirDateTimePrecision.yyyy:
//         return precision == FhirDateTimePrecision.yyyy;

//       case FhirDateTimePrecision.yyyy_MM:
//         return precision == FhirDateTimePrecision.yyyy_MM;

//       case FhirDateTimePrecision.yyyy_MM_dd:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_ZZ:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd,
//           FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         ].contains(precision);

//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         ].contains(precision);

//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         ].contains(precision);

//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ:
//       case FhirDateTimePrecision.dateTime:
//       case FhirDateTimePrecision.instant:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//           FhirDateTimePrecision.dateTime,
//           FhirDateTimePrecision.instant,
//         ].contains(precision);

//       case FhirDateTimePrecision.invalid:
//         return precision == FhirDateTimePrecision.invalid;
//     }
//   }

//   DateTime dateTimeFromMap(Map<String, num?> map) {
//     final DateTime dateTime = DateTime(
//       map['year'] as int? ?? 0,
//       hasMonth ? map['month'] as int? ?? 0 : 1,
//       hasDay ? map['day'] as int? ?? 0 : 1,
//       hasHours ? map['hour'] as int? ?? 0 : 0,
//       hasMinutes ? map['minute'] as int? ?? 0 : 0,
//       hasSeconds ? map['second'] as int? ?? 0 : 0,
//       hasMilliseconds ? map['millisecond'] as int? ?? 0 : 0,
//       this == FhirDateTimePrecision.dateTime
//           ? map['microsecond'] as int? ?? 0
//           : 0,
//     );
//     final DateTime localDateTime = dateTime.toLocal();
//     final Duration localOffset = localDateTime.timeZoneOffset;
//     final int actualOffset = localOffset.inHours +
//         (int.tryParse(map['offset']?.toString() ?? '0') ?? 0);
//     final DateTime actualDateTime =
//         localDateTime.add(Duration(hours: actualOffset));
//     return DateTime(
//         actualDateTime.year,
//         actualDateTime.month,
//         actualDateTime.day,
//         actualDateTime.hour - actualOffset,
//         actualDateTime.minute,
//         actualDateTime.second,
//         actualDateTime.millisecond,
//         actualDateTime.microsecond);
//   }

//   String dateTimeMapToString<T>(Map<String, num?> map) {
//     final DateTime dateTime = DateTime(
//         map['year'] as int? ?? 0,
//         map['month'] as int? ?? 1,
//         map['day'] as int? ?? 1,
//         map['hour'] as int? ?? 0,
//         map['minute'] as int? ?? 0,
//         map['second'] as int? ?? 0,
//         map['millisecond'] as int? ?? 0,
//         map['microsecond'] as int? ?? 0);
//     final String year = dateTime.year.toString().padLeft(4, '0');
//     final String month = dateTime.month.toString().padLeft(2, '0');
//     final String day = dateTime.day.toString().padLeft(2, '0');
//     final String hour = dateTime.hour.toString().padLeft(2, '0');
//     final String minute = dateTime.minute.toString().padLeft(2, '0');
//     final String second = dateTime.second.toString().padLeft(2, '0');
//     final String millisecond = dateTime.millisecond.toString().padLeft(3, '0');
//     final String microsecond = dateTime.microsecond.toString().padLeft(3, '0');
//     final String offset =
//         timeZoneOffsetToString(map['timeZoneOffset']?.toDouble());
//     switch (this) {
//       case FhirDateTimePrecision.yyyy:
//         return year;
//       case FhirDateTimePrecision.yyyy_MM:
//         return '$year-$month';
//       case FhirDateTimePrecision.yyyy_MM_dd:
//         return '$year-$month-$day';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_Z:
//         return '$year-$month-${day}TZ';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_ZZ:
//         return '$year-$month-${day}T$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH:
//         return '$year-$month-${day}T$hour';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z:
//         return '$year-$month-${day}T${hour}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ:
//         return '$year-$month-${day}T$hour$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm:
//         return '$year-$month-${day}T$hour:$minute';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z:
//         return '$year-$month-${day}T$hour:${minute}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ:
//         return '$year-$month-${day}T$hour:$minute$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss:
//         return '$year-$month-${day}T$hour:$minute:$second';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z:
//         return '$year-$month-${day}T$hour:$minute:${second}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ:
//         return '$year-$month-${day}T$hour:$minute:$second$offset';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z:
//         return '$year-$month-${day}T$hour:$minute:$second.${millisecond}Z';
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond$offset';
//       case FhirDateTimePrecision.dateTime:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond$microsecond$offset';
//       case FhirDateTimePrecision.instant:
//         return '$year-$month-${day}T$hour:$minute:$second.$millisecond$offset';
//       case FhirDateTimePrecision.invalid:
//         return '';
//     }
//   }

//   DateTime? stringToDateTime(String string) {
//     try {
//       switch (this) {
//         case FhirDateTimePrecision.yyyy:
//           return DateTime.tryParse('${string.substring(0, 4)}-01-01');
//         case FhirDateTimePrecision.yyyy_MM:
//           return DateTime.tryParse('${string.substring(0, 7)}-01');
//         case FhirDateTimePrecision.yyyy_MM_dd:
//           return DateTime.tryParse(string.substring(0, 10));
//         case FhirDateTimePrecision.yyyy_MM_dd_T_Z:
//           return DateTime.tryParse('${string.substring(0, 10)}T00:00:00Z');
//         case FhirDateTimePrecision.yyyy_MM_dd_T_ZZ:
//           {
//             final DateTime? dateTime =
//                 DateTime.tryParse('${string.substring(0, 10)}T00:00:00');
//             final DateTime? localDateTime = dateTime?.toLocal();
//             final Duration? localOffset = localDateTime?.timeZoneOffset;
//             final int actualOffset = (localOffset?.inHours ?? 0) +
//                 (int.tryParse(string.split(':').first) ?? 0);
//             final DateTime? actualDateTime =
//                 localDateTime?.add(Duration(hours: actualOffset));
//             return actualDateTime == null
//                 ? null
//                 : DateTime(
//                     actualDateTime.year,
//                     actualDateTime.month,
//                     actualDateTime.day,
//                     actualDateTime.hour - actualOffset,
//                     actualDateTime.minute,
//                     actualDateTime.second,
//                     actualDateTime.millisecond,
//                     actualDateTime.microsecond);
//           }
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH:
//           return DateTime.tryParse(string.substring(0, 13));
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z:
//           return DateTime.tryParse('${string.substring(0, 13)}:00:00Z');
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ:
//           {
//             final DateTime? dateTime = DateTime.tryParse(
//                 '${string.substring(0, 13)}:00:00${string.substring(13)}');
//             final DateTime? localDateTime = dateTime?.toLocal();
//             final Duration? localOffset = localDateTime?.timeZoneOffset;
//             final int actualOffset = (localOffset?.inHours ?? 0) +
//                 (int.tryParse(string.split(':').first) ?? 0);
//             final DateTime? actualDateTime =
//                 localDateTime?.add(Duration(hours: actualOffset));
//             return actualDateTime == null
//                 ? null
//                 : DateTime(
//                     actualDateTime.year,
//                     actualDateTime.month,
//                     actualDateTime.day,
//                     actualDateTime.hour - actualOffset,
//                     actualDateTime.minute,
//                     actualDateTime.second,
//                     actualDateTime.millisecond,
//                     actualDateTime.microsecond);
//           }
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm:
//           return DateTime.tryParse(string.substring(0, 16));
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z:
//           return DateTime.tryParse('${string.substring(0, 16)}:00Z');
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ:
//           return DateTime.tryParse(
//               '${string.substring(0, 16)}:00${string.substring(16)}');
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss:
//           return DateTime.tryParse(string.substring(0, 19));
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z:
//           return DateTime.tryParse('${string.substring(0, 19)}Z');
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ:
//           {
//             final DateTime? dateTime = DateTime.tryParse(
//                 '${string.substring(0, 19)}${string.substring(19)}');
//             final DateTime? localDateTime = dateTime?.toLocal();
//             final Duration? localOffset = localDateTime?.timeZoneOffset;
//             final int actualOffset = (localOffset?.inHours ?? 0) +
//                 (int.tryParse(string.split(':').first) ?? 0);
//             final DateTime? actualDateTime =
//                 localDateTime?.add(Duration(hours: actualOffset));
//             return actualDateTime == null
//                 ? null
//                 : DateTime(
//                     actualDateTime.year,
//                     actualDateTime.month,
//                     actualDateTime.day,
//                     actualDateTime.hour - actualOffset,
//                     actualDateTime.minute,
//                     actualDateTime.second,
//                     actualDateTime.millisecond,
//                     actualDateTime.microsecond);
//           }
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS:
//           return DateTime.tryParse(string.substring(0, 23));
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z:
//           return DateTime.tryParse('${string.substring(0, 23)}Z');
//         case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ:
//           {
//             final DateTime? dateTime = DateTime.tryParse(
//                 '${string.substring(0, 23)}${string.substring(23)}');
//             final DateTime? localDateTime = dateTime?.toLocal();
//             final Duration? localOffset = localDateTime?.timeZoneOffset;
//             final int actualOffset = (localOffset?.inHours ?? 0) +
//                 (int.tryParse(string.split(':').first) ?? 0);
//             final DateTime? actualDateTime =
//                 localDateTime?.add(Duration(hours: actualOffset));
//             return actualDateTime == null
//                 ? null
//                 : DateTime(
//                     actualDateTime.year,
//                     actualDateTime.month,
//                     actualDateTime.day,
//                     actualDateTime.hour - actualOffset,
//                     actualDateTime.minute,
//                     actualDateTime.second,
//                     actualDateTime.millisecond,
//                     actualDateTime.microsecond);
//           }
//         case FhirDateTimePrecision.dateTime:
//           return DateTime.tryParse(string);
//         case FhirDateTimePrecision.instant:
//           return DateTime.tryParse(string);
//         case FhirDateTimePrecision.invalid:
//           return null;
//       }
//     } catch (e) {
//       return null; // Return null for any parsing errors
//     }
//   }

//   String unit() {
//     if (this == FhirDateTimePrecision.yyyy) {
//       return 'year';
//     } else if (this == FhirDateTimePrecision.yyyy_MM) {
//       return 'month';
//     } else if (this == FhirDateTimePrecision.yyyy_MM_dd ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_Z ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_ZZ) {
//       return 'day';
//     } else if (this == FhirDateTimePrecision.yyyy_MM_dd_T_HH ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ) {
//       return 'hour';
//     } else if (this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ) {
//       return 'minute';
//     } else if (this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ) {
//       return 'second';
//     } else if (this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z ||
//         this == FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ) {
//       return 'millisecond';
//     } else {
//       return 'invalid';
//     }
//   }

//   bool hasSamePrecisionAs(FhirDateTimePrecision precision) {
//     switch (this) {
//       case FhirDateTimePrecision.yyyy:
//         return precision == FhirDateTimePrecision.yyyy;

//       case FhirDateTimePrecision.yyyy_MM:
//         return precision == FhirDateTimePrecision.yyyy_MM;

//       case FhirDateTimePrecision.yyyy_MM_dd:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_ZZ:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd,
//           FhirDateTimePrecision.yyyy_MM_dd_T_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_ZZ,
//         ].contains(precision);

//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ,
//         ].contains(precision);

//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
//         ].contains(precision);

//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z:
//       case FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ:
//       case FhirDateTimePrecision.dateTime:
//       case FhirDateTimePrecision.instant:
//         return <FhirDateTimePrecision>[
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
//           FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
//           FhirDateTimePrecision.dateTime,
//           FhirDateTimePrecision.instant,
//         ].contains(precision);

//       case FhirDateTimePrecision.invalid:
//         return precision == FhirDateTimePrecision.invalid;
//     }
//   }
// }

// FhirDateTimePrecision precisionFromDateTimeString(String inValue) {
//   if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)\.\d{3}[+-](0[0-9]|1[0-3]):[0-5][0-9]$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)\.\d{3}Z$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)\.\d{3}$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)[+-](0[0-9]|1[0-3]):[0-5][0-9]$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)Z$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9][+-](0[0-9]|1[0-3]):[0-5][0-9]$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]Z$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3]):[0-5][0-9]$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3])[+-](0[0-9]|1[0-3]):[0-5][0-9]$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3])Z$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])[T ]([01][0-9]|2[0-3])$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_HH;
//   } else if (RegExp(
//           r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T[+-](0[0-9]|1[0-3]):[0-5][0-9]$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_ZZ;
//   } else if (RegExp(r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])TZ$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd_T_Z;
//   } else if (RegExp(r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$')
//       .hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM_dd;
//   } else if (RegExp(r'^\d{4}-(0[1-9]|1[0-2])$').hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy_MM;
//   } else if (RegExp(r'^\d{4}$').hasMatch(inValue)) {
//     return FhirDateTimePrecision.yyyy;
//   } else if (instantExp.hasMatch(inValue)) {
//     return FhirDateTimePrecision.instant;
//   } else if (dateTimeExp.hasMatch(inValue)) {
//     return FhirDateTimePrecision.dateTime;
//   } else {
//     return FhirDateTimePrecision.invalid;
//   }
// }

// /// For reference purposes from the [FHIR spec](https://build.fhir.org/datatypes.html#date)
// final RegExp dateExp = RegExp(
//     r'(?<year>[0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(?<month>0[1-9]|1[0-2])(-(?<day>0[1-9]|[1-2][0-9]|3[0-1]))?)?');

// /// [Instant](https://build.fhir.org/datatypes.html#instant)
// final RegExp instantExp = RegExp(
//     r'(?<year>[0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(?<month>0[1-9]|1[0-2])-(?<day>0[1-9]|[1-2][0-9]|3[0-1])T(?<hour>[01][0-9]|2[0-3]):(?<minute>[0-5][0-9]):(?<second>[0-5][0-9]|60)(\.(?<millimicrosecond>[0-9]{1,9}))?(?<timezone>Z|(\+|-)(?<tzhour>0[0-9]|1[0-3]):(?<tzminute>[0-5][0-9]|14:00))');

// FhirDateTimePrecision precisionFromMap(Map<String, num?> map) {
//   if (map['month'] == null) {
//     return FhirDateTimePrecision.yyyy;
//   } else if (map['day'] == null) {
//     return FhirDateTimePrecision.yyyy_MM;
//   } else if (map['hour'] == null) {
//     return map['isUtc'] == 1
//         ? map['timeZoneOffset'] == null
//             ? FhirDateTimePrecision.yyyy_MM_dd
//             : FhirDateTimePrecision.yyyy_MM_dd_T_ZZ
//         : FhirDateTimePrecision.yyyy_MM_dd_T_Z;
//   } else if (map['minute'] == null) {
//     return map['isUtc'] == 1
//         ? map['timeZoneOffset'] == null
//             ? FhirDateTimePrecision.yyyy_MM_dd_T_HH
//             : FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ
//         : FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z;
//   } else if (map['second'] == null) {
//     return map['isUtc'] == 1
//         ? map['timeZoneOffset'] == null
//             ? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm
//             : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ
//         : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z;
//   } else if (map['millisecond'] == null) {
//     return map['isUtc'] == 1
//         ? map['timeZoneOffset'] == null
//             ? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss
//             : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ
//         : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z;
//   } else if (map['microsecond'] == null) {
//     return map['isUtc'] == 1
//         ? map['timeZoneOffset'] == null
//             ? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS
//             : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ
//         : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z;
//   } else {
//     return FhirDateTimePrecision.dateTime;
//   }
// }

// const FhirDateTimePrecision fullDatePrecision =
//     FhirDateTimePrecision.yyyy_MM_dd;
// const FhirDateTimePrecision fullDateTimePrecision =
//     FhirDateTimePrecision.dateTime;
// const FhirDateTimePrecision fullInstantPrecision =
//     FhirDateTimePrecision.instant;
