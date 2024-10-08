// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class TaskSearch {
  final Map<String, String> parameters = <String, String>{};
  TaskSearch authoredOn(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}authored_on'] = value.toString();
    return this;
  }

  TaskSearch businessStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}business_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch groupIdentifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch modified(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}modified'] = value.toString();
    return this;
  }

  TaskSearch performer(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}performer'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch period(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}period'] = value.toString();
    return this;
  }

  TaskSearch priority(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TaskSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
