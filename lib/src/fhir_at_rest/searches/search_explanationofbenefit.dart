// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchExplanationOfBenefit extends SearchResource {
  SearchExplanationOfBenefit created(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}created'] =
        value.toString();
    return this;
  }

  SearchExplanationOfBenefit disposition(FhirString value,
      {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}disposition'] =
        value.toString();
    return this;
  }

  SearchExplanationOfBenefit identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchExplanationOfBenefit status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}