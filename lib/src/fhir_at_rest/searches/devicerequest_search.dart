// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class DeviceRequestSearch {
  final Map<String, String> parameters = <String, String>{};
  DeviceRequestSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceRequestSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceRequestSearch authoredOn(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}authored_on'] = value.toString();
    return this;
  }

  DeviceRequestSearch eventDate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}event_date'] = value.toString();
    return this;
  }

  DeviceRequestSearch groupIdentifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceRequestSearch instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  DeviceRequestSearch intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceRequestSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceRequestSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
