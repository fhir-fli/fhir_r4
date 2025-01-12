import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';


/// A two-level cache for managing terminology operations.
class TerminologyCache {
  /// Constructs a new terminology cache.
  TerminologyCache(this.lock, this.folder) {
    if (folder != null) {
      _load();
    }
  }

  /// Defines the cache as either transient or permanent.
  static const bool transient = false;

  /// Defines the cache as either transient or permanent.
  static const bool permanent = true;

  /// The name for the system when no system is provided.
  static const String nameForNoSystem = 'all-systems';

  /// The entry marker.
  static const String entryMarker =
      '----------------------------------------------------'
      '---------------------------------';

  /// The break marker.
  static const String break_ = '####';

  /// The cache of named caches.
  final Map<String, NamedCache> caches = {};

  /// The lock for the cache.
  final Object lock;

  /// The folder for the cache.
  final String? folder;

  /// Whether caching is disabled.
  static bool noCaching = false;

  /// Clears the cache.
  void clear() {
    caches.clear();
  }

  /// Generates a cache token for a validation operation.
  CacheToken generateValidationToken(
    ValidationOptions options,
    Coding code,
    ValueSet? vs,
  ) {
    final ct = CacheToken()
      ..name = code.system?.primitiveValue ?? nameForNoSystem;
    final vsc = _getVSEssence(vs);
    final request = jsonEncode({
      'code': code.toJson(),
      'valueSet': vsc?.toJson(),
      'options': options.toJson(),
    });
    ct
      ..request = request
      ..key = _hashNWS(request);
    return ct;
  }

  /// Generates a cache token for a validation operation.
  CacheToken generateValidationTokenForCodeableConcept(
    ValidationOptions options,
    CodeableConcept code,
    ValueSet? vs,
  ) {
    final ct = CacheToken();
    for (final coding in code.coding ?? <Coding>[]) {
      if (coding.system?.primitiveValue != null) {
        ct.name = coding.system!.primitiveValue!;
      }
    }
    final vsc = _getVSEssence(vs);
    final request = jsonEncode({
      'codeableConcept': code.toJson(),
      'valueSet': vsc?.toJson(),
      'options': options.toJson(),
    });
    ct
      ..request = request
      ..key = _hashNWS(request);
    return ct;
  }

  ValueSet? _getVSEssence(ValueSet? vs) {
    if (vs == null) return null;

    var vsc = ValueSet(
      status: vs.status,
      compose: vs.compose,
    );
    if (vs.expansion != null) {
      vsc = vsc.copyWith(
        expansion: ValueSetExpansion(
          parameter: vs.expansion!.parameter,
          contains: vs.expansion!.contains,
          timestamp: vs.expansion!.timestamp,
        ),
      );
    }
    return vsc;
  }

  NamedCache _getNamedCache(CacheToken cacheToken) {
    if (!caches.containsKey(cacheToken.name)) {
      caches[cacheToken.name] = NamedCache(name: cacheToken.name);
    }
    return caches[cacheToken.name]!;
  }

  /// Gets the expansion outcome for the specified cache token.
  ValidationResult? getValidation(CacheToken cacheToken) {
    final nc = _getNamedCache(cacheToken);
    return nc.map[cacheToken.key]?.validationResult;
  }

  /// Gets the expansion outcome for the specified cache token.
  void cacheValidation(
    CacheToken cacheToken,
    ValidationResult result,
    // ignore: avoid_positional_boolean_parameters
    bool persistent,
  ) {
    final nc = _getNamedCache(cacheToken);
    final entry = CacheEntry(
      request: cacheToken.request,
      persistent: persistent,
      validationResult: result,
    );
    _store(cacheToken, persistent, nc, entry);
  }

  void _store(
    CacheToken cacheToken,
    bool persistent,
    NamedCache nc,
    CacheEntry entry,
  ) {
    if (noCaching) return;

    final isExisting = nc.map.containsKey(cacheToken.key);
    nc.map[cacheToken.key] = entry;

    if (persistent) {
      if (isExisting) {
        nc.list.removeWhere((e) => e.request == entry.request);
      }
      nc.list.add(entry);
      _save(nc);
    }
  }

