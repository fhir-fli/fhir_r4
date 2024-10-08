// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class DiagnosticReportSearch {
  final Map<String, String> parameters = <String, String>{};
  DiagnosticReportSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DiagnosticReportSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  DiagnosticReportSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DiagnosticReportSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DiagnosticReportSearch conclusion(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}conclusion'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DiagnosticReportSearch issued(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}issued'] = value.toString();
    return this;
  }

  DiagnosticReportSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DiagnosticReportSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
