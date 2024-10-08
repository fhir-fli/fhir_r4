// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchTask {
  final Map<String, String> parameters = <String, String>{};
  SearchTask authoredOn(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}authored_on'] =
        value.toString();
    return this;
  }

  SearchTask businessStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}business_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask groupIdentifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask modified(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}modified'] =
        value.toString();
    return this;
  }

  SearchTask performer(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}performer'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask period(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}period'] =
        value.toString();
    return this;
  }

  SearchTask priority(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTask add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
