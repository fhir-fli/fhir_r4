// Exception specific to terminology provider operations
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class TerminologyProviderException implements Exception {
  String message;
  TerminologyProviderException(this.message);

  @override
  String toString() => "TerminologyProviderException: $message";
}

abstract class TerminologyProvider {
  /// Checks if a given [Code] is a member of a given [ValueSetInfo]
  /// Throws [TerminologyProviderException] if there's an exception during the membership check
  bool inValueSet(Code code, CqlValueSet valueSet);

  /// Expands the set of [Code]s for a given [ValueSetInfo]
  /// Throws [TerminologyProviderException] if there's an error during expansion
  Iterable<Code> expand(CqlValueSet valueSet);

  /// Looks up the display value for a given [Code] from a given [CodeSystemInfo]
  /// Throws [TerminologyProviderException] if there's an error during lookup
  Code lookup(Code code, CqlCodeSystem codeSystem);
}
