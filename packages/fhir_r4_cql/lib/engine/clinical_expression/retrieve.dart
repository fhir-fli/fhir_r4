import 'dart:convert';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The retrieve expression defines clinical data that will be used by
/// the artifact. This expression allows clinically relevant filtering
/// criteria to be provided in a well-defined and computable way. This
/// operation defines the integration boundary for artifacts. The result
/// of a retrieve is defined to return the same data for subsequent
/// invocations within the same evaluation request. This means in
/// particular that patient data updates made during the evaluation
/// request are not visible to the artifact. In effect, the patient data
/// is a snapshot of the data as of the start of the evaluation. This
/// ensures strict deterministic and functional behavior of the artifact,
/// and allows the implementation engine freedom to cache intermediate
/// results in order to improve performance.
class Retrieve extends CqlExpression {
  /// The codeComparator attribute specifies how elements of the code
  /// property should be matched to the terminology. One of 'in', '=', or '~'.
  /// Note that 'in' will resolve to the appropriate terminology matching
  /// operator, resulting in equivalence semantics for value set and code
  /// system membership testing.
  String? codeComparator;

  /// Specifies a terminology filter to be applied as part of the retrieve.
  /// Each codeFilter is specified as
  /// [property] [comparator] [value] or [search] [comparator] [value].
  /// When multiple codeFilters are present, they are all applied (i.e. ANDed).
  /// For simplicity, if this element is specified at all, it will include
  /// the code filter established by the attributes of the retrieve, as well
  /// as any additional filtering criteria as determined by optimization
  /// strategies.
  List<CodeFilterElement>? codeFilter;

  /// The codeProperty attribute optionally specifies which property of the
  /// model contains the Code or Codes for the clinical statement.
  /// Note that implementers could also specify this information elsewhere as
  /// part of an implementation catalog, rather than on each Retrieve
  /// expression, but allowing it to be specified in the retrieve expression
  /// gives the most flexibility. Note also that even in the case of an
  /// implementation catalog, implementations would still need to respect
  /// codeProperty values in the ELM due to the possibility of the retrieve
  /// specifying alternate code filters. From the perspective of ELM, the
  /// specification ensures that ELM can be processed without reference to the
  /// model information.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? codeProperty;

  /// The codeSearch attribute specifies the name of the search path to use
  /// for searching for the values in the code element.
  String? codeSearch;

  /// The codes element optionally specifies an expression that results in a
  /// List<Code> to match against. Only the clinical statements that match at
  /// least one of the specified codes will be returned.
  CqlExpression? codes;

  /// If specified, the context element references an expression that, when
  /// evaluated, provides the context for the retrieve. The expression
  /// evaluates to the instance id that will be used as the context for the
  /// retrieve.
  CqlExpression? context;

  /// The contextProperty attribute optionally specifies which property of
  /// the model contains the context value. Note that implementers could also
  /// specify this information elsewhere as part of an implementation catalog,
  /// rather than on each Retrieve expression, but allowing it to be specified
  /// in the retrieve expression gives the most flexibility. Note also that
  /// even in the case of an implementation catalog, implementations would
  /// still ned to respect contextProperty values in the ELM due to the
  /// possibility of the retrieve specifying alternate context paths. From
  /// the persepctive of ELM, the specification ensures that ELM can be
  /// processed without reference to the model information.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? contextProperty;

  /// The contextSearch attribute specifies the name of the search path to
  /// use for searching for the context values.
  String? contextSearch;

  /// The dataType attribute specifies the type of data being requested.
  QName dataType;

  /// Specifies a date filter to be applied as part of the retrieve. Each
  /// dateFilter is specifies as a
  /// [property], or a [lowProperty]-[highProperty], or a [search], and a [value]
  /// that is an expression that evaluates to an interval of a date or time
  /// value. When multiple dateFilters are present, they are all applied
  /// (i.e. ANDed). For simplicity, if this element is specified at all, it
  /// will include the date filter established by the attributes of the
  /// retrieve, as well as any additional filtering criteria as determined
  /// by optimization strategies.
  List<DateFilterElement>? dateFilter;

  /// The dateHighProperty attribute optionally specifies which property of
  /// the model contains the high component of the clinically relevant date
  /// for the clinical statement.
  /// Note that if the dateProperty is specified, the dateLowProperty and
  /// dateHighProperty attributes must not be present. And conversely, if the
  /// dateLowProperty and dateHighProperty attributes are specified, the
  /// dateProperty must not be present.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? dateHighProperty;