  void _save(NamedCache nc) {
    if (folder == null) return;

    try {
      final file = File('$folder/${nc.name}.cache');
      final sink = file.openWrite()..writeln(entryMarker);

      for (final entry in nc.list) {
        // Write request
        sink
          ..writeln(entry.request.trim())
          ..writeln(break_);

        // Write either expansion or validation result
        if (entry.expansionOutcome != null) {
          sink.writeln('e: {');
          if (entry.expansionOutcome!.valueSet != null) {
            sink.writeln(
              '  "valueSet": '
              '${jsonEncode(entry.expansionOutcome!.valueSet!.toJson())},',
            );
          }
          sink
            ..writeln(
              '  "error": '
              '"${_escapeJson(entry.expansionOutcome!.error ?? "")}"',
            )
            ..writeln('}');
        } else {
          sink.writeln('v: {');
          final fields = <String, String>{};
          if (entry.validationResult?.getDisplay() != null) {
            fields['display'] =
                _escapeJson(entry.validationResult!.getDisplay()!);
          }
          if (entry.validationResult?.getCode() != null) {
            fields['code'] = _escapeJson(entry.validationResult!.getCode()!);
          }
          if (entry.validationResult?.system != null) {
            fields['system'] = _escapeJson(entry.validationResult!.system!);
          }
          if (entry.validationResult?.severity?.value != null) {
            fields['severity'] =
                _escapeJson(entry.validationResult!.severity!.value!);
          }
          if (entry.validationResult?.message != null) {
            fields['error'] = _escapeJson(entry.validationResult!.message!);
          }
          if (entry.validationResult?.errorClass != null) {
            fields['class'] =
                _escapeJson(entry.validationResult!.errorClass.toString());
          }
          if (entry.validationResult?.getDefinition() != null) {
            fields['definition'] =
                _escapeJson(entry.validationResult!.getDefinition()!);
          }

          final serializedFields = fields.entries
              .map((e) => '  "${e.key}": "${e.value}"')
              .join(',\n');
          sink
            ..writeln(serializedFields)
            ..writeln('}');
        }

        sink.writeln(entryMarker);
      }

      sink.close();
    } catch (e) {
      print('Error saving ${nc.name}: $e');
    }
  }

  /// Summarizes a [ValueSet].
  String summaryForValueSet(ValueSet? valueSet) {
    if (valueSet == null) return 'null';

    final buffer = StringBuffer();
    for (final cc in valueSet.compose?.include ?? <ValueSetInclude>[]) {
      buffer.write('Include ${_getIncSummary(cc)}\n');
    }
    for (final cc in valueSet.compose?.exclude ?? <ValueSetInclude>[]) {
      buffer.write('Exclude ${_getIncSummary(cc)}\n');
    }
    return buffer.toString();
  }

  /// Helper function to summarize a [ValueSetInclude].
  String _getIncSummary(ValueSetInclude cc) {
    final buffer = StringBuffer();
    for (final uri in cc.valueSet ?? <FhirCanonical>[]) {
      buffer.write(uri.value);
    }

    final valueSetsDescription = buffer.isNotEmpty
        ? ' where the codes are in the value sets ($buffer)'
        : '';
    final system = cc.system?.value;

    if (cc.concept != null && cc.concept!.isNotEmpty) {
      return '${cc.concept!.length} codes from $system$valueSetsDescription';
    }

    if (cc.filter != null && cc.filter!.isNotEmpty) {
      final filters = cc.filter!
          .map(
            (filter) => '${filter.property.value} '
                '${filter.op.value} ${filter.value.value}',
          )
          .join(' & ');
      return 'from $system where $filters$valueSetsDescription';
    }

    return 'All codes from $system$valueSetsDescription';
  }

  /// Summarizes a [Coding].
  String summaryForCoding(Coding coding) {
    return '${coding.system?.value ?? 'unknown'}#'
        '${coding.code?.value ?? 'unknown'}: '
        '"${coding.display?.value ?? 'unknown'}"';
  }

