// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchDomainResource {
  final Map<String, String> parameters = <String, String>{};
  SearchDomainResource text(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_text'] =
        value.toString();
    return this;
  }

  SearchDomainResource add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
