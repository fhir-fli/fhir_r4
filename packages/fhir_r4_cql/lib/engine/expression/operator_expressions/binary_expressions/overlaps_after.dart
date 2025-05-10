import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to determine if the first interval overlaps and ends after the
/// second interval.
/// Returns true if End(i1) > End(i2) and Start(i1) <= End(i2).
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
class OverlapsAfter extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  OverlapsAfter({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OverlapsAfter.fromJson(Map<String, dynamic> json) => OverlapsAfter(
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
  String get type => 'OverlapsAfter';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Binary expression requires two operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return overlapsAfter(left, right, precision);
  }

  static FhirBoolean? overlapsAfter(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) {
      return null;
    }

    if (left is CqlInterval && right is CqlInterval) {
      var leftEnd = left.getEnd();
      var rightEnd = right.getEnd();

      bool after = false;
      bool overlaps = false;

      if (leftEnd is FhirDateTimeBase &&
          rightEnd is FhirDateTimeBase &&
          precision != null) {
        after =
            After.after(leftEnd, rightEnd, precision)?.valueBoolean ?? after;
        overlaps =
            Overlaps.overlaps(left, right, precision)?.valueBoolean ?? overlaps;
      } else if (leftEnd is FhirTime &&
          rightEnd is FhirTime &&
          precision != null) {
        after =
            After.after(leftEnd, rightEnd, precision)?.valueBoolean ?? after;
        overlaps =
            Overlaps.overlaps(left, right, precision)?.valueBoolean ?? overlaps;
      } else if (leftEnd is Comparable && rightEnd is Comparable) {
        after = leftEnd.compareTo(rightEnd) > 0;
        overlaps = Overlaps.overlaps(left, right)?.valueBoolean ?? overlaps;
      }

      return FhirBoolean(after && overlaps);
    }

    throw Exception("OverlapsAfter requires CqlInterval arguments.");
  }
}
