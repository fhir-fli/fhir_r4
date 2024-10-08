// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ObservationSearch {
  final Map<String, String> parameters = <String, String>{};
  ObservationSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ObservationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch comboCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}combo_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch comboDataAbsentReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}combo_data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch comboValueConcept(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}combo_value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch comboValueQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}combo_value_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ObservationSearch componentCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}component_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch componentDataAbsentReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}component_data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch componentValueConcept(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}component_value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch componentValueQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}component_value_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ObservationSearch dataAbsentReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch method(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}method'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch valueConcept(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ObservationSearch valueDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}value_date'] = value.toString();
    return this;
  }

  ObservationSearch valueQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}value_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ObservationSearch valueString(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}value_string'] = value.toString();
    return this;
  }

  ObservationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
