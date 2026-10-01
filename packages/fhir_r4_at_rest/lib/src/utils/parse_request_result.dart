import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// There are usually 3 types of responses from a RESTful request made to a FHIR
/// server. It can be a single Resource, it can be a Bundle, or it can be an
/// OperationOutcome (usually indicating an error). The functions below return
/// an object called ReturnResults. It contains 3 lists.
///
/// resources: the desired type of resource, or all resources if no type is
/// specified. It does look through Bundle entries to find resources.
///
/// otherResources: if a specific type of resource is included, but other types
/// are returned, they are included here
///
/// informationOperationOutcomes: this will include all OperationOutcomes that
/// are for informational purposes and not errors. This will also include if,
/// for instance, a Bundle is POSTed, and there are numerous Bundle entries
/// returned with information about what was posted
///
/// errorOperationOutcomes: all other operationOutcomes are included here.

/// This turns whatever was returned into a lsit of Resources.
ReturnResults<Resource> parseRequestResult(Resource result) => result is Bundle
    ? parseBundle(result)
    : result is OperationOutcome
        ? isInformational(result)
            ? ReturnResults<OperationOutcome>(
                informationOperationOutcomes: <OperationOutcome>[result],
              )
            : ReturnResults<OperationOutcome>(
                errorOperationOutcomes: <OperationOutcome>[result],
              )
        : ReturnResults<Resource>(resources: <Resource>[result]);

/// Extracts all Resources that were returned by the Bundle, as long as they
/// aren't OperationOutcomes, and includes all entries as informational
/// OperationOutcomes that don't contain a Resource
ReturnResults<Resource> parseBundle(Bundle bundle) {
  final returnResults = ReturnResults<Resource>();
  // Every Bundle's entries are its results. Quoted from
  // hl7.org/fhir/R4B/http.html, search, fetched 2026-10-01: the return
  // content is "a Bundle with type = searchset containing the results of
  // the search as a collection of zero or more resources"; and transaction:
  // "Each entry element SHALL contain a response element which details the
  // outcome of processing the entry". Only the transaction-response branch
  // used to run here, so a searchset came back empty.
  final isTransactionResponse = bundle.type == FhirCode('transaction-response');
  {
    for (final entry in bundle.entry ?? <BundleEntry>[]) {
      if (entry.resource != null) {
        if (entry.resource is OperationOutcome) {
          if (isInformational(entry.resource! as OperationOutcome)) {
            returnResults.informationOperationOutcomes
                .add(entry.resource! as OperationOutcome);
          } else {
            returnResults.errorOperationOutcomes
                .add(entry.resource! as OperationOutcome);
          }
        } else {
          returnResults.resources.add(entry.resource!);
        }
      } else if (entry.response?.outcome != null) {
        if (entry.response!.outcome is OperationOutcome) {
          if (isInformational(entry.response!.outcome! as OperationOutcome)) {
            returnResults.informationOperationOutcomes
                .add(entry.response!.outcome! as OperationOutcome);
          } else {
            returnResults.errorOperationOutcomes
                .add(entry.response!.outcome! as OperationOutcome);
          }
        } else {
          returnResults.resources.add(entry.response!.outcome!);
        }
      } else if (isTransactionResponse) {
        returnResults.informationOperationOutcomes.add(
          OperationOutcome(
            issue: <OperationOutcomeIssue>[
              OperationOutcomeIssue(
                code: IssueType.informational,
                diagnostics: 'Status: ${entry.response?.status ?? "none"}'
                        '\nLocation: ${entry.response?.location ?? "none"}'
                    .toFhirString,
                severity: IssueSeverity.information,
              ),
            ],
          ),
        );
      }
    }
  }
  return returnResults;
}

