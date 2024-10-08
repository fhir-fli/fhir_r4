// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MedicationSearch {
  final Map<String, String> parameters = <String, String>{};
  MedicationSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationSearch expirationDate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}expiration_date'] = value.toString();
    return this;
  }

  MedicationSearch form(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationSearch ingredientCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}ingredient_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationSearch lotNumber(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}lot_number'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
