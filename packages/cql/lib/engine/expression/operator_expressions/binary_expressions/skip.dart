// import 'package:fhir_r4/fhir_r4.dart';

// import '../../../../../cql.dart';

// /// First operator returns the first element in a list.
// /// If the order by attribute is specified, the list is sorted by that
// /// ordering prior to returning the first element.
// /// If the argument is null, the result is null.
// /// Signature:
// ///
// /// Skip(argument List<T>, number Integer) List<T>
// /// Description:
// ///
// /// The Skip operator returns the elements in the list, skipping the first
// /// number elements. If the list has less number elements, the result is empty.
// ///
// /// If the source list is null, the result is null.
// ///
// /// If the number of elements is null, the result is the entire list, no
// /// elements are skipped.
// ///
// /// If the number of elements is less than zero, the result is an empty list.
// ///
// /// The following examples illustrate the behavior of the Skip operator:
// ///
// /// define "Skip2": Skip({ 1, 2, 3, 4, 5 }, 2) // { 3, 4, 5 }
// /// define "SkipNull": Skip({ 1, 3, 5 }, null) // { 1, 3, 5 }
// /// define "SkipEmpty": Skip({ 1, 3, 5 }, -1) // { }
// /// define "SkipIsNull": Skip(null, 2)
// class Skip extends BinaryExpression {
//   Skip({
//     required super.operand,
//     super.annotation,
//     super.localId,
//     super.locator,
//     super.resultTypeName,
//     super.resultTypeSpecifier,
//   });

//   factory Skip.fromJson(Map<String, dynamic> json) => Skip(
//         operand: List<CqlExpression>.from(
//           json['operand'].map(
//             (x) => CqlExpression.fromJson(x),
//           ),
//         ),
//         annotation: json['annotation'] != null
//             ? (json['annotation'] as List)
//                 .map((e) => CqlToElmBase.fromJson(e))
//                 .toList()
//             : null,
//         localId: json['localId'],
//         locator: json['locator'],
//         resultTypeName: json['resultTypeName'],
//         resultTypeSpecifier: json['resultTypeSpecifier'] != null
//             ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
//             : null,
//       );

//   @override
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['type'] = type;
//     data['operand'] = operand.map((e) => e.toJson()).toList();
//     if (annotation != null) {
//       data['annotation'] = annotation!.map((e) => e.toJson()).toList();
//     }
//     if (localId != null) {
//       data['localId'] = localId;
//     }
//     if (locator != null) {
//       data['locator'] = locator;
//     }
//     if (resultTypeName != null) {
//       data['resultTypeName'] = resultTypeName;
//     }
//     if (resultTypeSpecifier != null) {
//       data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
//     }
//     return data;
//   }

//   @override
//   String get type => 'Skip';

//   @override
//   List<String> getReturnTypes(CqlLibrary library) => const [List];

//   @override
//  Future<List<dynamic>?> execute(Map<String, dynamic> context) async {
//     if (operand.length != 2) {
//       throw ArgumentError('After expression must have 2 operands');
//     }
//     final left = await operand[0].execute(context);
//     final right = await operand[1].execute(context);
//     return skip(left, right);
//   }

//   static List<dynamic>? skip(dynamic left, dynamic right) {
//     if (left == null) {
//       return null;
//     } else if (right == null) {
//       return left;
//     } else if ((right is num && right < 0) ||
//         (right is FhirNumber && (right.value ?? 0) < 0) ||
//         (right is FhirInteger64 && (right.value?.toInt() ?? 0) < 0) ||
//         (right is BigInt && right.toInt() < 0)) {
//       return [];
//     } else if (left is List) {
//       if (right is FhirNumber) {
//         return left.skip(right.value?.toInt() ?? 0).toList();
//       } else if (right is FhirInteger64) {
//         return left.skip(right.value?.toInt() ?? 0).toList();
//       } else if (right is BigInt) {
//         return left.skip(right.toInt()).toList();
//       } else if (right is num) {
//         return left.skip(right.toInt()).toList();
//       } else {
//         throw ArgumentError('Take operator requires a list and an integer');
//       }
//     } else {
//       throw ArgumentError('Take operator requires a list and an integer');
//     }
//   }
// }
