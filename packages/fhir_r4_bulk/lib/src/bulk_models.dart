import 'package:fhir_r4/fhir_r4.dart';

/// The shapes of the Bulk Data Access IG 2.0.0 export operation that a
/// client and a server both read: the kick-off parameters, a `_typeFilter`
/// query, and the complete-status manifest. Quoted text is from
/// export.html of that version, read whole 2026-09-08.
///
/// `_outputFormat` values a server SHALL accept. export.html, Query
/// Parameters, `_outputFormat`, verbatim: "The server SHALL accept the full
/// content type of application/fhir+ndjson as well as the abbreviated
/// representations application/ndjson and ndjson."
const bulkOutputFormats = [
  'application/fhir+ndjson',
  'application/ndjson',
  'ndjson',
];

/// The kick-off parameters of `$export`, from a query string or a POSTed
/// `Parameters` resource.
///
/// export.html, Bulk Data Kick-off Request, verbatim: "A client MAY repeat
/// kick-off parameters that accept comma delimited values multiple times in
/// a kick-off request. The server SHALL treat the values provided as if they
/// were comma delimited values within a single instance of the parameter."
/// So `_type`, `_elements`, `includeAssociatedData` and `_typeFilter` are
/// lists here whichever way they arrived.
class BulkExportKickoff {
  /// Creates the parameters; every one is optional in the specification.
  const BulkExportKickoff({
    this.outputFormat,
    this.since,
    this.types = const [],
    this.elements = const [],
    this.patients = const [],
    this.includeAssociatedData = const [],
    this.typeFilters = const [],
  });

  /// From `Request.url.queryParametersAll` (every value of every repeat).
  /// Throws [FormatException] for a `_since` that is not a date-time and for
  /// a `_typeFilter` entry without a `?`. A `_outputFormat` outside
  /// [bulkOutputFormats] is kept as given; see [outputFormatSupported].
  factory BulkExportKickoff.fromQuery(Map<String, List<String>> query) {
    List<String> list(String name) => [
          for (final value in query[name] ?? const <String>[])
            for (final part in value.split(','))
              if (part.trim().isNotEmpty) part.trim(),
        ];
    String? single(String name) {
      final values = query[name];
      return values == null || values.isEmpty ? null : values.last;
    }

    return BulkExportKickoff(
      outputFormat: single('_outputFormat'),
      since: _since(single('_since')),
      types: list('_type'),
      elements: list('_elements'),
      patients: list('patient'),
      includeAssociatedData: list('includeAssociatedData'),
      typeFilters: list('_typeFilter').map(TypeFilter.parse).toList(),
    );
  }

  /// From the `Parameters` body of a POST kick-off. String-valued
  /// parameters are split on commas as query values are; `patient` is a
  /// `valueReference`, and its `reference` is kept.
  factory BulkExportKickoff.fromParameters(Parameters parameters) {
    final query = <String, List<String>>{};
    for (final p in parameters.parameter ?? const <ParametersParameter>[]) {
      final name = p.name.valueString;
      if (name == null) continue;
      final text = _text(p.valueX);
      if (text != null) query.putIfAbsent(name, () => []).add(text);
    }
    return BulkExportKickoff.fromQuery(query);
  }

  /// The text of a POSTed parameter value: a reference's `reference`, a
  /// primitive's value.
  static String? _text(FhirBase? value) {
    if (value is Reference) return value.reference?.valueString;
    if (value is PrimitiveType) return value.primitiveValue;
    return null;
  }

  static DateTime? _since(String? value) {
    if (value == null) return null;
    final parsed = DateTime.tryParse(value);
    if (parsed == null) {
      throw FormatException('Invalid _since value: $value', value);
    }
    return parsed;
  }

  /// `_outputFormat` as given, or null for the default. export.html:
  /// "Defaults to application/fhir+ndjson."
  final String? outputFormat;

  /// `_since`. export.html: "Resources will be included in the response if
  /// their state has changed after the supplied time".
  final DateTime? since;

  /// `_type`, split: "string of comma-delimited FHIR resource types".
  final List<String> types;

  /// `_elements`, split: "string of comma-delimited FHIR Elements".
  final List<String> elements;

  /// `patient` references (POST requests only).
  final List<String> patients;

  /// `includeAssociatedData` values, split.
  final List<String> includeAssociatedData;

  /// `_typeFilter` queries, split on commas and parsed.
  final List<TypeFilter> typeFilters;

  /// Whether [outputFormat] is absent or one of [bulkOutputFormats].
  bool get outputFormatSupported =>
      outputFormat == null || bulkOutputFormats.contains(outputFormat);

  /// The `_type` values that are not R4 resource type names.
  List<String> get unknownTypes =>
      types.where((t) => R4ResourceType.fromString(t) == null).toList();

  /// The parameters as a query map, repeated values comma-joined, for a
  /// GET kick-off.
  Map<String, String> toQuery() => {
        if (outputFormat != null) '_outputFormat': outputFormat!,
        if (since != null) '_since': since!.toUtc().toIso8601String(),
        if (types.isNotEmpty) '_type': types.join(','),
        if (elements.isNotEmpty) '_elements': elements.join(','),
        if (includeAssociatedData.isNotEmpty)
          'includeAssociatedData': includeAssociatedData.join(','),
        if (typeFilters.isNotEmpty)
          '_typeFilter': typeFilters.map((f) => f.toString()).join(','),
      };
}

