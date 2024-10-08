// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchVisionPrescription {
  final Map<String, String> parameters = <String, String>{};
  SearchVisionPrescription identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchVisionPrescription datewritten(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}datewritten'] =
        value.toString();
    return this;
  }

  SearchVisionPrescription status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchVisionPrescription add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
