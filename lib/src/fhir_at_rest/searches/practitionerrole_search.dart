// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class PractitionerRoleSearch {
  final Map<String, String> parameters = <String, String>{};
  PractitionerRoleSearch email(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch phone(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch telecom(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  PractitionerRoleSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch role(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch specialty(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerRoleSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
