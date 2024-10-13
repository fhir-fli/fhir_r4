// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Practitioner resource.
class SearchPractitioner extends SearchResource {
  /// a string search for [address] in the reosurce Practitioner
  SearchPractitioner address(
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

  /// a string search for [addressCity] in the reosurce Practitioner
  SearchPractitioner addressCity(
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

  /// a string search for [addressCountry] in the reosurce Practitioner
  SearchPractitioner addressCountry(
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

  /// a string search for [addressPostalcode] in the reosurce Practitioner
  SearchPractitioner addressPostalcode(
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

  /// a string search for [addressState] in the reosurce Practitioner
  SearchPractitioner addressState(
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

  /// a token search for [addressUse] in the reosurce Practitioner
  SearchPractitioner addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [email] in the reosurce Practitioner
  SearchPractitioner email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [family] in the reosurce Practitioner
  SearchPractitioner family(
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

  /// a token search for [gender] in the reosurce Practitioner
  SearchPractitioner gender(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [given] in the reosurce Practitioner
  SearchPractitioner given(
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

  /// a token search for [phone] in the reosurce Practitioner
  SearchPractitioner phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [phonetic] in the reosurce Practitioner
  SearchPractitioner phonetic(
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

  /// a token search for [telecom] in the reosurce Practitioner
  SearchPractitioner telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [active] in the reosurce Practitioner
  SearchPractitioner active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [communication] in the reosurce Practitioner
  SearchPractitioner communication(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}communication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce Practitioner
  SearchPractitioner identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the reosurce Practitioner
  SearchPractitioner name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }
}
