// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchTestReport extends SearchResource {
  SearchTestReport identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTestReport issued(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}issued'] =
        value.toString();
    return this;
  }

  SearchTestReport participant(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}participant'] =
        value.toString();
    return this;
  }

  SearchTestReport result(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}result'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchTestReport tester(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}tester'] =
        value.toString();
    return this;
  }
}
