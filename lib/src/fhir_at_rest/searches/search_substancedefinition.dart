// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchSubstanceDefinition extends SearchResource {
  SearchSubstanceDefinition classification(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubstanceDefinition code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubstanceDefinition domain(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}domain'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubstanceDefinition identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubstanceDefinition name(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }
}