// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CompositionSearch {
  final Map<String, String> parameters = <String, String>{};
  CompositionSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  CompositionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch confidentiality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}confidentiality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch period(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}period'] = value.toString();
    return this;
  }

  CompositionSearch relatedId(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}related_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch section(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}section'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CompositionSearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  CompositionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
