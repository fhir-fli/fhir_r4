import 'dart:convert';
import '../../../fhir_r4.dart';

extension FhirDateExtension on DateTime {
  FhirDate get toFhirDate => FhirDate(this);
}

extension FhirDateStringExtension on String {
  FhirDate get toFhirDate => FhirDate(this);
}

class FhirDate extends FhirDateTimeBase {
  FhirDate.fromBase({
    required super.isValid,
    required super.precision,
    required super.input,
    required super.parseError,
    required super.year,
    required super.month,
    required super.day,
    required super.hour,
    required super.minute,
    required super.second,
    required super.millisecond,
    required super.microsecond,
    required super.timeZoneOffset,
    required super.isUtc,
    super.fhirType = 'date',
    super.element,
  });

  factory FhirDate(dynamic inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirDate>(
          inValue,
          inValue is DateTime
              ? precision ?? FhirDateTimePrecision.yyyy_MM_dd
              : precision,
          element) as FhirDate;

  factory FhirDate.fromJson(String json,
          {FhirDateTimePrecision? precision, Element? element}) =>
      FhirDate(json, precision, element);

  factory FhirDate.fromYaml(String yaml,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDate(jsonDecode(jsonEncode(yaml)), precision, element);

  factory FhirDate.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
    Element? element,
  }) =>
      FhirDateTimeBase.fromUnits<FhirDate>(
          year: year,
          month: month,
          day: day,
          isUtc: isUtc ?? false,
          element: element) as FhirDate;

  @override
  String toJson() => input.toString();

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  FhirDate plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  FhirDate subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate clone() => FhirDate.fromJson(toJson());

  @override
  FhirDate setElement(String name, dynamic elementValue) {
    return FhirDate(value, precision, element?.setProperty(name, elementValue));
  }

  @override
  FhirDate copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirDate(
      value,
      precision,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }
}
