// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Appointment] resource.
class SearchAppointment extends SearchResource {
  /// a token search for [appointmentType] in the resource
  /// [Appointment]
  SearchAppointment appointmentType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}appointment_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [Appointment]
  SearchAppointment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Appointment]
  SearchAppointment identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [partStatus] in the resource
  /// [Appointment]
  SearchAppointment partStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}part_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Appointment]
  SearchAppointment reasonCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [serviceCategory] in the resource
  /// [Appointment]
  SearchAppointment serviceCategory(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}service_category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [serviceType] in the resource
  /// [Appointment]
  SearchAppointment serviceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}service_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [Appointment]
  SearchAppointment specialty(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [Appointment]
  SearchAppointment status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
