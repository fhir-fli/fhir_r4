// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CarePlanSearch {
  final Map<String, String> parameters = <String, String>{};
  CarePlanSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  CarePlanSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CarePlanSearch activityCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}activity_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CarePlanSearch activityDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}activity_date'] = value.toString();
    return this;
  }

  CarePlanSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CarePlanSearch instantiatesUri(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  CarePlanSearch intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CarePlanSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CarePlanSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
