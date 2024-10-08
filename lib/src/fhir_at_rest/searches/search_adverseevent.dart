// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchAdverseEvent {
  final Map<String, String> parameters = <String, String>{};
  SearchAdverseEvent actuality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}actuality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdverseEvent category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdverseEvent date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  SearchAdverseEvent event(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdverseEvent seriousness(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}seriousness'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdverseEvent severity(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdverseEvent add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
