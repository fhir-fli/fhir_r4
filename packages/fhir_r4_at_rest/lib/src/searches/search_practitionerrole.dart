// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [PractitionerRole] resource.
class SearchPractitionerRole extends SearchResource {
  /// a token search for [email] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole email(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('email', paramValue);
    return this;
  }

  /// a token search for [phone] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole phone(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('phone', paramValue);
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }

  /// a token search for [active] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [endpoint] in the resource
  /// [PractitionerRole]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPractitionerRole endpoint(FhirString value) {
    addParameterValue('endpoint', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [PractitionerRole]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPractitionerRole location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [PractitionerRole]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPractitionerRole organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a reference search for [practitioner] in the resource
  /// [PractitionerRole]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPractitionerRole practitioner(FhirString value) {
    addParameterValue('practitioner', value.toString());
    return this;
  }

  /// a token search for [role] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole role(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('role', paramValue);
    return this;
  }

  /// a reference search for [service] in the resource
  /// [PractitionerRole]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPractitionerRole service(FhirString value) {
    addParameterValue('service', value.toString());
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [PractitionerRole]
  SearchPractitionerRole specialty(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('specialty', paramValue);
    return this;
  }
}