/// One `_typeFilter` query: `ResourceType?search`. export.html, `_typeFilter
/// Experimental Query Parameter`, verbatim: "The value of the _typeFilter
/// parameter is a comma-separated list of FHIR REST API queries that
/// restrict the results of the export. FHIR search response parameters such
/// as _include and _sort SHALL NOT be used."
class TypeFilter {
  /// Creates a filter on [resourceType] with the search [query] (the part
  /// after the `?`).
  const TypeFilter(this.resourceType, this.query);

  /// Parses `Type?query`; throws [FormatException] when there is no `?`.
  factory TypeFilter.parse(String filter) {
    final i = filter.indexOf('?');
    if (i < 1) {
      throw FormatException(
        'Invalid _typeFilter: $filter. Expected ResourceType?searchParams',
        filter,
      );
    }
    return TypeFilter(filter.substring(0, i), filter.substring(i + 1));
  }

  /// The resource type name before the `?`.
  final String resourceType;

  /// The search query after the `?`, still URL-encoded as it arrived.
  final String query;

  /// Whether [resourceType] is an R4 resource type name.
  bool get resourceTypeKnown => R4ResourceType.fromString(resourceType) != null;

  /// The query decoded into search parameters, every repeat kept.
  Map<String, List<String>> get searchParameters =>
      Uri(query: query).queryParametersAll;

  /// The response parameters the query carries, which the specification
  /// forbids: `_include` and `_sort` by name, `_revinclude` as the other
  /// include.
  List<String> get responseParameters => [
        for (final name in const ['_include', '_revinclude', '_sort'])
          if (searchParameters.containsKey(name)) name,
      ];

  @override
  String toString() => '$resourceType?$query';
}

/// One entry of a manifest's `output`, `deleted` or `error` array.
/// export.html, Response - Complete Status: "Each file item SHALL contain
/// the following fields: type ... url"; "Each file item MAY optionally
/// contain the following field: count - the number of resources in the
/// file, represented as a JSON number."
class BulkExportFile {
  /// Creates a file item.
  const BulkExportFile({required this.type, required this.url, this.count});

  /// From a manifest item; throws [FormatException] without `type` or `url`.
  factory BulkExportFile.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final url = json['url'];
    if (type is! String || url is! String || url.isEmpty) {
      throw FormatException('A file item needs type and url: $json', json);
    }
    final count = json['count'];
    return BulkExportFile(
      type: type,
      url: url,
      count: count is num ? count.toInt() : null,
    );
  }

  /// "the FHIR resource type that is contained in the file."
  final String type;

  /// "the absolute path to the file."
  final String url;

  /// "the number of resources in the file", when the server gives it.
  final int? count;

  /// The item as JSON.
  Map<String, dynamic> toJson() => {
        'type': type,
        'url': url,
        if (count != null) 'count': count,
      };
}

/// The complete-status response body. export.html, Response - Complete
/// Status: `transactionTime`, `request`, `requiresAccessToken`, `output`
/// and `error` are required, `deleted` and `extension` optional.
class BulkExportManifest {
  /// Creates a manifest.
  const BulkExportManifest({
    required this.transactionTime,
    required this.request,
    required this.requiresAccessToken,
    this.output = const [],
    this.deleted = const [],
    this.error = const [],
    this.extension,
  });

  /// From the response body; throws [FormatException] when a required field
  /// is missing or a file item is malformed.
  factory BulkExportManifest.fromJson(Map<String, dynamic> json) {
    final time = json['transactionTime'];
    final request = json['request'];
    final requires = json['requiresAccessToken'];
    final parsedTime = time is String ? DateTime.tryParse(time) : null;
    if (parsedTime == null || request is! String || requires is! bool) {
      throw FormatException(
        'A manifest needs transactionTime, request and requiresAccessToken',
        json,
      );
    }
    List<BulkExportFile> files(String name, {required bool required}) {
      final items = json[name];
      if (items == null && !required) return const [];
      if (items is! List) {
        throw FormatException('A manifest needs the $name array', json);
      }
      return [
        for (final item in items)
          BulkExportFile.fromJson(item as Map<String, dynamic>),
      ];
    }

    final extension = json['extension'];
    return BulkExportManifest(
      transactionTime: parsedTime,
      request: request,
      requiresAccessToken: requires,
      output: files('output', required: true),
      deleted: files('deleted', required: false),
      error: files('error', required: true),
      extension: extension is Map<String, dynamic> ? extension : null,
    );
  }

  /// "Indicates the server's time when the query is run."
  final DateTime transactionTime;

  /// "The full URL of the original Bulk Data kick-off request."
  final String request;

  /// "Indicates whether downloading the generated files requires the same
  /// authorization mechanism as the $export operation itself."
  final bool requiresAccessToken;

  /// "An array of file items with one entry for each generated file."
  final List<BulkExportFile> output;

  /// "An array of deleted file items following the same structure as the
  /// output array."
  final List<BulkExportFile> deleted;

  /// "Array of message file items following the same structure as the
  /// output array."
  final List<BulkExportFile> error;

  /// The reserved `extension` object, "a pre-coordinated JSON object".
  final Map<String, dynamic>? extension;

  /// The manifest as the JSON body a server returns.
  Map<String, dynamic> toJson() => {
        'transactionTime': transactionTime.toUtc().toIso8601String(),
        'request': request,
        'requiresAccessToken': requiresAccessToken,
        'output': [for (final f in output) f.toJson()],
        if (deleted.isNotEmpty)
          'deleted': [for (final f in deleted) f.toJson()],
        'error': [for (final f in error) f.toJson()],
        if (extension != null) 'extension': extension,
      };
}
