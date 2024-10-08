// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchObservation extends SearchResource {
  SearchObservation code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  SearchObservation identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation comboCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}combo_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation comboDataAbsentReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters[
            '${modifier != null ? '$modifier' : ''}combo_data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation comboValueConcept(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}combo_value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation comboValueQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}combo_value_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  SearchObservation componentCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}component_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation componentDataAbsentReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters[
            '${modifier != null ? '$modifier' : ''}component_data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation componentValueConcept(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters[
            '${modifier != null ? '$modifier' : ''}component_value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation componentValueQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters[
            '${modifier != null ? '$modifier' : ''}component_value_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  SearchObservation dataAbsentReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation method(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}method'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation valueConcept(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchObservation valueDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}value_date'] =
        value.toString();
    return this;
  }

  SearchObservation valueQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}value_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  SearchObservation valueString(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}value_string'] =
        value.toString();
    return this;
  }
}
