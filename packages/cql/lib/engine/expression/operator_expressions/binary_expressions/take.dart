// import 'package:fhir_r4/fhir_r4.dart';

// import '../../../../../cql.dart';

// /// First operator returns the first element in a list.
// /// If the order by attribute is specified, the list is sorted by that
// /// ordering prior to returning the first element.
// /// If the argument is null, the result is null.
// /// Signature:
// ///
// /// Take(argument List<T>, number Integer) List<T>
// /// Description:
// ///
// /// The Take operator returns the first number elements from the given list. If
// /// the list has less than number elements, the result only contains the
// /// elements in the list.
// ///
// /// If the source list is null, the result is null.
// ///
// /// If number is null, or 0 or less, the result is an empty list.
// ///
// /// The following examples illustrate the behavior of the Take operator:
// ///
// /// define "Take2": Take({ 1, 2, 3, 4 }, 2) // { 1, 2 }
// /// define "TakeTooMany": Take({ 1, 2 }, 3) // { 1, 2 }
// /// define "TakeEmpty": Take({ 1, 2, 3, 4 }, null) // { }
// /// define "TakeIsNull": Take(null, 2)
// class Take extends BinaryExpression {
//   Take({
//     required super.operand,
//     super.annotation,
//     super.localId,
//     super.locator,
//     super.resultTypeName,
//     super.resultTypeSpecifier,
//   });

//   factory Take.fromJson(Map<String, dynamic> json) => Take(
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
//   String get type => 'Take';

//   @override
//   List<String> getReturnTypes(CqlLibrary library) => const [List];

//   @override
//   List<dynamic>? execute(Map<String, dynamic> context) {
//     if (operand.length != 2) {
//       throw ArgumentError('After expression must have 2 operands');
//     }
//     final left = operand[0].execute(context);
//     final right = operand[1].execute(context);
//     return take(left, right);
//   }

//   static List<dynamic>? take(dynamic left, dynamic right) {
//     if (left == null) {
//       return null;
//     } else if (right == null) {
//       return [];
//     } else if ((right is num && right <= 0) ||
//         (right is FhirNumber && (right.value ?? 0) <= 0) ||
//         (right is FhirInteger64 && (right.value?.toInt() ?? 0) <= 0) ||
//         (right is BigInt && right.toInt() <= 0)) {
//       return [];
//     } else if (left is List) {
//       if (right is FhirNumber) {
//         return left.take(right.value?.toInt() ?? 0).toList();
//       } else if (right is FhirInteger64) {
//         return left.take(right.value?.toInt() ?? 0).toList();
//       } else if (right is BigInt) {
//         return left.take(right.toInt()).toList();
//       } else if (right is num) {
//         return left.take(right.toInt()).toList();
//       } else {
//         throw ArgumentError('Take operator requires a list and an integer');
//       }
//     } else {
//       throw ArgumentError('Take operator requires a list and an integer');
//     }
//   }
// }
