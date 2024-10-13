// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Patient resource.
class SearchPatient extends SearchResource {
  /// a token search for [active] in the reosurce Patient
  SearchPatient active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [address] in the reosurce Patient
  SearchPatient address(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address'] =
        value.toString();
    return this;
  }

  /// a string search for [addressCity] in the reosurce Patient
  SearchPatient addressCity(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_city'] =
        value.toString();
    return this;
  }

  /// a string search for [addressCountry] in the reosurce Patient
  SearchPatient addressCountry(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_country'] =
        value.toString();
    return this;
  }

  /// a string search for [addressPostalcode] in the reosurce Patient
  SearchPatient addressPostalcode(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_postalcode'] =
        value.toString();
    return this;
  }

  /// a string search for [addressState] in the reosurce Patient
  SearchPatient addressState(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_state'] =
        value.toString();
    return this;
  }

  /// a token search for [addressUse] in the reosurce Patient
  SearchPatient addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [birthdate] in the reosurce Patient
  SearchPatient birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}birthdate'] =
        value.toString();
    return this;
  }

  /// a date search for [deathDate] in the reosurce Patient
  SearchPatient deathDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}death_date'] =
        value.toString();
    return this;
  }

  /// a token search for [deceased] in the reosurce Patient
  SearchPatient deceased(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}deceased'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [email] in the reosurce Patient
  SearchPatient email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [family] in the reosurce Patient
  SearchPatient family(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}family'] =
        value.toString();
    return this;
  }

  /// a token search for [gender] in the reosurce Patient
  SearchPatient gender(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [given] in the reosurce Patient
  SearchPatient given(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}given'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce Patient
  SearchPatient identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [language] in the reosurce Patient
  SearchPatient language(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the reosurce Patient
  SearchPatient name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a token search for [phone] in the reosurce Patient
  SearchPatient phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [phonetic] in the reosurce Patient
  SearchPatient phonetic(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}phonetic'] =
        value.toString();
    return this;
  }

  /// a token search for [telecom] in the reosurce Patient
  SearchPatient telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
