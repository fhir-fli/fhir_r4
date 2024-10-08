// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class DomainResourceSearch {
  final Map<String, String> parameters = <String, String>{};
  DomainResourceSearch text(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}_text'] = value.toString();
    return this;
  }

  DomainResourceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
