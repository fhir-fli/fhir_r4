// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class VisionPrescriptionSearch {
  final Map<String, String> parameters = <String, String>{};
  VisionPrescriptionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  VisionPrescriptionSearch datewritten(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}datewritten'] = value.toString();
    return this;
  }

  VisionPrescriptionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  VisionPrescriptionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
