import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_fhir_authorization.dart';

/// A CDS Hooks service invocation request.
class CdsRequest {
  /// Creates a [CdsRequest].
  CdsRequest({
    required this.hook,
    required this.hookInstance,
    required this.context,
    this.fhirServer,
    this.fhirAuthorization,
    this.prefetch,
    this.extension_,
  });

  /// Creates a [CdsRequest] from a JSON map.
  ///
  /// Note: The [context] is deserialized as a raw [Map] because the correct
  /// hook context type depends on the hook name. Use
  /// [CdsHookContext.fromJson] with the appropriate subclass.
  factory CdsRequest.fromJson(Map<String, dynamic> json) {
    return CdsRequest(
      hook: json['hook'] as String,
      hookInstance: json['hookInstance'] as String,
      context: json['context'] as Map<String, dynamic>,
      fhirServer: json['fhirServer'] as String?,
      fhirAuthorization: json['fhirAuthorization'] != null
          ? CdsFhirAuthorization.fromJson(
              json['fhirAuthorization'] as Map<String, dynamic>,
            )
          : null,
      prefetch: _parsePrefetch(json['prefetch']),
      extension_: json['extension'] as Map<String, dynamic>?,
    );
  }

  /// The hook that triggered this request.
  final String hook;

  /// A universally unique identifier for this hook invocation.
  final String hookInstance;

  /// The hook-specific context data.
  ///
  /// When constructing a request, use a [CdsHookContext] subclass and call
  /// `toJson()`. When deserializing, this is a raw map; use
  /// [CdsHookContext.fromJson] to parse into the correct subclass.
  final Map<String, dynamic> context;

  /// The base URL of the CDS client's FHIR server.
  final String? fhirServer;

  /// Authorization details for accessing the FHIR server.
  final CdsFhirAuthorization? fhirAuthorization;

  /// Pre-fetched FHIR resources keyed by prefetch template key.
  final Map<String, Resource?>? prefetch;

  /// Extension data (uses `extension_` in Dart; maps to `extension` in JSON).
  final Map<String, dynamic>? extension_;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hook': hook,
        'hookInstance': hookInstance,
        'context': context,
        if (fhirServer != null) 'fhirServer': fhirServer,
        if (fhirAuthorization != null)
          'fhirAuthorization': fhirAuthorization!.toJson(),
        if (prefetch != null)
          'prefetch': prefetch!.map(
            (k, v) => MapEntry(k, v?.toJson()),
          ),
        if (extension_ != null) 'extension': extension_,
      };

  /// Returns a copy with the given fields replaced.
  CdsRequest copyWith({
    String? hook,
    String? hookInstance,
    Map<String, dynamic>? context,
    String? fhirServer,
    CdsFhirAuthorization? fhirAuthorization,
    Map<String, Resource?>? prefetch,
    Map<String, dynamic>? extension_,
  }) {
    return CdsRequest(
      hook: hook ?? this.hook,
      hookInstance: hookInstance ?? this.hookInstance,
      context: context ?? this.context,
      fhirServer: fhirServer ?? this.fhirServer,
      fhirAuthorization: fhirAuthorization ?? this.fhirAuthorization,
      prefetch: prefetch ?? this.prefetch,
      extension_: extension_ ?? this.extension_,
    );
  }

  static Map<String, Resource?>? _parsePrefetch(dynamic json) {
    if (json == null) return null;
    final map = json as Map<String, dynamic>;
    return map.map((key, value) {
      if (value == null) return MapEntry(key, null);
      return MapEntry(
        key,
        Resource.fromJson(value as Map<String, dynamic>),
      );
    });
  }
}
