import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the string within stringToSub, starting at the 0-based index startIndex, and consisting of length characters.
/// If length is omitted, the substring returned starts at startIndex and continues to the end of stringToSub.
/// If stringToSub or startIndex is null, or startIndex is out of range, the result is null.
class Substring extends OperatorExpression {
  final CqlExpression? length;
  final CqlExpression startIndex;
  final CqlExpression stringToSub;

  Substring({
    required this.stringToSub,
    required this.startIndex,
    this.length,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Substring.fromJson(Map<String, dynamic> json) => Substring(
        stringToSub: CqlExpression.fromJson(json['stringToSub']),
        startIndex: CqlExpression.fromJson(json['startIndex']),
        length: json['length'] != null
            ? CqlExpression.fromJson(json['length'])
            : null,
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
      'stringToSub': stringToSub.toJson(),
      'startIndex': startIndex.toJson(),
    };

    if (length != null) {
      data['length'] = length!.toJson();
    }

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
  String get type => 'Substring';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final str = await stringToSub.execute(context);
    final start = await startIndex.execute(context);
    if (str == null || start == null) return null;

    String? s;
    if (str is fhir.FhirString) {
      s = str.primitiveValue;
    } else if (str is String) {
      s = str;
    }
    if (s == null) return null;

    int? startIdx;
    if (start is fhir.FhirInteger) {
      startIdx = start.valueInt;
    } else if (start is int) {
      startIdx = start;
    }
    if (startIdx == null || startIdx < 0 || startIdx >= s.length) return null;

    int? len;
    if (length != null) {
      final lengthVal = await length!.execute(context);
      if (lengthVal is fhir.FhirInteger) {
        len = lengthVal.valueInt;
      } else if (lengthVal is int) {
        len = lengthVal;
      }
    }

    if (len != null) {
      final end = startIdx + len;
      return fhir.FhirString(
          s.substring(startIdx, end > s.length ? s.length : end));
    }
    return fhir.FhirString(s.substring(startIdx));
  }
}
