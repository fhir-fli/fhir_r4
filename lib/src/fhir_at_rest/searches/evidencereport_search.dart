// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class EvidenceReportSearch {
  final Map<String, String> parameters = <String, String>{};
  EvidenceReportSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EvidenceReportSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  EvidenceReportSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EvidenceReportSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EvidenceReportSearch publisher(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  EvidenceReportSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EvidenceReportSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  EvidenceReportSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
