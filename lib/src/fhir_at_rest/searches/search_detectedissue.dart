// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchDetectedIssue extends SearchResource {
  SearchDetectedIssue identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchDetectedIssue code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchDetectedIssue identified(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identified'] =
        value.toString();
    return this;
  }
}
