import 'package:fhir_r4/fhir_r4.dart' hide Quantity, SortDirection;

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Query operator represents a clause-based query.
class Query extends CqlExpression {
  List<LetClause>? let;
  List<RelationshipClause>? relationship;
  ReturnClause? returnClause;
  SortClause? sort;
  AggregateClause? aggregate;
  List<AliasedQuerySource> source;
  CqlExpression? where;

  Query({
    required this.source,
    this.let,
    this.relationship,
    this.where,
    this.returnClause,
    this.sort,
    this.aggregate,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Query.fromJson(Map<String, dynamic> json) => Query(
        source: List<AliasedQuerySource>.from(
            json['source'].map((x) => AliasedQuerySource.fromJson(x))),
        let: json['let'] == null
            ? null
            : List<LetClause>.from(
                json['let'].map((x) => LetClause.fromJson(x))),
        relationship: json['relationship'] == null
            ? null
            : List<RelationshipClause>.from(json['relationship']
                .map((x) => RelationshipClause.fromJson(x))),
        where: json['where'] == null
            ? null
            : CqlExpression.fromJson(json['where']),
        returnClause: json['return'] == null
            ? null
            : ReturnClause.fromJson(json['return']),
        sort: json['sort'] == null ? null : SortClause.fromJson(json['sort']),
        aggregate: json['aggregate'] == null
            ? null
            : AggregateClause.fromJson(json['aggregate']),
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
    final Map<String, dynamic> val = {
      'type': type,
      'source': source.map((x) => x.toJson()).toList(),
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('let', let?.map((e) => e.toJson()).toList());
    writeNotNull('relationship', relationship?.map((e) => e.toJson()).toList());
    writeNotNull('where', where?.toJson());
    writeNotNull('return', returnClause?.toJson());
    writeNotNull('sort', sort?.toJson());
    writeNotNull('aggregate', aggregate?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Query';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = <String>[];
    for (final s in source) {
      returnTypes.addAll(s.getReturnTypes(library));
    }
    return returnTypes.toSet().toList();
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // 1) Build the Cartesian product of all sources
    List<Map<String, dynamic>> rows = [{}]; // ← start with a single, empty map
    // Track if source was originally a singleton (non-list) value
    bool singletonSource = false;
    for (final src in source) {
      final dynamic rawValue = await src.expression.execute(context);
      if (rawValue == null) return null;
      if (rawValue is! Iterable) singletonSource = true;
      final Iterable listValue = rawValue is Iterable ? rawValue : [rawValue];

      final List<Map<String, dynamic>> newRows = [];
      for (final row in rows) {
        for (final element in listValue) {
          // clone the existing row and add this source's alias → element
          final newRow = Map<String, dynamic>.from(row)..[src.alias] = element;
          newRows.add(newRow);
        }
      }
      rows = newRows;
    }

    // 2) LET clauses
    if (let != null) {
      for (final clause in let!) {
        for (final row in rows) {
          final execCtx = <String, dynamic>{}
            ..addAll(context)
            ..addAll(row);
          final v = await clause.expression.execute(execCtx);
          row[clause.identifier] = v;
        }
      }
    }

    // 3) RELATIONSHIP clauses (With/Without)
    if (relationship != null) {
      for (final rel in relationship!) {
        final relList = await rel.expression.execute(context);
        if (relList == null || relList is! Iterable) {
          if (rel is With) {
            rows = [];
          }
          continue;
        }

        final List<Map<String, dynamic>> filtered = [];
        for (final row in rows) {
          bool hasMatch = false;
          for (final relElement in relList) {
            if (rel.suchThat != null) {
              final execCtx = <String, dynamic>{}
                ..addAll(context)
                ..addAll(row)
                ..[rel.alias] = relElement;
              final cond = await rel.suchThat!.execute(execCtx);
              if (cond == true ||
                  (cond is FhirBoolean && cond.valueBoolean == true)) {
                hasMatch = true;
                break;
              }
            } else {
              hasMatch = true;
              break;
            }
          }

          if (rel is With && hasMatch) {
            filtered.add(row);
          } else if (rel is Without && !hasMatch) {
            filtered.add(row);
          }
        }
        rows = filtered;
      }
    }

    // 4) WHERE filter
    if (where != null) {
      final List<Map<String, dynamic>> filtered = [];
      for (final row in rows) {
        final execCtx = <String, dynamic>{}
          ..addAll(context)
          ..addAll(row);
        final dynamic cond = await where!.execute(execCtx);
        if (cond == true ||
            (cond is FhirBoolean && cond.valueBoolean == true)) {
          filtered.add(row);
        }
      }
      rows = filtered;
    }

    // 5) SORT
    if (sort != null && sort!.by.isNotEmpty) {
      // Precompute sort keys for each row
      final List<List<Comparable?>> keyLists = [];
      final List<bool> descending = sort!.by
          .map((spec) =>
              spec.direction == SortDirection.desc ||
              spec.direction == SortDirection.descending)
          .toList();

      for (final row in rows) {
        final execCtx = <String, dynamic>{}
          ..addAll(context)
          ..addAll(row);
        final List<Comparable?> keys = [];
        for (final spec in sort!.by) {
          dynamic rawKey;
          if (spec is ByExpression) {
            rawKey = await spec.expression.execute(execCtx);
          } else if (spec is ByColumn) {
            rawKey = spec.path.split('.').fold<dynamic>(
                  row,
                  (curr, key) =>
                      curr is Map<String, dynamic> ? curr[key] : null,
                );
          } else if (spec is ByDirection) {
            // For ByDirection on simple lists, sort by the element value itself
            rawKey = row[source.first.alias];
          } else {
            throw ArgumentError('Unknown SortByItem type: ${spec.type}');
          }
          if (rawKey != null && rawKey is! Comparable) {
            throw ArgumentError('Sort key must be Comparable');
          }
          keys.add(rawKey as Comparable?);
        }
        keyLists.add(keys);
      }

      // Sort rows using the precomputed keys
      final List<int> indices = List<int>.generate(rows.length, (i) => i);
      indices.sort((i, j) {
        final k1 = keyLists[i], k2 = keyLists[j];
        for (var idx = 0; idx < k1.length; idx++) {
          final a = k1[idx], b = k2[idx];
          final int cmp = (a == null && b == null)
              ? 0
              : (a == null ? -1 : (b == null ? 1 : a.compareTo(b)));
          if (cmp != 0) {
            return descending[idx] ? -cmp : cmp;
          }
        }
        return 0;
      });
      rows = [for (final idx in indices) rows[idx]];
    }

    // 5a) AGGREGATE fold (mutually exclusive with return clause)
    if (aggregate != null) {
      // Optional distinct on source rows — deduplicate on all source aliases
      if (aggregate!.distinct) {
        final aliases = source.map((s) => s.alias).toList();
        final seen = <String>{};
        rows = rows.where((row) {
          final key = aliases.map((a) => '${row[a]}').join('\x00');
          return seen.add(key);
        }).toList();
      }

      // Initialize accumulator
      dynamic accumulator = aggregate!.starting != null
          ? await aggregate!.starting!.execute(context)
          : null;

      // Fold over rows
      for (final row in rows) {
        final execCtx = <String, dynamic>{}
          ..addAll(context)
          ..addAll(row)
          ..[aggregate!.identifier] = accumulator;
        accumulator = await aggregate!.expression.execute(execCtx);
      }
      return accumulator;
    }

    // 5b) RETURN projection + DISTINCT
    final List<dynamic> result = [];
    if (returnClause != null) {
      for (final row in rows) {
        final execCtx = <String, dynamic>{}
          ..addAll(context)
          ..addAll(row);
        final res = await returnClause!.expression.execute(execCtx);
        result.add(res);
      }
      if (returnClause!.distinct ?? false) {
        return result.toSet().toList();
      }
    } else if (source.length == 1) {
      // No return clause with single source: return the source elements directly
      final alias = source.first.alias;
      for (final row in rows) {
        result.add(row[alias]);
      }
    } else {
      // No return clause with multiple sources: return the row-maps
      return rows;
    }

    // For singleton sources, return the scalar result or null if filtered out
    if (singletonSource) {
      if (result.length == 1) {
        return result.first;
      }
      if (result.isEmpty) {
        return null;
      }
    }

    return result;
  }

  @override
  String toString() {
    return 'Query(source: $source, let: $let, relationship: $relationship, where: $where, returnClause: $returnClause, sort: $sort, aggregate: $aggregate)';
  }
}