  /// The dateLowProperty attribute optionally specifies which property of
  /// the model contains the low component of the clinically relevant date
  /// for the clinical statement.
  /// Note that if the dateProperty is specified, the dateLowProperty and
  /// dateHighProperty attributes must not be present. And conversely, if
  /// the dateLowProperty and dateHighProperty attributes are specified, the
  /// dateProperty must not be present.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? dateLowProperty;

  /// The dateProperty attribute optionally specifies which property of the
  /// model contains the clinically relevant date for the clinical statement.
  /// This property is expected to reference a property that is either a Date
  /// or DateTime, or an interval of Date or DateTime. In either case, the
  /// result set will only include instances where the value of the
  /// dateProperty is during the date range. For Date or DateTime values,
  /// this means the date is both the same or after the beginning of the
  /// range, and the same or before the end of the range. For Date- or
  /// DateTime-based interval values, this means that the entire interval is
  /// included in the date range.
  /// Instances with no value for the dateProperty will not be included in
  /// the result set if a date range is specified.
  /// Note that if the dateProperty is specified, the dateLowProperty and
  /// dateHighProperty attributes must not be present. And conversely, if the
  /// dateLowProperty and dateHighProperty attributes are specified, the
  /// dateProperty must not be present. If specified, the dateLowProperty and
  /// dateHighProperty values will be used to construct an interval with
  /// inclusive boundaries for the date range.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? dateProperty;

  /// The dateRange element optionally specifies an expression that results
  /// in an Interval&lt;DateTime&gt; to match against. Only those clinical
  /// statements whose date falls within the specified date range will be
  /// returned.
  CqlExpression? dateRange;

  /// The dateSearch attribute specifies the name of the search path to use
  /// for searching for values in the date range specified by the dateRange
  /// element.
  String? dateSearch;

  /// The id element optionally specifies an expression that results in a
  /// value that can be used to filter the retrieve to a specific id.
  CqlExpression? id;

  /// The idProperty attribute specifies which property of the model contains
  /// the Id for the clinical statement.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? idProperty;

  /// The idSearch attribute specifies the name of the search path to use for
  /// searching for the values in the id element.
  String? idSearch;

  /// Specifies a related data type to be included in the result as part of
  /// the retrieve.
  List<IncludeElement>? include;

  /// The localId of another Retrieve that includes the data for this
  /// retrieve. The target Retrieve will have an includeElement referencing
  /// this retrieve.
  String? includedIn;

  /// Specifies other, non-id, -context, -terminology, or -date valued filter
  /// criteria to be applied as part of the retrieve. Each other Filter is
  /// specified as
  /// [property] [comparator] [value] or [search] [comparator] [value].
  /// When multiple otherFilters are present, they are all applied (i.e. ANDed).
  /// This element is included to allow for additional filtering criteria as
  /// determined by optimization strategies.
  List<OtherFilterElement>? otherFilter;

  /// The templateId attribute specifies an optional template to be used. If
  /// specified, the retrieve is defined to return only objects that conform
  /// to the template.
  String? templateId;

  /// The valueSetProperty attribute optionally specifies which property of
  /// the model contains a value set identifier that can be used as an
  /// alternative mechanism for matching the value set of the retrieve, in
  /// the case when no code is specified in the source data.
  /// This attribute is intended to address the case where systems
  /// representing negation rationale for an activity not performed do so by
  /// indicating a valueset identifier rather than a code. For example, when
  /// indicating that a medication was not administered, the set identifier
  /// for the expected medication is used, rather than indicating a specific
  /// medication that was not administered. In this case, the valueSetProperty
  /// attribute allows the retrieve to specify where to look for the value set
  /// identifier without needing to change the conceptual data model or the
  /// CQL logic describing the negated activity.
  /// Note that implementers could also specify this information elsewhere as
  /// part of an implementation catalog, rather than on each Retrieve
  /// expression, but allowing it to be specified in the retrieve expression
  /// gives the most flexibility. From the perspective of ELM, the
  /// specification ensures that ELM can be processed without reference to
  /// the model information.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? valueSetProperty;

