// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CoverageEligibilityRequestSearch {
  final Map<String, String> parameters = <String, String>{};
  CoverageEligibilityRequestSearch created(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}created'] = value.toString();
    return this;
  }

  CoverageEligibilityRequestSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CoverageEligibilityRequestSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CoverageEligibilityRequestSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
