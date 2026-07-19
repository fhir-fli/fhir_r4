// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [OrganizationAffiliation] resource.
class SearchOrganizationAffiliation extends SearchResource {
  /// a token search for [active] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [email] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation email(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('email', paramValue);
    return this;
  }

  /// a reference search for [endpoint] in the resource
  /// [OrganizationAffiliation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganizationAffiliation endpoint(FhirString value) {
    addParameterValue('endpoint', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [OrganizationAffiliation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganizationAffiliation location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a reference search for [network] in the resource
  /// [OrganizationAffiliation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganizationAffiliation network(FhirString value) {
    addParameterValue('network', value.toString());
    return this;
  }

  /// a reference search for [participatingOrganization] in the resource
  /// [OrganizationAffiliation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganizationAffiliation participatingOrganization(FhirString value) {
    addParameterValue('participating-organization', value.toString());
    return this;
  }

  /// a token search for [phone] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation phone(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('phone', paramValue);
    return this;
  }

  /// a reference search for [primaryOrganization] in the resource
  /// [OrganizationAffiliation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganizationAffiliation primaryOrganization(FhirString value) {
    addParameterValue('primary-organization', value.toString());
    return this;
  }

  /// a token search for [role] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation role(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('role', paramValue);
    return this;
  }

  /// a reference search for [service] in the resource
  /// [OrganizationAffiliation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganizationAffiliation service(FhirString value) {
    addParameterValue('service', value.toString());
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation specialty(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('specialty', paramValue);
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [OrganizationAffiliation]
  SearchOrganizationAffiliation telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }
}
