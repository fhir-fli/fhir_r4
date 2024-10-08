// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CommunicationRequestSearch {
  final Map<String, String> parameters = <String, String>{};
  CommunicationRequestSearch authored(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}authored'] = value.toString();
    return this;
  }

  CommunicationRequestSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationRequestSearch groupIdentifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationRequestSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationRequestSearch medium(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}medium'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationRequestSearch occurrence(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}occurrence'] = value.toString();
    return this;
  }

  CommunicationRequestSearch priority(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationRequestSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationRequestSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
