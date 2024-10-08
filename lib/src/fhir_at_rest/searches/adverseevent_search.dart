// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class AdverseEventSearch {
  final Map<String, String> parameters = <String, String>{};
  AdverseEventSearch actuality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}actuality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdverseEventSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdverseEventSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  AdverseEventSearch event(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdverseEventSearch seriousness(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}seriousness'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdverseEventSearch severity(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdverseEventSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
