// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class TestReportSearch {
  final Map<String, String> parameters = <String, String>{};
  TestReportSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TestReportSearch issued(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}issued'] = value.toString();
    return this;
  }

  TestReportSearch participant(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}participant'] = value.toString();
    return this;
  }

  TestReportSearch result(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}result'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  TestReportSearch tester(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}tester'] = value.toString();
    return this;
  }

  TestReportSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
