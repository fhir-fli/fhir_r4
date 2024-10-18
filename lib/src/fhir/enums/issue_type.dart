// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that describes the type of issue.
enum IssueType {
  /// Display: Invalid Content
  /// Definition: Content invalid against the specification or a profile.
  invalid('invalid'),

  /// Display: Structural Issue
  /// Definition: A structural issue in the content such as wrong namespace, unable to parse the content completely, invalid syntax, etc.
  structure('structure'),

  /// Display: Required element missing
  /// Definition: A required element is missing.
  required_('required'),

  /// Display: Element value invalid
  /// Definition: An element or header value is invalid.
  value('value'),

  /// Display: Validation rule failed
  /// Definition: A content validation rule failed - e.g. a schematron rule.
  invariant('invariant'),

  /// Display: Security Problem
  /// Definition: An authentication/authorization/permissions issue of some kind.
  security('security'),

  /// Display: Login Required
  /// Definition: The client needs to initiate an authentication process.
  login('login'),

  /// Display: Unknown User
  /// Definition: The user or system was not able to be authenticated (either there is no process, or the proferred token is unacceptable).
  unknown('unknown'),

  /// Display: Session Expired
  /// Definition: User session expired; a login may be required.
  expired('expired'),

  /// Display: Forbidden
  /// Definition: The user does not have the rights to perform this action.
  forbidden('forbidden'),

  /// Display: Information Suppressed
  /// Definition: Some information was not or might not have been returned due to business rules, consent or privacy rules, or access permission constraints. This information may be accessible through alternate processes.
  suppressed('suppressed'),

  /// Display: Processing Failure
  /// Definition: Processing issues. These are expected to be final e.g. there is no point resubmitting the same content unchanged.
  processing('processing'),

  /// Display: Content not supported
  /// Definition: The interaction, operation, resource or profile is not supported.
  not_supported('not-supported'),

  /// Display: Duplicate
  /// Definition: An attempt was made to create a duplicate record.
  duplicate('duplicate'),

  /// Display: Multiple Matches
  /// Definition: Multiple matching records were found when the operation required only one match.
  multiple_matches('multiple-matches'),

  /// Display: Not Found
  /// Definition: The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.
  not_found('not-found'),

  /// Display: Deleted
  /// Definition: The reference pointed to content (usually a resource) that has been deleted.
  deleted('deleted'),

  /// Display: Content Too Long
  /// Definition: Provided content is too long (typically, this is a denial of service protection type of error).
  too_long('too-long'),

  /// Display: Invalid Code
  /// Definition: The code or system could not be understood, or it was not valid in the context of a particular ValueSet.code.
  code_invalid('code-invalid'),

  /// Display: Unacceptable Extension
  /// Definition: An extension was found that was not acceptable, could not be resolved, or a modifierExtension was not recognized.
  extension_('extension'),

  /// Display: Operation Too Costly
  /// Definition: The operation was stopped to protect server resources; e.g. a request for a value set expansion on all of SNOMED CT.
  too_costly('too-costly'),

  /// Display: Business Rule Violation
  /// Definition: The content/operation failed to pass some business rule and so could not proceed.
  business_rule('business-rule'),

  /// Display: Edit Version Conflict
  /// Definition: Content could not be accepted because of an edit conflict (i.e. version aware updates). (In a pure RESTful environment, this would be an HTTP 409 error, but this code may be used where the conflict is discovered further into the application architecture.).
  conflict('conflict'),

  /// Display: Transient Issue
  /// Definition: Transient processing issues. The system receiving the message may be able to resubmit the same content once an underlying issue is resolved.
  transient('transient'),

  /// Display: Lock Error
  /// Definition: A resource/record locking failure (usually in an underlying database).
  lock_error('lock-error'),

  /// Display: No Store Available
  /// Definition: The persistent store is unavailable; e.g. the database is down for maintenance or similar action, and the interaction or operation cannot be processed.
  no_store('no-store'),

  /// Display: Exception
  /// Definition: An unexpected internal error has occurred.
  exception('exception'),

  /// Display: Timeout
  /// Definition: An internal timeout has occurred.
  timeout('timeout'),

  /// Display: Incomplete Results
  /// Definition: Not all data sources typically accessed could be reached or responded in time, so the returned information might not be complete (applies to search interactions and some operations).
  incomplete('incomplete'),

  /// Display: Throttled
  /// Definition: The system is not prepared to handle this request due to load management.
  throttled('throttled'),

  /// Display: Informational Note
  /// Definition: A message unrelated to the processing success of the completed operation (examples of the latter include things like reminders of password expiry, system maintenance times, etc.).
  informational('informational'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const IssueType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [IssueType] instances.
  static IssueType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueType.elementOnly.withElement(element);
    }
    return IssueType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  IssueType withElement(Element? newElement) {
    return IssueType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
