import 'package:fhir_r4/fhir_r4.dart';

/// One error issue in an OperationOutcome: the shape every package in this
/// family answered a failure with. Until 2026-10-01 each had its own copy
/// (bulk export, bulk import, the REST client, the mapping engine; twelve
/// across the three FHIR versions), and this file is emitted by
/// fhir_generator so the versions cannot drift again.
///
/// Severity is `error`. [code] defaults to `invalid`, the IssueType for
/// content or a request that could not be processed; [details] is the text
/// a person reads, [diagnostics] what the machine knows (a response body, an
/// exception message); [contained] keeps a resource with the complaint.
OperationOutcome errorOperationOutcome({
  String? details,
  String? diagnostics,
  IssueType code = IssueType.invalid,
  List<Resource>? contained,
}) =>
    OperationOutcome(
      contained: contained,
      issue: <OperationOutcomeIssue>[
        OperationOutcomeIssue(
          severity: IssueSeverity.error,
          code: code,
          details: details == null
              ? null
              : CodeableConcept(text: details.toFhirString),
          diagnostics: diagnostics?.toFhirString,
        ),
      ],
    );
