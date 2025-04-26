import 'package:fhir_r4/fhir_r4.dart';

import '../../../cql.dart';

/// The Slice operator returns a portion of the elements in a list, beginning at the start index and ending just before the ending index.
/// If the source list is null, the result is null.
/// If the startIndex is null, the slice begins at the first element of the list.
/// If the endIndex is null, the slice continues to the last element of the list.
/// If the startIndex or endIndex is less than 0, or if the endIndex is less than the startIndex, the result is an empty list.
class Slice extends OperatorExpression {
  final CqlExpression endIndex;
  final CqlExpression source;
  final CqlExpression startIndex;

  Slice({
    required this.source,
    required this.startIndex,
    required this.endIndex,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Slice.fromJson(Map<String, dynamic> json) => Slice(
        source: CqlExpression.fromJson(json['source']),
        startIndex: CqlExpression.fromJson(json['startIndex']),
        endIndex: CqlExpression.fromJson(json['endIndex']),
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
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
      'startIndex': startIndex.toJson(),
      'endIndex': endIndex.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'Slice';

  @override
  Future<List<dynamic>?> execute(Map<String, dynamic> context) async {
    final start = await startIndex.execute(context);
    final end = await endIndex.execute(context);
    final src = await source.execute(context);
    return slice(src, start, end);
  }

  static List<dynamic>? slice(dynamic src, dynamic start, dynamic end) {
    if (src == null) {
      return null;
    } else if (src is! List) {
      throw ArgumentError('Take operator requires a list and an integer');
    } else if (start == null) {
      return [];
    } else if ((start is num && start < 0) ||
        (start is FhirNumber && (start.valueNum ?? 0) < 0) ||
        (start is FhirInteger64 && (start.valueBigInt?.toInt() ?? 0) < 0) ||
        (start is BigInt && start.toInt() < 0)) {
      return [];
    } else {
      final startIndex = start is int
          ? start
          : start is FhirNumber && start.valueNum is int
              ? start.valueNum! as int
              : null;
      if (startIndex == null) {
        throw ArgumentError(
            'Slices must have a start argument that is an integer');
      }
      final endIndex = end is int
          ? end
          : end is FhirNumber && end.valueNum is int
              ? end.valueNum! as int
              : null;
      return src.sublist(
          startIndex,
          endIndex != null
              ? endIndex > src.length
                  ? src.length
                  : endIndex
              : null);
    }
  }
}
