/// A code that describes the type of issue.
enum IssueType {
  /// Display: Invalid Content
  /// Definition: Content invalid against the specification or a profile.
  invalid,

  /// Display: Structural Issue
  /// Definition: A structural issue in the content such as wrong namespace, unable to parse the content completely, invalid syntax, etc.
  structure,

  /// Display: Required element missing
  /// Definition: A required element is missing.
  required_,

  /// Display: Element value invalid
  /// Definition: An element or header value is invalid.
  value,

  /// Display: Validation rule failed
  /// Definition: A content validation rule failed - e.g. a schematron rule.
  invariant,

  /// Display: Security Problem
  /// Definition: An authentication/authorization/permissions issue of some kind.
  security,

  /// Display: Login Required
  /// Definition: The client needs to initiate an authentication process.
  login,

  /// Display: Unknown User
  /// Definition: The user or system was not able to be authenticated (either there is no process, or the proferred token is unacceptable).
  unknown,

  /// Display: Session Expired
  /// Definition: User session expired; a login may be required.
  expired,

  /// Display: Forbidden
  /// Definition: The user does not have the rights to perform this action.
  forbidden,

  /// Display: Information  Suppressed
  /// Definition: Some information was not or might not have been returned due to business rules, consent or privacy rules, or access permission constraints.  This information may be accessible through alternate processes.
  suppressed,

  /// Display: Processing Failure
  /// Definition: Processing issues. These are expected to be final e.g. there is no point resubmitting the same content unchanged.
  processing,

  /// Display: Content not supported
  /// Definition: The interaction, operation, resource or profile is not supported.
  not_supported,

  /// Display: Duplicate
  /// Definition: An attempt was made to create a duplicate record.
  duplicate,

  /// Display: Multiple Matches
  /// Definition: Multiple matching records were found when the operation required only one match.
  multiple_matches,

  /// Display: Not Found
  /// Definition: The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.
  not_found,

  /// Display: Deleted
  /// Definition: The reference pointed to content (usually a resource) that has been deleted.
  deleted,

  /// Display: Content Too Long
  /// Definition: Provided content is too long (typically, this is a denial of service protection type of error).
  too_long,

  /// Display: Invalid Code
  /// Definition: The code or system could not be understood, or it was not valid in the context of a particular ValueSet.code.
  code_invalid,

  /// Display: Unacceptable Extension
  /// Definition: An extension was found that was not acceptable, could not be resolved, or a modifierExtension was not recognized.
  extension_,

  /// Display: Operation Too Costly
  /// Definition: The operation was stopped to protect server resources; e.g. a request for a value set expansion on all of SNOMED CT.
  too_costly,

  /// Display: Business Rule Violation
  /// Definition: The content/operation failed to pass some business rule and so could not proceed.
  business_rule,

  /// Display: Edit Version Conflict
  /// Definition: Content could not be accepted because of an edit conflict (i.e. version aware updates). (In a pure RESTful environment, this would be an HTTP 409 error, but this code may be used where the conflict is discovered further into the application architecture.).
  conflict,

  /// Display: Transient Issue
  /// Definition: Transient processing issues. The system receiving the message may be able to resubmit the same content once an underlying issue is resolved.
  transient,

  /// Display: Lock Error
  /// Definition: A resource/record locking failure (usually in an underlying database).
  lock_error,

  /// Display: No Store Available
  /// Definition: The persistent store is unavailable; e.g. the database is down for maintenance or similar action, and the interaction or operation cannot be processed.
  no_store,

  /// Display: Exception
  /// Definition: An unexpected internal error has occurred.
  exception,

  /// Display: Timeout
  /// Definition: An internal timeout has occurred.
  timeout,

  /// Display: Incomplete Results
  /// Definition: Not all data sources typically accessed could be reached or responded in time, so the returned information might not be complete (applies to search interactions and some operations).
  incomplete,

  /// Display: Throttled
  /// Definition: The system is not prepared to handle this request due to load management.
  throttled,

  /// Display: Informational Note
  /// Definition: A message unrelated to the processing success of the completed operation (examples of the latter include things like reminders of password expiry, system maintenance times, etc.).
  informational,
  ;

  @override
  String toString() {
    switch (this) {
      case invalid:
        return 'invalid';
      case structure:
        return 'structure';
      case required_:
        return 'required';
      case value:
        return 'value';
      case invariant:
        return 'invariant';
      case security:
        return 'security';
      case login:
        return 'login';
      case unknown:
        return 'unknown';
      case expired:
        return 'expired';
      case forbidden:
        return 'forbidden';
      case suppressed:
        return 'suppressed';
      case processing:
        return 'processing';
      case not_supported:
        return 'not-supported';
      case duplicate:
        return 'duplicate';
      case multiple_matches:
        return 'multiple-matches';
      case not_found:
        return 'not-found';
      case deleted:
        return 'deleted';
      case too_long:
        return 'too-long';
      case code_invalid:
        return 'code-invalid';
      case extension_:
        return 'extension';
      case too_costly:
        return 'too-costly';
      case business_rule:
        return 'business-rule';
      case conflict:
        return 'conflict';
      case transient:
        return 'transient';
      case lock_error:
        return 'lock-error';
      case no_store:
        return 'no-store';
      case exception:
        return 'exception';
      case timeout:
        return 'timeout';
      case incomplete:
        return 'incomplete';
      case throttled:
        return 'throttled';
      case informational:
        return 'informational';
    }
  }

  /// Returns a [String] from a [IssueType] enum.
  String toJson() => toString();

  /// Returns a [IssueType] from a [String] enum.
  static IssueType fromString(String str) {
    switch (str) {
      case 'invalid':
        return IssueType.invalid;
      case 'structure':
        return IssueType.structure;
      case 'required':
        return IssueType.required_;
      case 'value':
        return IssueType.value;
      case 'invariant':
        return IssueType.invariant;
      case 'security':
        return IssueType.security;
      case 'login':
        return IssueType.login;
      case 'unknown':
        return IssueType.unknown;
      case 'expired':
        return IssueType.expired;
      case 'forbidden':
        return IssueType.forbidden;
      case 'suppressed':
        return IssueType.suppressed;
      case 'processing':
        return IssueType.processing;
      case 'not-supported':
        return IssueType.not_supported;
      case 'duplicate':
        return IssueType.duplicate;
      case 'multiple-matches':
        return IssueType.multiple_matches;
      case 'not-found':
        return IssueType.not_found;
      case 'deleted':
        return IssueType.deleted;
      case 'too-long':
        return IssueType.too_long;
      case 'code-invalid':
        return IssueType.code_invalid;
      case 'extension':
        return IssueType.extension_;
      case 'too-costly':
        return IssueType.too_costly;
      case 'business-rule':
        return IssueType.business_rule;
      case 'conflict':
        return IssueType.conflict;
      case 'transient':
        return IssueType.transient;
      case 'lock-error':
        return IssueType.lock_error;
      case 'no-store':
        return IssueType.no_store;
      case 'exception':
        return IssueType.exception;
      case 'timeout':
        return IssueType.timeout;
      case 'incomplete':
        return IssueType.incomplete;
      case 'throttled':
        return IssueType.throttled;
      case 'informational':
        return IssueType.informational;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [IssueType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static IssueType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
