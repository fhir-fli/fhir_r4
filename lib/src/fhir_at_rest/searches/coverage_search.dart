// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CoverageSearch {
  final Map<String, String> parameters = <String, String>{};
  CoverageSearch classType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}class_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CoverageSearch classValue(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}class_value'] = value.toString();
    return this;
  }

  CoverageSearch dependent(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}dependent'] = value.toString();
    return this;
  }

  CoverageSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CoverageSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CoverageSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CoverageSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
