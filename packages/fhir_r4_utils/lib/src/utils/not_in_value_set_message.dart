import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Returns a message indicating that the value is not in the value set.
Future<String> notInValueSetMessage(
  dynamic value,
  FhirCanonical? valueSetCanonical,
  String message,
  ResourceCache resourceCache,
) async {
  if (valueSetCanonical == null) {
    return 'There was an error in our software evaluating the value ($value), '
        'please let us know.';
  }
  final resource =
      await resourceCache.getCanonicalResource(valueSetCanonical.toString());

  if (resource != null && resource.resourceType == R4ResourceType.ValueSet) {
    final valueSet = resource as ValueSet;
    if (valueSet.title != null) {
      return 'The value provided ($value) is not from the ValueSet '
          '${valueSet.title} ($valueSetCanonical), $message.';
    } else if (valueSet.name != null) {
      return 'The value provided ($value) is not from the ValueSet '
          '${valueSet.name}} ($valueSetCanonical), $message.';
    }
  }
  return 'The value provided ($value) is not from the ValueSet '
      '($valueSetCanonical), $message.';
}
