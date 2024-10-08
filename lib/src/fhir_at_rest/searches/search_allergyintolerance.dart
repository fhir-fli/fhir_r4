// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchAllergyIntolerance {
  final Map<String, String> parameters = <String, String>{};
  SearchAllergyIntolerance category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance clinicalStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}clinical_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance criticality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}criticality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  SearchAllergyIntolerance identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance lastDate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}last_date'] =
        value.toString();
    return this;
  }

  SearchAllergyIntolerance manifestation(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}manifestation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance onset(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}onset'] =
        value.toString();
    return this;
  }

  SearchAllergyIntolerance route(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance severity(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance verificationStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}verification_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAllergyIntolerance add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