  /// Summarizes a [CodeableConcept].
  String summaryForCodeableConcept(CodeableConcept codeableConcept) {
    final buffer = StringBuffer('{');
    final codings = codeableConcept.coding ?? <Coding>[];

    for (var i = 0; i < codings.length; i++) {
      if (i > 0) buffer.write(',');
      buffer.write(summaryForCoding(codings[i]));
    }

    buffer.write('}: "${codeableConcept.text?.value ?? 'unknown'}"');
    return buffer.toString();
  }

  String _escapeJson(String value) {
    // Replace characters that need escaping in JSON strings.
    return value
        .replaceAll('"', r'\"')
        .replaceAll('\n', r'\n')
        .replaceAll('\r', r'\r');
  }

  void _load() {
    if (folder == null) return;

    final directory = Directory(folder!);
    if (!directory.existsSync()) return;

    for (final file in directory.listSync().whereType<File>()) {
      if (file.path.endsWith('.cache') &&
          !file.path.endsWith('validation.cache')) {
        var entryCount = 0;
        try {
          final title = file.uri.pathSegments.last.replaceFirst('.cache', '');
          final nc = NamedCache(name: title);
          caches[title] = nc;

          var content = file.readAsStringSync();
          if (content.startsWith('?')) {
            content = content.substring(1);
          }

          var markerIndex = content.indexOf(entryMarker);
          while (markerIndex != -1) {
            entryCount++;
            final entry = content.substring(0, markerIndex);
            content = content.substring(markerIndex + entryMarker.length + 1);
            markerIndex = content.indexOf(entryMarker);

            if (entry.trim().isNotEmpty) {
              final breakIndex = entry.indexOf(break_);
              final request = entry.substring(0, breakIndex);
              final payload =
                  entry.substring(breakIndex + break_.length).trim();

              final ce = CacheEntry(request: request, persistent: true);
              final isExpansion = payload.startsWith('e');
              final json =
                  jsonDecode(payload.substring(3)) as Map<String, dynamic>;

              if (isExpansion) {
                if (json.containsKey('valueSet')) {
                  ce.expansionOutcome = ValueSetExpansionOutcome(
                    ValueSet.fromJson(
                      json['valueSet'] as Map<String, dynamic>,
                    ),
                  );
                } else {
                  ce.expansionOutcome = ValueSetExpansionOutcome.withError(
                    null,
                    json['error'] as String?,
                    TerminologyServiceErrorClass.unknown,
                  );
                }
              } else {
                final severity = json['severity'] != null
                    ? IssueSeverity.values
                        .firstWhere((e) => e.toString() == json['severity'])
                    : null;
                ce.validationResult = ValidationResult(
                  severity: severity,
                  message: json['error'] as String?,
                  system: json['system'] as String?,
                  definition: json['definition'] as CodeSystemConcept?,
                  errorClass: json['class'] != null
                      ? TerminologyServiceErrorClass.values
                          .firstWhere((e) => e.toString() == json['class'])
                      : null,
                );
              }

              nc.map[_hashNWS(request)] = ce;
              nc.list.add(ce);
            }
          }
        } catch (e) {
          throw Exception(
            'Error loading ${file.path}: $e entry $entryCount',
          );
        }
      }
    }
  }

  String _hashNWS(String input) {
    return base64Encode(utf8.encode(input.replaceAll(RegExp(r'\s'), '')));
  }
}

/// Represents a token used for caching.
class CacheToken {
  /// The name of the cache.
  String name = '';

  /// The key for the cache.
  String key = '';

  /// The request.
  String request = '';
}

/// Represents an entry in the terminology cache.
class CacheEntry {
  /// Constructs a new cache entry.
  CacheEntry({
    required this.request,
    this.persistent = false,
    this.validationResult,
    this.expansionOutcome,
  });

  /// The request.
  final String request;

  /// Whether the entry is persistent.
  final bool persistent;

  /// The validation result.
  ValidationResult? validationResult;

  /// The expansion outcome.
  ValueSetExpansionOutcome? expansionOutcome;
}

/// Represents a named cache.
class NamedCache {
  /// Constructs a new named cache.
  NamedCache({required this.name});

  /// The name of the cache.
  final String name;

  /// The list of cache entries.
  final List<CacheEntry> list = [];

  /// The map of cache entries.
  final Map<String, CacheEntry> map = {};
}
