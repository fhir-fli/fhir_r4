// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ServiceRequestSearch {
  final Map<String, String> parameters = <String, String>{};
  ServiceRequestSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch authored(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}authored'] = value.toString();
    return this;
  }

  ServiceRequestSearch bodySite(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}body_site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  ServiceRequestSearch intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch occurrence(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}occurrence'] = value.toString();
    return this;
  }

  ServiceRequestSearch performerType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}performer_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch priority(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch requisition(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}requisition'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ServiceRequestSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
