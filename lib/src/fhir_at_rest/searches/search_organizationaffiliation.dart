// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the OrganizationAffiliation resource.
class SearchOrganizationAffiliation extends SearchResource {
  /// a token search for [active] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [email] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [phone] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [role] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation role(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [specialty] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation specialty(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [telecom] in the reosurce OrganizationAffiliation
  SearchOrganizationAffiliation telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
