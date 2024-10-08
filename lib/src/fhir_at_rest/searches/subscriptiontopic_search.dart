// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class SubscriptionTopicSearch {
  final Map<String, String> parameters = <String, String>{};
  SubscriptionTopicSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  SubscriptionTopicSearch derivedOrSelf(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}derived_or_self'] = value.toString();
    return this;
  }

  SubscriptionTopicSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionTopicSearch resource(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}resource'] = value.toString();
    return this;
  }

  SubscriptionTopicSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionTopicSearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  SubscriptionTopicSearch triggerDescription(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}trigger_description'] = value.toString();
    return this;
  }

  SubscriptionTopicSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  SubscriptionTopicSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubscriptionTopicSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
