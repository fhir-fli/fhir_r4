import 'package:json_annotation/json_annotation.dart';

/// This value set contract specific codes for status.
enum ContractResourceStatusCodes {
  /// Display: Amended
  /// Definition: Contract is augmented with additional information to correct errors in a predecessor or to updated values in a predecessor. Usage: Contract altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status codes: revised; replaced.
  @JsonValue('amended')
  amended,
  /// Display: Appended
  /// Definition: Contract is augmented with additional information that was missing from a predecessor Contract. Usage: Contract altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status codes: updated, replaced.
  @JsonValue('appended')
  appended,
  /// Display: Cancelled
  /// Definition: Contract is terminated due to failure of the Grantor and/or the Grantee to fulfil one or more contract provisions. Usage: Abnormal contract termination. Precedence Order = 10. Comparable FHIR and v.3 status codes: stopped; failed; aborted.
  @JsonValue('cancelled')
  cancelled,
  /// Display: Disputed
  /// Definition: Contract is pended to rectify failure of the Grantor or the Grantee to fulfil contract provision(s). E.g., Grantee complaint about Grantor's failure to comply with contract provisions. Usage: Contract pended. Precedence Order = 7. Comparable FHIR and v.3 status codes: on hold; pended; suspended.
  @JsonValue('disputed')
  disputed,
  /// Display: Entered in Error
  /// Definition: Contract was created in error. No Precedence Order.  Status may be applied to a Contract with any status.
  @JsonValue('entered-in-error')
  entered_in_error,
  /// Display: Executable
  /// Definition: Contract execution pending; may be executed when either the Grantor or the Grantee accepts the contract provisions by signing. I.e., where either the Grantor or the Grantee has signed, but not both. E.g., when an insurance applicant signs the insurers application, which references the policy. Usage: Optional first step of contract execution activity.  May be skipped and contracting activity moves directly to executed state. Precedence Order = 3. Comparable FHIR and v.3 status codes: draft; preliminary; planned; intended; active.
  @JsonValue('executable')
  executable,
  /// Display: Executed
  /// Definition: Contract is activated for period stipulated when both the Grantor and Grantee have signed it. Usage: Required state for normal completion of contracting activity.  Precedence Order = 6. Comparable FHIR and v.3 status codes: accepted; completed.
  @JsonValue('executed')
  executed,
  /// Display: Negotiable
  /// Definition: Contract execution is suspended while either or both the Grantor and Grantee propose and consider new or revised contract provisions. I.e., where the party which has not signed proposes changes to the terms.  E .g., a life insurer declines to agree to the signed application because the life insurer has evidence that the applicant, who asserted to being younger or a non-smoker to get a lower premium rate - but offers instead to agree to a higher premium based on the applicants actual age or smoking status. Usage: Optional contract activity between executable and executed state. Precedence Order = 4. Comparable FHIR and v.3 status codes: in progress; review; held.
  @JsonValue('negotiable')
  negotiable,
  /// Display: Offered
  /// Definition: Contract is a proposal by either the Grantor or the Grantee. Aka - A Contract hard copy or electronic 'template', 'form' or 'application'. E.g., health insurance application; consent directive form. Usage: Beginning of contract negotiation, which may have been completed as a precondition because used for 0..* contracts. Precedence Order = 2. Comparable FHIR and v.3 status codes: requested; new.
  @JsonValue('offered')
  offered,
  /// Display: Policy
  /// Definition: Contract template is available as the basis for an application or offer by the Grantor or Grantee. E.g., health insurance policy; consent directive policy.  Usage: Required initial contract activity, which may have been completed as a precondition because used for 0..* contracts. Precedence Order = 1. Comparable FHIR and v.3 status codes: proposed; intended.
  @JsonValue('policy')
  policy,
  /// Display: Rejected
  /// Definition:  Execution of the Contract is not completed because either or both the Grantor and Grantee decline to accept some or all of the contract provisions. Usage: Optional contract activity between executable and abnormal termination. Precedence Order = 5. Comparable FHIR and v.3 status codes:  stopped; cancelled.
  @JsonValue('rejected')
  rejected,
  /// Display: Renewed
  /// Definition: Beginning of a successor Contract at the termination of predecessor Contract lifecycle. Usage: Follows termination of a preceding Contract that has reached its expiry date. Precedence Order = 13. Comparable FHIR and v.3 status codes: superseded.
  @JsonValue('renewed')
  renewed,
  /// Display: Revoked
  /// Definition: A Contract that is rescinded.  May be required prior to replacing with an updated Contract. Comparable FHIR and v.3 status codes: nullified.
  @JsonValue('revoked')
  revoked,
  /// Display: Resolved
  /// Definition: Contract is reactivated after being pended because of faulty execution. *E.g., competency of the signer(s), or where the policy is substantially different from and did not accompany the application/form so that the applicant could not compare them. Aka - ''reactivated''. Usage: Optional stage where a pended contract is reactivated. Precedence Order = 8. Comparable FHIR and v.3 status codes: reactivated.
  @JsonValue('resolved')
  resolved,
  /// Display: Terminated
  /// Definition: Contract reaches its expiry date. It might or might not be renewed or renegotiated. Usage: Normal end of contract period. Precedence Order = 12. Comparable FHIR and v.3 status codes: Obsoleted.
  @JsonValue('terminated')
  terminated,
;

@override
  String toString() {
      switch(this) {
        case amended: return 'amended';
        case appended: return 'appended';
        case cancelled: return 'cancelled';
        case disputed: return 'disputed';
        case entered_in_error: return 'entered-in-error';
        case executable: return 'executable';
        case executed: return 'executed';
        case negotiable: return 'negotiable';
        case offered: return 'offered';
        case policy: return 'policy';
        case rejected: return 'rejected';
        case renewed: return 'renewed';
        case revoked: return 'revoked';
        case resolved: return 'resolved';
        case terminated: return 'terminated';
      }
      }
String toJson() => toString();
  ContractResourceStatusCodes fromString(String str) {
    switch(str) {
      case 'amended': return ContractResourceStatusCodes.amended;
      case 'appended': return ContractResourceStatusCodes.appended;
      case 'cancelled': return ContractResourceStatusCodes.cancelled;
      case 'disputed': return ContractResourceStatusCodes.disputed;
      case 'entered-in-error': return ContractResourceStatusCodes.entered_in_error;
      case 'executable': return ContractResourceStatusCodes.executable;
      case 'executed': return ContractResourceStatusCodes.executed;
      case 'negotiable': return ContractResourceStatusCodes.negotiable;
      case 'offered': return ContractResourceStatusCodes.offered;
      case 'policy': return ContractResourceStatusCodes.policy;
      case 'rejected': return ContractResourceStatusCodes.rejected;
      case 'renewed': return ContractResourceStatusCodes.renewed;
      case 'revoked': return ContractResourceStatusCodes.revoked;
      case 'resolved': return ContractResourceStatusCodes.resolved;
      case 'terminated': return ContractResourceStatusCodes.terminated;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContractResourceStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

