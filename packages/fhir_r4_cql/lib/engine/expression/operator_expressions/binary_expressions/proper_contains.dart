import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to check if the first operand properly contains the second operand.
/// Returns true if the given point is greater than the starting point of the interval and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperContains extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  ProperContains({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ProperContains.fromJson(Map<String, dynamic> json) => ProperContains(
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
  String toString() => toJson().toString();

  @override
  String get type => 'ProperContains';

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('ProperContains expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return properContains(left, right, precision);
  }

  /// CQL-aware equality for list membership testing.
  ///
  /// Uses [Equal.equal] but adds proper precision handling for [FhirTime]
  /// and [FhirDateTimeBase] values. When two temporal values have different
  /// precisions (e.g. seconds vs milliseconds), the result is `null` per the
  /// CQL spec, even though [FhirTime._compare] may return `false`.
  static FhirBoolean? _cqlEqual(dynamic a, dynamic b) {
    if (a == null || b == null) return null;
    // Handle FhirTime precision differences
    if (a is FhirTime && b is FhirTime) {
      final aHasMs = a.millisecond != null;
      final bHasMs = b.millisecond != null;
      if (aHasMs != bHasMs) {
        // Different precisions: compare at the lower precision (seconds)
        // If they match at seconds, the result is null (indeterminate)
        // If they differ at seconds, the result is false (definitely not equal)
        final aSecStr = a.valueString?.split('.').first;
        final bSecStr = b.valueString?.split('.').first;
        if (aSecStr == bSecStr) return null;
        return FhirBoolean(false);
      }
    }
    // Handle FhirDateTimeBase precision differences
    // Equal.equal already delegates to FhirDateTimeBase.isEqual which
    // properly returns null for different precisions.
    return Equal.equal(a, b);
  }

  static FhirBoolean? properContains(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left is CqlInterval) {
      if (right == null) return null;
      // Per CQL spec: properly contains means point is strictly between
      // start and end (greater than start AND less than end)
      final start = left.getStart();
      final end = left.getEnd();
      if (start == null || end == null) return null;
      // Use After/Before for date/time types, Greater/Less for numerics
      final FhirBoolean? afterStart;
      final FhirBoolean? beforeEnd;
      if (right is FhirDateTimeBase || right is FhirTime) {
        afterStart = After.after(right, start, precision);
        beforeEnd = Before.before(right, end, precision);
      } else {
        afterStart = Greater.greater(right, start);
        beforeEnd = Less.less(right, end);
      }
      return And.and(afterStart, beforeEnd);
    } else if (left == null) {
      return null;
    } else if (left is List) {
      // For lists, "properly contains" means:
      // 1. The element is in the list (using equality semantics, with null == null)
      // 2. The list has at least one other distinct element
      //
      // Use equality semantics (which can return null for precision mismatches)
      // with the exception that null elements are considered equal to null.
      bool found = false;
      bool hasNull = false;

      // First check if the element is in the list
      if (right == null) {
        // Searching for null: check if list contains any null element
        found = left.any((e) => e == null);
      } else {
        // Searching for a non-null value: use equality semantics
        for (final element in left) {
          if (element == null) {
            continue;
          }
          final eq = _cqlEqual(element, right);
          if (eq?.valueBoolean == true) {
            found = true;
            break;
          }
          if (eq == null) {
            hasNull = true;
          }
        }
      }

      if (!found && hasNull) {
        // Indeterminate: some comparison returned null (e.g. precision mismatch)
        return null;
      }
      if (!found) {
        return FhirBoolean(false);
      }

      // Element found; now check that the list has at least one other
      // distinct element (i.e., the list is not solely composed of the
      // searched element).
      bool hasOther = false;
      for (final element in left) {
        if (right == null) {
          if (element != null) {
            hasOther = true;
            break;
          }
        } else {
          if (element == null) {
            hasOther = true;
            break;
          }
          final eq = _cqlEqual(element, right);
          if (eq?.valueBoolean == false) {
            hasOther = true;
            break;
          }
          // If eq is null (indeterminate), it might be a different element,
          // but we can't be sure — don't count it as "other".
        }
      }

      return FhirBoolean(hasOther);
    }
    return null;
  }
}
