// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class AllergyIntoleranceSearch {
  final Map<String, String> parameters = <String, String>{};
  AllergyIntoleranceSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch clinicalStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}clinical_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch criticality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}criticality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  AllergyIntoleranceSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch lastDate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}last_date'] = value.toString();
    return this;
  }

  AllergyIntoleranceSearch manifestation(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}manifestation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch onset(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}onset'] = value.toString();
    return this;
  }

  AllergyIntoleranceSearch route(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch severity(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch verificationStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}verification_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AllergyIntoleranceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
