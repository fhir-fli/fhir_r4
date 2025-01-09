import 'package:fhir_r4/fhir_r4.dart';

/// Exception thrown when a terminology service is not available.
class NoTerminologyServiceException extends FHIRException {
  /// Constructor for [NoTerminologyServiceException] with optional [message]
  /// and [cause].
  NoTerminologyServiceException({super.message, super.cause});

  NoTerminologyServiceException.message({super.message});

  NoTerminologyServiceException.cause({super.cause});
}
