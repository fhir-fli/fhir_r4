// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class DeviceSearch {
  final Map<String, String> parameters = <String, String>{};
  DeviceSearch deviceName(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}device_name'] = value.toString();
    return this;
  }

  DeviceSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceSearch manufacturer(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}manufacturer'] = value.toString();
    return this;
  }

  DeviceSearch model(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}model'] = value.toString();
    return this;
  }

  DeviceSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DeviceSearch udiCarrier(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}udi_carrier'] = value.toString();
    return this;
  }

  DeviceSearch udiDi(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}udi_di'] = value.toString();
    return this;
  }

  DeviceSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  DeviceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
