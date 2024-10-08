// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ChargeItemSearch {
  final Map<String, String> parameters = <String, String>{};
  ChargeItemSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ChargeItemSearch enteredDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}entered_date'] = value.toString();
    return this;
  }

  ChargeItemSearch factorOverride(FhirDecimal value,
      {SearchModifier? modifier}) {
    parameters['${modifier}factor_override'] = value.toString();
    return this;
  }

  ChargeItemSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ChargeItemSearch occurrence(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}occurrence'] = value.toString();
    return this;
  }

  ChargeItemSearch performerFunction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}performer_function'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ChargeItemSearch priceOverride(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}price_override'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ChargeItemSearch quantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ChargeItemSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
