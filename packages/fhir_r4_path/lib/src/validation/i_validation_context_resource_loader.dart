// ignore_for_file: avoid_positional_boolean_parameters, avoid_returning_this
// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';

/// IValidationContextResourceLoader
// ignore: one_member_abstracts
abstract class IValidationContextResourceLoader {
  /// Load a contained resource by its ID and type.
  Resource? loadContainedResource({
    required List<String> errors,
    required String path,
    required Element resource,
    required String id,
    required Type resourceType,
  });
}

/// Proxy for a validation context resource. This can either represent
/// a fully resolved `Resource` or a partially resolved `Element` with a loader.
