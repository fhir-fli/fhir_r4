// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ContractSearch {
  final Map<String, String> parameters = <String, String>{};
  ContractSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ContractSearch instantiates(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}instantiates'] = value.toString();
    return this;
  }

  ContractSearch issued(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}issued'] = value.toString();
    return this;
  }

  ContractSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ContractSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  ContractSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