/// If you searched or requested only a specific type of result, this will
/// perform similarly to above, but will return ONLY that type of resource in
/// the resources field, others will be included in the otherResources as well
/// as in an OperationOutcome as a contained resource
ReturnResults<T> parseRequestResultForType<T>(Resource result) => result
        is OperationOutcome
    ? isInformational(result)
        ? ReturnResults<T>(
            informationOperationOutcomes: <OperationOutcome>[result],
          )
        : ReturnResults<T>(errorOperationOutcomes: <OperationOutcome>[result])
    : result is T
        ? ReturnResults<T>(resources: <T>[result as T])
        : result is Bundle
            ? parseBundleForType<T>(result)
            : ReturnResults<T>(
                errorOperationOutcomes: <OperationOutcome>[
                  incorrectResultType<T>(result),
                ],
              );

/// Extracts all Resources that were returned by the Bundle as long as they
/// are of type T
ReturnResults<T> parseBundleForType<T>(Bundle bundle) {
  final returnResults = ReturnResults<T>();
  // Every Bundle's entries are its results. Quoted from
  // hl7.org/fhir/R4B/http.html, search, fetched 2026-10-01: the return
  // content is "a Bundle with type = searchset containing the results of
  // the search as a collection of zero or more resources"; and transaction:
  // "Each entry element SHALL contain a response element which details the
  // outcome of processing the entry". Only the transaction-response branch
  // used to run here, so a searchset came back empty.
  final isTransactionResponse = bundle.type == FhirCode('transaction-response');
  {
    for (final entry in bundle.entry ?? <BundleEntry>[]) {
      if (entry.resource != null) {
        if (entry.resource is OperationOutcome) {
          if (isInformational(entry.resource! as OperationOutcome)) {
            returnResults.informationOperationOutcomes
                .add(entry.resource! as OperationOutcome);
          } else {
            returnResults.errorOperationOutcomes
                .add(entry.resource! as OperationOutcome);
          }
        } else if (entry.resource is T) {
          returnResults.resources.add(entry.resource! as T);
        } else {
          returnResults.errorOperationOutcomes
              .add(incorrectResultType<T>(entry.resource!));
        }
      } else if (entry.response?.outcome != null) {
        if (entry.response!.outcome is OperationOutcome) {
          if (isInformational(entry.response!.outcome! as OperationOutcome)) {
            returnResults.informationOperationOutcomes
                .add(entry.response!.outcome! as OperationOutcome);
          } else {
            returnResults.errorOperationOutcomes
                .add(entry.response!.outcome! as OperationOutcome);
          }
        } else if (entry.response!.outcome is T) {
          returnResults.resources.add(entry.response!.outcome! as T);
        } else {
          returnResults.errorOperationOutcomes
              .add(incorrectResultType<T>(entry.response!.outcome!));
        }
      } else if (isTransactionResponse) {
        returnResults.informationOperationOutcomes.add(
          OperationOutcome(
            issue: <OperationOutcomeIssue>[
              OperationOutcomeIssue(
                code: IssueType.informational,
                severity: IssueSeverity.information,
                diagnostics: 'Status: ${entry.response?.status ?? "none"}'
                        '\nLocation: ${entry.response?.location ?? "none"}'
                    .toFhirString,
              ),
            ],
          ),
        );
      }
    }
  }
  return returnResults;
}

/// Returns an OperationOutcome that contains the given Resource and a message
/// stating that it was not the type of resource that was specified
OperationOutcome incorrectResultType<T>(Resource result) =>
    errorOperationOutcome(
      code: IssueType.structure,
      contained: <Resource>[result],
      diagnostics: 'This request returned a bundle, and should have been a $T '
          'but is a ${result.resourceTypeString}. The resource is contained '
          'in this new and locally created OperationOutcome for '
          'troubleshooting purposes',
    );

/// Returns true if the OperationOutcome is informational
bool isInformational(OperationOutcome operationOutcome) =>
    operationOutcome.issue.isNotEmpty &&
    operationOutcome.issue.first.code.toString().toLowerCase() ==
        'informational';
