// ignore_for_file: public_member_api_docs

import 'package:fhir_r4_path/fhir_r4_path.dart';

/// Context object holding shared state and utilities for FHIRPath engine.
///
/// This class encapsulates all the state that is shared across operations,
/// functions, and utilities, making it easier to compose these components.
class FhirPathContext {
  /// Constructor
  FhirPathContext(this.worker, [this.hostServices])
      : terminologyServiceOptions = ValidationOptions.defaults();

  /// Helper for creating test contexts.
  factory FhirPathContext.forTesting({WorkerContext? worker}) {
    if (worker == null) {
      throw ArgumentError('WorkerContext required');
    }
    return FhirPathContext(worker);
  }

  /// Core dependencies
  final WorkerContext worker;
  final IEvaluationContext? hostServices;
  final ValidationOptions terminologyServiceOptions;

  /// Factory for the FHIR-typed values produced as evaluation results. The
  /// engine constructs every result through this rather than naming concrete
  /// FHIR value classes, so the value model can be swapped at the binding.
  final FhirValueFactory factory = const FhirValueFactory();

  /// Type information (populated during initialization)
  final Set<String> primitiveTypes = {};
  final List<String> allTypeNames = [];

  /// Logging
  final StringBuffer fpLog = StringBuffer();

  /// Configuration flags
  bool legacyMode = false;
  bool allowPolymorphicNames = true;
  bool doImplicitStringConversion = false;
  bool liquidMode = false;
  bool doNotEnforceAsSingletonRule = false;
  bool doNotEnforceAsCaseSensitive = false;
  bool allowDoubleQuotes = false;

  /// Runtime state
  String? location; // For error messages

  /// Constants
  // ignore: non_constant_identifier_names
  final NS_SYSTEM_TYPE = 'http://hl7.org/fhirpath/System.';
  // ignore: non_constant_identifier_names
  final FHIR_TYPES_STRING = [
    'string',
    'uri',
    'code',
    'oid',
    'id',
    'uuid',
    'sid',
    'markdown',
    'base64Binary',
    'canonical',
    'url',
  ];

  /// Initialize type information from the worker's neutral type queries.
  ///
  /// This must be called after construction and before use.
  Future<void> initialize() async {
    allTypeNames.addAll(await worker.specializedTypeNames());
    primitiveTypes.addAll(await worker.primitiveTypeNames());
    if (!VersionUtilities.isR5VerOrLater(worker.getVersion())) {
      doNotEnforceAsCaseSensitive = true;
      doNotEnforceAsSingletonRule = true;
    }
  }

  /// Create an exception with formatted message.
  ///
  /// Uses [worker] to format the message and includes [location] if set.
  PathEngineException makeException(
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    var fmt = worker.formatMessage(constName, args);
    if (location != null) {
      fmt = '$fmt ${worker.formatMessage('FHIRPATH_LOCATION', [location])}';
    }
    if (holder != null) {
      return PathEngineException(
        fmt,
        location: holder.start,
        expression: holder.toString(),
      );
    } else {
      return PathEngineException(fmt);
    }
  }

  /// Create an exception with pluralized formatted message.
  PathEngineException makeExceptionPlural(
    int num,
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    var fmt = worker.formatMessagePlural(num, constName, args);
    if (location != null) {
      fmt = '$fmt ${worker.formatMessage('FHIRPATH_LOCATION', [location])}';
    }
    if (holder != null) {
      return PathEngineException(
        fmt,
        location: holder.start,
        expression: holder.toString(),
      );
    } else {
      return PathEngineException(fmt);
    }
  }
}
