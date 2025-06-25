import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to determine if the first interval ends the second interval.
/// Returns true if Start(i1) >= Start(i2) and End(i1) = End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// ends _precision_ (left Interval<T>, right Interval<T>) Boolean
/// Description:
///
/// The ends operator returns true if the first interval ends the second. More
/// precisely, if the starting point of the first interval is greater than or
/// equal to the starting point of the second, and the ending point of the first
/// interval is equal to the ending point of the second.
///
/// This operator uses the semantics described in the Start and End operators
/// to determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the ends operator:
///
/// define "EndsIsTrue": Interval[0, 5] ends Interval[-1, 5]
/// define "EndsIsFalse": Interval[-1, 7] ends Interval[0, 7]
/// define "EndsIsNull": Interval[1, 5] ends null
class Ends extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Ends({
    this.precision,
    required super.operand,
    super.isList = true,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Ends.fromJson(Map<String, dynamic> json) => Ends(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: json['operand'] != null
            ? json['operand'] is List
                ? (json['operand'] as List)
                    .map((e) =>
                        CqlExpression.fromJson(e as Map<String, dynamic>))
                    .toList()
                : [
                    CqlExpression.fromJson(
                        json['operand'] as Map<String, dynamic>)
                  ]
            : <CqlExpression>[],
        isList: json['operand'] == null ? false : json['operand'] is List,
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
    if (isList != true) {
      json['isList'] = isList;
    }
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
  String get type => 'Ends';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Ends expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return ends(left, right);
  }

  static FhirBoolean? ends(dynamic left, dynamic right) {
    if (left == null || right == null) {
      return null;
    } else if (left is CqlInterval && right is CqlInterval) {
      final leftStart = left.getStart();
      final rightStart = right.getStart();
      final leftEnd = left.getEnd();
      final rightEnd = right.getEnd();

      /// More precisely, if the starting point of the first interval is
      /// greater than or equal to the starting point of the second, and the
      /// ending point of the first interval is equal to the ending point of
      /// the second.
      if (leftStart == null ||
          leftStart is! Comparable ||
          rightStart == null ||
          rightStart is! Comparable ||
          leftEnd == null ||
          rightEnd == null) {
        return null;
      } else {
        return FhirBoolean(
            leftStart.compareTo(rightStart) >= 0 && leftEnd == rightEnd);
      }
    } else {
      throw ArgumentError(
          'Ends expression must have 2 operands of type CqlInterval. '
          'Found $left (${left.runtimeType}) and $right (${right.runtimeType}).');
    }
  }
}
