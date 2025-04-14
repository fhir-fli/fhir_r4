import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to determine if the first interval overlaps the second interval.
/// Returns true if End(i1) >= Start(i2) and Start(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// overlaps _precision_ (left Interval<T>, right Interval<T>) Boolean
/// overlaps before _precision_ (left Interval<T>, right Interval<T>) Boolean
/// overlaps after _precision_ (left Interval<T>, right Interval<T>) Boolean
/// Description:
///
/// The overlaps operator returns true if the first interval overlaps the
/// second. More precisely, if the starting or ending point of either interval
/// is in the other, or if the ending point of the first interval is greater
/// than or equal to the starting point of the second interval, and the starting
/// point of the first interval is less than or equal to the ending point of the
/// second interval.
///
/// The operator overlaps before returns true if the first interval overlaps the
/// second and starts before it, while the overlaps after operator returns true
/// if the first interval overlaps the second and ends after it.
///
/// This operator uses the semantics described in the Start and End operators to
/// determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the overlaps, overlaps
/// before, and overlaps after operators:
///
/// define "OverlapsIsTrue": Interval[0, 4] overlaps Interval[1, 4]
/// define "OverlapsBeforeIsTrue": Interval[0, 4] overlaps before Interval[1, 4]
/// define "OverlapsAfterIsFalse": Interval[0, 4] overlaps after Interval[1, 4]
/// define "OverlapsIsNull": Interval[6, 10] overlaps (null as Interval<Integer>)
class Overlaps extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Overlaps({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Overlaps.fromJson(Map<String, dynamic> json) => Overlaps(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      if (precision != null) 'precision': precision!.toJson(),
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Overlaps';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Binary expression requires two operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return overlaps(left, right, precision);
  }

  static FhirBoolean? overlaps(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) {
      return null;
    }

    if (left is CqlInterval && right is CqlInterval) {
      var leftStart = left.getStart();
      var leftEnd = left.getEnd();
      var rightStart = right.getStart();
      var rightEnd = right.getEnd();

      if (leftStart is FhirDateTimeBase &&
          rightStart is FhirDateTimeBase &&
          precision != null) {
        return And.and(
          SameOrBefore.sameOrBefore(leftStart, rightEnd, precision),
          SameOrBefore.sameOrBefore(rightStart, leftEnd, precision),
        );
      } else if (leftStart is FhirTime &&
          rightStart is FhirTime &&
          precision != null) {
        return And.and(
          SameOrBefore.sameOrBefore(leftStart, rightEnd, precision),
          SameOrBefore.sameOrBefore(rightStart, leftEnd, precision),
        );
      } else if (left.low.runtimeType == right.runtimeType) {
        return And.and(
          LessOrEqual.lessOrEqual(leftStart, right),
          LessOrEqual.lessOrEqual(right, leftEnd),
        );
      } else {
        return And.and(
          LessOrEqual.lessOrEqual(leftStart, rightEnd),
          LessOrEqual.lessOrEqual(rightStart, leftEnd),
        );
      }
    }

    throw Exception('Overlaps requires CqlInterval arguments.\n'
        'Left: (${left.runtimeType}) $left'
        'Right: (${right.runtimeType}) $right');
  }
}
