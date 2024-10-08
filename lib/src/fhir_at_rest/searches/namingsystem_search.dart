// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class NamingSystemSearch {
  final Map<String, String> parameters = <String, String>{};
  NamingSystemSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  NamingSystemSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  NamingSystemSearch description(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  NamingSystemSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  NamingSystemSearch publisher(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  NamingSystemSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch contact(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}contact'] = value.toString();
    return this;
  }

  NamingSystemSearch idType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}id_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch kind(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}kind'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch period(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}period'] = value.toString();
    return this;
  }

  NamingSystemSearch responsible(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}responsible'] = value.toString();
    return this;
  }

  NamingSystemSearch telecom(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NamingSystemSearch value(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}value'] = value.toString();
    return this;
  }

  NamingSystemSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
