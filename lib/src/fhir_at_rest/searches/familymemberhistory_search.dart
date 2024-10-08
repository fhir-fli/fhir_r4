// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class FamilyMemberHistorySearch {
  final Map<String, String> parameters = <String, String>{};
  FamilyMemberHistorySearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  FamilyMemberHistorySearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  FamilyMemberHistorySearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  FamilyMemberHistorySearch instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  FamilyMemberHistorySearch relationship(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}relationship'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  FamilyMemberHistorySearch sex(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}sex'] = system != null ? '$system|$value' : '$value';
    return this;
  }

  FamilyMemberHistorySearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  FamilyMemberHistorySearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