  Retrieve({
    this.id,
    this.codes,
    this.dateRange,
    this.context,
    this.include,
    this.codeFilter,
    this.dateFilter,
    this.otherFilter,
    required this.dataType,
    this.templateId,
    this.idProperty,
    this.idSearch,
    this.contextProperty,
    this.contextSearch,
    this.codeProperty,
    this.codeSearch,
    this.codeComparator,
    this.valueSetProperty,
    this.dateProperty,
    this.dateLowProperty,
    this.dateHighProperty,
    this.dateSearch,
    this.includedIn,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Retrieve.fromJson(Map<String, dynamic> json) {
    return Retrieve(
      id: json['id'] != null ? CqlExpression.fromJson(json['id']) : null,
      codes:
          json['codes'] != null ? CqlExpression.fromJson(json['codes']) : null,
      dateRange: json['dateRange'] != null
          ? CqlExpression.fromJson(json['dateRange'])
          : null,
      context: json['context'] != null
          ? CqlExpression.fromJson(json['context'])
          : null,
      include: json['include'] != null
          ? (json['include'] as List)
              .map((e) => IncludeElement.fromJson(e))
              .toList()
          : null,
      codeFilter: json['codeFilter'] != null
          ? (json['codeFilter'] as List)
              .map((e) => CodeFilterElement.fromJson(e))
              .toList()
          : null,
      dateFilter: json['dateFilter'] != null
          ? (json['dateFilter'] as List)
              .map((e) => DateFilterElement.fromJson(e))
              .toList()
          : null,
      otherFilter: json['otherFilter'] != null
          ? (json['otherFilter'] as List)
              .map((e) => OtherFilterElement.fromJson(e))
              .toList()
          : null,
      dataType: QName.fromJson(json['dataType']),
      templateId: json['templateId'],
      idProperty: json['idProperty'],
      idSearch: json['idSearch'],
      contextProperty: json['contextProperty'],
      contextSearch: json['contextSearch'],
      codeProperty: json['codeProperty'],
      codeSearch: json['codeSearch'],
      codeComparator: json['codeComparator'],
      valueSetProperty: json['valueSetProperty'],
      dateProperty: json['dateProperty'],
      dateLowProperty: json['dateLowProperty'],
      dateHighProperty: json['dateHighProperty'],
      dateSearch: json['dateSearch'],
      includedIn: json['includedIn'],
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
  }

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('id', id?.toJson());
    val['dataType'] = dataType.toJson();
    writeNotNull('templateId', templateId);
    writeNotNull('codeProperty', codeProperty);
    writeNotNull('codeComparator', codeComparator);
    val['type'] = type;
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    writeNotNull('codes', codes?.toJson());
    writeNotNull('dateRange', dateRange?.toJson());
    writeNotNull('context', context?.toJson());
    writeNotNull('include', include?.map((e) => e.toJson()).toList());
    writeNotNull('codeFilter', codeFilter?.map((e) => e.toJson()).toList());
    writeNotNull('dateFilter', dateFilter?.map((e) => e.toJson()).toList());
    writeNotNull('otherFilter', otherFilter?.map((e) => e.toJson()).toList());
    writeNotNull('idProperty', idProperty);
    writeNotNull('idSearch', idSearch);
    writeNotNull('contextProperty', contextProperty);
    writeNotNull('contextSearch', contextSearch);
    writeNotNull('codeSearch', codeSearch);
    writeNotNull('valueSetProperty', valueSetProperty);
    writeNotNull('dateProperty', dateProperty);
    writeNotNull('dateLowProperty', dateLowProperty);
    writeNotNull('dateHighProperty', dateHighProperty);
    writeNotNull('dateSearch', dateSearch);
    writeNotNull('includedIn', includedIn);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    return val;
  }

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get type => 'Retrieve';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    return dataType.getReturnTypes(library);
  }

  /// Helper function to write not null values to the query map
  void writeNotNullToQuery(
      Map<String, dynamic> query, String key, dynamic value) {
    if (value != null) {
      query[key] = value;
    }
  }

  @override
  Future<List<dynamic>> execute(Map<String, dynamic> context) async {
    final resourceType = dataType.localPart;

    // Step 1: Get all resources of this type from context
    var resources = _getResourcesFromContext(resourceType, context);
    if (resources.isEmpty) {
      return resources;
    }

    // Step 2: Apply code filtering if present
    if (codes != null && codeProperty != null && codeComparator != null) {
      final codesResult = await codes!.execute(context);
      resources = _filterByCode(resources, codesResult, context);
    }

    return resources;
  }

  /// Gets resources from the execution context. Handles both single resources
  /// (wrapped in a list) and lists of resources.
  static List<dynamic> _getResourcesFromContext(
      String resourceType, Map<String, dynamic> context) {
    if (!context.containsKey(resourceType)) {
      return <dynamic>[];
    }
    final value = context[resourceType];
    if (value is List) {
      return List<dynamic>.from(value);
    }
    if (value != null) {
      return <dynamic>[value];
    }
    return <dynamic>[];
  }

  /// Filters resources by code property using the given comparator.
  List<dynamic> _filterByCode(
      List<dynamic> resources, dynamic codesResult, Map<String, dynamic> context) {
    return resources.where((resource) {
      final resourceCodes = _extractCodes(resource, codeProperty!);
      if (resourceCodes.isEmpty) return false;

      if (codeComparator == '~' || codeComparator == '=') {
        // codesResult should be a list of CqlCode (from ToList(CodeRef(...)))
        final filterCodes = codesResult is List ? codesResult : [codesResult];
        return _matchesCodes(resourceCodes, filterCodes);
      } else if (codeComparator == 'in') {
        // codesResult should be a CqlValueSet (from ValueSetRef)
        if (codesResult is CqlValueSet) {
          return _matchesValueSet(resourceCodes, codesResult, context);
        }
        // Could also be a list of codes
        if (codesResult is List) {
          return _matchesCodes(resourceCodes, codesResult);
        }
      }
      return false;
    }).toList();
  }

  /// Extracts coding values from a resource's property. Returns a list of
  /// {system, code} maps for comparison.
  static List<Map<String, String?>> _extractCodes(
      dynamic resource, String property) {
    if (resource is! Map<String, dynamic>) return [];

    final value = resource[property];
    if (value == null) return [];

    // Single Coding (e.g., Encounter.class)
    if (value is Map<String, dynamic> &&
        value.containsKey('code') &&
        !value.containsKey('coding')) {
      return [
        {'system': value['system']?.toString(), 'code': value['code']?.toString()}
      ];
    }

    // Single CodeableConcept (has 'coding' list)
    if (value is Map<String, dynamic> && value.containsKey('coding')) {
      return _codingsFromCodeableConcept(value);
    }

    // List of CodeableConcepts (e.g., MedicationRequest.category)
    if (value is List) {
      final result = <Map<String, String?>>[];
      for (final item in value) {
        if (item is Map<String, dynamic>) {
          if (item.containsKey('coding')) {
            result.addAll(_codingsFromCodeableConcept(item));
          } else if (item.containsKey('code')) {
            result.add({
              'system': item['system']?.toString(),
              'code': item['code']?.toString(),
            });
          }
        }
      }
      return result;
    }

    // Plain code string
    if (value is String) {
      return [{'system': null, 'code': value}];
    }

    return [];
  }

  static List<Map<String, String?>> _codingsFromCodeableConcept(
      Map<String, dynamic> concept) {
    final codings = concept['coding'];
    if (codings is! List) return [];
    return codings
        .whereType<Map<String, dynamic>>()
        .map((c) => <String, String?>{
              'system': c['system']?.toString(),
              'code': c['code']?.toString(),
            })
        .toList();
  }

  /// Checks if any of the resource codes are equivalent to any filter codes.
  static bool _matchesCodes(
      List<Map<String, String?>> resourceCodes, List<dynamic> filterCodes) {
    for (final rc in resourceCodes) {
      for (final fc in filterCodes) {
        if (fc is CqlCode) {
          if (rc['code'] == fc.code && rc['system'] == fc.system) {
            return true;
          }
        } else if (fc is Map<String, dynamic>) {
          if (rc['code'] == fc['code']?.toString() &&
              rc['system'] == fc['system']?.toString()) {
            return true;
          }
        }
      }
    }
    return false;
  }

  /// Checks if any of the resource codes are in the given value set.
  /// Looks up value set expansion in context['_valueSets'].
  static bool _matchesValueSet(List<Map<String, String?>> resourceCodes,
      CqlValueSet valueSet, Map<String, dynamic> context) {
    // Look up the expansion from context
    final valueSets = context['_valueSets'];
    if (valueSets is Map<String, dynamic>) {
      final expansion = valueSets[valueSet.id];
      if (expansion is List) {
        for (final rc in resourceCodes) {
          for (final ec in expansion) {
            if (ec is Map<String, dynamic> &&
                rc['code'] == ec['code']?.toString() &&
                rc['system'] == ec['system']?.toString()) {
              return true;
            }
          }
        }
      }
    }
    return false;
  }
}
