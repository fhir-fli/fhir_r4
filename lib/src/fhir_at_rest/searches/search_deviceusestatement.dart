// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchDeviceUseStatement {
  final Map<String, String> parameters = <String, String>{};
  SearchDeviceUseStatement identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchDeviceUseStatement add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
