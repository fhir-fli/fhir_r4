// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes,
// ignore_for_file: constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

// TerminologyClient and BaseWorkerContext remain here as they are
// infrastructure classes that extend/implement core functionality

/// A stub for terminology client for external services
abstract class TerminologyClient extends FhirToolingClient {
  /// Expand a value set
  Future<ValueSet> expandValueset(ValueSet vs, Parameters parameters);

  /// Validate a code in a code system
  @override
  Future<Parameters> validateCS(Parameters parameters);

  /// Validate a code in a value set
  @override
  Future<Parameters> validateVS(Parameters parameters);

  /// Validate multiple codes in a batch
  Future<Bundle> validateBatch(Bundle batch);

  /// Get the terminology capabilities
  Future<TerminologyCapabilities> getTerminologyCapabilities();

  /// Get the address of this terminology server
  String get address;

  /// Get the retry count
  int get retryCount;

  /// Set the retry count
  set retryCount(int value);

  /// Set the user agent
  set userAgent(String value);
}

/// A base implementation for worker context with caching
abstract class BaseWorkerContext implements WorkerContext {
  /// The terminology cache
  @override
  late TerminologyCache txCache;

  /// The terminology client
  @override
  TerminologyClient? txClient;

  /// The logging service
  @override
  LoggingService? logger;

  /// Whether to run without a terminology server
  @override
  bool noTerminologyServer = false;

  /// Whether to try running without terminology services
  bool canRunWithoutTerminology = false;

  /// Parameters for expansion
  @override
  Parameters? expParameters;

  /// Maximum number of codes to expand
  int expandCodesLimit = 1000;

  /// Terminology capabilities
  TerminologyCapabilities? txcaps;

  /// Validate a code in a code system
  @override
  Future<ValidationResult> validateCodeWithCoding(
    ValidationOptions options,
    Coding coding,
    dynamic unused,
  ) async {
    // Implementations will vary, but this provides the method signature
    // needed by the ValueSetChecker
    throw UnimplementedError('validateCodeWithCoding not implemented');
  }
}
