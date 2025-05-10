import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Mode operator returns the statistical mode of the elements in source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// Mode(argument List<T>) T
/// Description:
///
/// The Mode operator returns the statistical mode of the elements in source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the Mode operator:
///
/// define "DecimalMode": Mode({ 2.0, 2.0, 8.0, 6.0, 8.0, 8.0 }) // 8.0
/// define "QuantityMode": Mode({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 2.0 'mg' }) // 2.0 'mg'
/// define "ModeIsNull": Mode({ null as Quantity, null as Quantity, null as Quantity })
/// define "ModeIsAlsoNull": Mode(null as List<Decimal>)
class Mode extends AggregateExpression {
  Mode({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Mode.fromJson(Map<String, dynamic> json) => Mode(
        source: CqlExpression.fromJson(json['source']!),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifierExpression.fromJson(e))
                .toList(),
        path: json['path'],
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
      'source': source.toJson(),
    };

    if (signature != null) {
      json['signature'] = List<dynamic>.from(signature!.map((x) => x.toJson()));
    }

    if (path != null) {
      json['path'] = path;
    }

    if (annotation != null) {
      json['annotation'] =
          List<dynamic>.from(annotation!.map((x) => x.toJson()));
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
  String get type => 'Mode';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = source.getReturnTypes(library).toSet();
    return returnTypes.toList();
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return mode(sourceResult);
  }

  // TODO(Dokotela): what if there is more than 1 mode?
  static dynamic mode(dynamic sourceResult) {
    if (sourceResult == null) {
      return null;
    }
    if (sourceResult is List) {
      if (sourceResult.isEmpty) {
        return null;
      }
      sourceResult.removeWhere((element) => element == null);
      if (sourceResult.isEmpty) {
        return null;
      }

      Map<dynamic, int> frequencyMap = {};
      for (var element in sourceResult) {
        if (!frequencyMap.containsKey(element)) {
          frequencyMap[element] = 1;
        } else {
          frequencyMap[element] = frequencyMap[element]! + 1;
        }
      }

      // Find the highest frequency
      int maxFreq = frequencyMap.values.fold(0, (max, e) => e > max ? e : max);

      // Collect all items that have the highest frequency
      var modes = frequencyMap.entries
          .where((entry) => entry.value == maxFreq)
          .map((entry) => entry.key)
          .toList();

      return modes.first;
    }
    throw ArgumentError(
        'Invalid source type for Mode: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'Mode { source: $source }';
}
