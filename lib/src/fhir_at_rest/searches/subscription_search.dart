// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class SubscriptionSearch {
  final Map<String, String> parameters = <String, String>{};
  SubscriptionSearch contact(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}contact'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionSearch criteria(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}criteria'] = value.toString();
    return this;
  }

  SubscriptionSearch payload(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}payload'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  SubscriptionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
