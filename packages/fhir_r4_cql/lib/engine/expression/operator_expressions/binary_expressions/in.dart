import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to test for membership in an interval or list.
/// Returns true if the given point is greater than or equal to the starting
/// point of the interval and less than or equal to the ending point of the
/// interval.
/// For open interval boundaries, exclusive comparison operators are used. For
/// closed interval boundaries, if the interval boundary is null, the result of
/// the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is null. If the second argument
/// is null, the result is false.
/// Signature:
///
/// in _precision_ (point T, argument Interval<T>) Boolean
/// Description:
///
/// The in operator for intervals returns true if the given point is equal to
/// the starting or ending point of the interval, or greater than the starting
/// point and less than the ending point. For open interval boundaries,
/// exclusive comparison operators are used. For closed interval boundaries, if
/// the interval boundary is null, the result of the boundary comparison is
/// considered true.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If the first argument is null, the result is null. If the second argument
/// is null, the result is false.
///
/// The following examples illustrate the behavior of the in operator:
///
/// define "InIsTrue": 3 in Interval[0, 5]
/// define "InIsFalse": -1 in Interval[0, 7]
/// define "InIsAlsoFalse": 3 in (null as Interval<Integer>)
///
/// Signature:
///
/// in(element T, argument List<T>) Boolean
/// Description:
///
/// The in operator for lists returns true if the given element is in the given
/// list using equality semantics, with the exception that null elements are
/// considered equal.
///
/// If the first argument is null, the result is true if the list contains any
/// null elements, and false otherwise. If the second argument is null, the
/// result is false.
///
/// The following examples illustrate the behavior of the in operator:
///
/// define "InIsTrue": 5 in { 1, 3, 5, 7 }
/// define "InIsFalse": 5 in { 1, 3 }
/// define "InIsAlsoFalse": 5 in null
/// define "NullInIsTrue": null in { 1, 3, 5, null }
///
/// Signature:
///
/// in(code String, codesystem CodeSystemRef) Boolean
/// in(code Code, codesystem CodeSystemRef) Boolean
/// in(concept Concept, codesystem CodeSystemRef) Boolean
/// in(codes List<Code>, codeSystem CodeSystemRef) Boolean
/// in(List<string>, CodeSystem)
/// in(List<Concept>, CodeSystem)
/// Description:
///
/// The in (Codesystem) operators determine whether or not a given code, or any
/// of a list of codes, is in a particular codesystem. Note that these operators
/// can only be invoked by referencing a defined codesystem.
///
/// For the String overload, if the given code system contains a code with an
/// equivalent code element, the result is true.
///
/// For the Code overload, if the given code system contains an equivalent
/// code, the result is true.
///
/// For the Concept overload, if the given code system contains a code
/// equivalent to any code in the given concept, the result is true.
///
/// For the List<Code> overload, if the given code system contains a code
/// equivalent to any code in the given list, the result is true.
///
/// If the code argument is null, the result is false.
///
/// If the code system reference cannot be resolved, a run-time error is thrown.
///
/// The following examples illustrate the behavior of the in (Codesystem)
/// operator:
///
/// codesystem "SNOMED:2014": 'http://snomed.info/sct'
/// define "StringInCodesystem": '12345678' in "SNOMED:2014"
/// define "CodeInCodesystem": Code { system: "http://snomed.info/sct", code: '12345678' } in "SNOMED:2014"
/// define "NullStringInCodesystem": null as String in "SNOMED:2014" // false
/// Note carefully that the use of the string overloads for membership testing
/// in code systems and value sets is potentially problematic and should be
/// used with caution, if at all
///
/// Signature:
///
/// in(code String, valueset ValueSetRef) Boolean
/// in(code Code, valueset ValueSetRef) Boolean
/// in(concept Concept, valueset ValueSetRef) Boolean
/// in(codes List<Code>, valueset ValueSetRef) Boolean
/// in(List<string>, ValueSet)
/// in(List<Concept>, ValueSet)
/// Description:
///
/// The in (Valueset) operators determine whether or not a given code, or any
/// of a list of codes, is in a particular valueset. Note that these operators
/// can only be invoked by referencing a defined valueset.
///
/// For the String overload, if the given valueset contains a code with an
/// equivalent code element, the result is true. Note that for this overload,
/// because the code being tested cannot specify code system information, if
/// the resolved value set contains codes from multiple code systems, a run-time
/// error is thrown because the operation is ambiguous.
///
/// For the Code overload, if the given valueset contains an equivalent code,
/// the result is true.
///
/// For the Concept overload, if the given valueset contains a code equivalent
/// to any code in the given concept, the result is true.
///
/// For the List<Code> overload, if the given valueset contains a code
/// equivalent to any code in the given list, the result is true.
///
/// If the code argument is null, the result is false.
///
/// If the value set reference cannot be resolved, a run-time error is thrown.
///
/// The following examples illustrate the behavior of the in (Valueset)
/// operator:
///
/// valueset "Acute Pharyngitis": 'http://acute.pharyngitis/valueset'
/// define "StringInValueset": '12345678' in "Acute Pharyngitis"
/// define "CodeInValueset": Code { system: 'http://snomed.info/sct', code: '12345678' } in "Acute Pharyngitis"
/// define "NullStringInValueset": null as String in "Acute Pharyngitis" // false
/// Note carefully that the use of the string overloads for membership testing
/// in code systems and value sets is potentially problematic and should be
/// used with caution, if at all
class In extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  In({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory In.fromJson(Map<String, dynamic> json) => In(
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
    final Map<String, dynamic> json = {};
    if (precision != null) {
      json['precision'] = precision!.toJson();
    }

    json['type'] = type;

    json['operand'] = operand.map((x) => x.toJson()).toList();

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
  String get type => 'In';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('After expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return in_(left, right, context);
  }

  FhirBoolean? in_(dynamic left, dynamic right, Map<String, dynamic> context) {
    final rightReturnTypes = right == null
        ? operand[1].getReturnTypes(context['library'] as CqlLibrary)
        : null;
    if (right is CqlInterval ||
        (rightReturnTypes != null &&
            rightReturnTypes.isNotEmpty &&
            rightReturnTypes.first == 'CqlInterval')) {
      if (left == null) {
        return null;
      } else if (right == null) {
        return FhirBoolean(false);
      } else {
        return FhirBoolean(right.contains(left));
      }
    } else if (right is List ||
        (rightReturnTypes != null &&
            rightReturnTypes.isNotEmpty &&
            rightReturnTypes.first.contains('List'))) {
      if (right == null) {
        return FhirBoolean(false);
      } else {
        return FhirBoolean(right.contains(left));
      }
    } else if (right is CqlValueSet) {
      // final String url = right.id;
      // ignore: unused_local_variable
      // final response = get(Uri.parse(url));
    } else {
      throw ArgumentError(
          'In: Right operand must be of type Interval, List, or include Codes and ValueSets');
    }
    return null;
  }
}
