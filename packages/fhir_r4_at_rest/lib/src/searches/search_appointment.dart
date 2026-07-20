// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Appointment] resource.
class SearchAppointment extends SearchResource {
  /// a reference search for [actor] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment actor(FhirString value) {
    addParameterValue('actor', value.toString());
    return this;
  }

  /// a token search for [appointmentType] in the resource
  /// [Appointment]
  SearchAppointment appointmentType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('appointment-type', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [Appointment]
  SearchAppointment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Appointment]
  SearchAppointment identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a token search for [partStatus] in the resource
  /// [Appointment]
  SearchAppointment partStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('part-status', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [practitioner] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment practitioner(FhirString value) {
    addParameterValue('practitioner', value.toString());
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Appointment]
  SearchAppointment reasonCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-code', paramValue);
    return this;
  }

  /// a reference search for [reasonReference] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment reasonReference(FhirString value) {
    addParameterValue('reason-reference', value.toString());
    return this;
  }

  /// a token search for [serviceCategory] in the resource
  /// [Appointment]
  SearchAppointment serviceCategory(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('service-category', paramValue);
    return this;
  }

  /// a token search for [serviceType] in the resource
  /// [Appointment]
  SearchAppointment serviceType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('service-type', paramValue);
    return this;
  }

  /// a reference search for [slot] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment slot(FhirString value) {
    addParameterValue('slot', value.toString());
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [Appointment]
  SearchAppointment specialty(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('specialty', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Appointment]
  SearchAppointment status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [supportingInfo] in the resource
  /// [Appointment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointment supportingInfo(FhirString value) {
    addParameterValue('supporting-info', value.toString());
    return this;
  }
}
