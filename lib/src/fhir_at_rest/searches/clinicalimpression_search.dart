// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ClinicalImpressionSearch {
  final Map<String, String> parameters = <String, String>{};
  ClinicalImpressionSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ClinicalImpressionSearch findingCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}finding_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalImpressionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalImpressionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalImpressionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
