// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ConsentSearch {
  final Map<String, String> parameters = <String, String>{};
  ConsentSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ConsentSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch action(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}action'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch period(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}period'] = value.toString();
    return this;
  }

  ConsentSearch purpose(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}purpose'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch scope(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}scope'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch securityLabel(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}security_label'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConsentSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
