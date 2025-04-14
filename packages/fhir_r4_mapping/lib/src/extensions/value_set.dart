import 'package:fhir_r4/fhir_r4.dart';

/// Extension methods for the [ValueSet] class
extension ValueSetExtension on ValueSet {
  /// Check if the ValueSet contains a concept with the given [code]
  bool containsConcept(String code) {
    // Check if the ValueSet has a compose section
    if (compose != null) {
      for (final include in compose!.include) {
        // Look through included systems and their concepts
        if (include.concept != null) {
          for (final concept in include.concept!) {
            if (concept.code.valueString == code) {
              return true;
            }
          }
        }
      }
    }

    // If no match found, return false
    return false;
  }
}
