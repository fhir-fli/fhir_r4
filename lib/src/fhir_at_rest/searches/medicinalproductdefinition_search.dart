// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MedicinalProductDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  MedicinalProductDefinitionSearch characteristic(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}characteristic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch characteristicType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}characteristic_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch domain(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}domain'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch ingredient(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch name(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  MedicinalProductDefinitionSearch nameLanguage(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}name_language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch productClassification(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}product_classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicinalProductDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
