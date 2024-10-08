// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchCoverageEligibilityResponse {
  final Map<String, String> parameters = <String, String>{};
  SearchCoverageEligibilityResponse created(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}created'] =
        value.toString();
    return this;
  }

  SearchCoverageEligibilityResponse disposition(FhirString value,
      {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}disposition'] =
        value.toString();
    return this;
  }

  SearchCoverageEligibilityResponse identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCoverageEligibilityResponse outcome(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}outcome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCoverageEligibilityResponse status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCoverageEligibilityResponse add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
