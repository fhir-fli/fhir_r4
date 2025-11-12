import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// A description of one NDJSON file to be imported.
class ImportFile {
  /// Creates an [ImportFile] with the specified resourceType and URL.
  ImportFile({
    required this.resourceType,
    required this.url,
  });

  /// The FHIR resourceType stored within this NDJSON file (e.g. "Patient")
  final R4ResourceType resourceType;

  /// The HTTP(S) location of the NDJSON file.
  final Uri url;
}

/// A class to handle a FHIR Bulk Import (“\$import”) request.
///
/// Per HAPI/Smile CDR docs:
/// - POST /$import with a Parameters resource in the body
/// - Must have `Prefer: respond-async`
/// - Body must contain inputFormat = "application/fhir+ndjson", etc.
/// - Each file must be one resourceType only
/// - The server responds with an OperationOutcome. Typically this will
///   contain a job ID in `issue[0].diagnostics`.
///
/// Note: The official specs do not define a standard *polling* URL for import.
class BulkImportRequest {
  /// Creates a [BulkImportRequest] with the specified parameters.
  BulkImportRequest({
    required this.base,
    required this.files,
    this.inputSource,
    this.credentialHttpBasic,
    this.maxBatchResourceCount,
    this.client,
    this.additionalParameters,
  })  : assert(files.isNotEmpty, 'At least one file must be provided'),
        assert(
          files.every(
            (f) =>
                f.url.hasScheme &&
                (f.url.scheme == 'http' || f.url.scheme == 'https'),
          ),
          'All file URLs must be valid HTTP/HTTPS URLs',
        );

  /// The server base URL, e.g. https://example.com/fhir
  final Uri base;

  /// The list of NDJSON files to be imported (each has a resourceType + URL).
  final List<ImportFile> files;

  /// Optional “inputSource” - can be used to indicate the base URL for
  /// the FHIR server origin
  final String? inputSource;

  /// Optional HTTP Basic credentials that the server can use to fetch
  /// the NDJSON
  final String? credentialHttpBasic;

  /// Optionally specify the batch size used by the server (HAPI default = 500).
  final int? maxBatchResourceCount;

  /// If you have a custom HTTP client or want to mock calls
  final Client? client;

  /// You can supply additional custom parameters if desired (e.g. extension).
  /// For each key→value, we’ll add a
  /// `{"name": key, "valueString": value}` param.
  final Map<String, String>? additionalParameters;

  /// Initiates the Bulk Import by POSTing a FHIR Parameters resource to
  /// `/\$import`, returning the server’s OperationOutcome
  /// (which typically includes the job ID).
  Future<OperationOutcome> importData() async {
    final httpClient = client ?? Client();

    final parameters = _buildParametersResource();
    final body = jsonEncode(parameters.toJson());

    final headers = <String, String>{
      'Content-Type': 'application/fhir+json',
      'Prefer': 'respond-async',
    };

    late Response response;
    try {
      final importUrl =
          base.toString().endsWith('/') ? '$base\$import' : '$base/\$import';
      final importUri = Uri.tryParse(importUrl);
      if (importUri == null) {
        return _operationOutcome(
          'Invalid base URL: $base',
        );
      }

      response = await httpClient.post(
        importUri,
        headers: headers,
        body: body,
      );
    } catch (e) {
      return _operationOutcome(
        'Exception during Bulk Import POST',
        diagnostics: e.toString(),
      );
    }

    // If the server responds with e.g. 200 or 202, we expect an
    // OperationOutcome
    if (response.statusCode ~/ 100 != 2) {
      // 4xx or 5xx
      return _failedHttp(response.statusCode, response);
    }

    // Attempt to parse as OperationOutcome
    try {
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      return OperationOutcome.fromJson(decoded);
    } catch (e) {
      return _operationOutcome(
        'Failed to parse server response as OperationOutcome',
        diagnostics: 'HTTP ${response.statusCode}, body=${response.body}',
      );
    }
  }

  /// Constructs the `Parameters` resource that HAPI (Smile CDR) requires
  /// for `$import`.
  Parameters _buildParametersResource() {
    final paramList = <ParametersParameter>[
      // inputFormat
      ParametersParameter(
        name: 'inputFormat'.toFhirString,
        valueX: FhirCode('application/fhir+ndjson'),
      ),
    ];

    // inputSource (optional)
    if (inputSource != null && inputSource!.isNotEmpty) {
      paramList.add(
        ParametersParameter(
          name: 'inputSource'.toFhirString,
          valueX: FhirUri(inputSource),
        ),
      );
    }

    // storageDetail
    final storageParts = <ParametersParameter>[
      ParametersParameter(name: 'type'.toFhirString, valueX: FhirCode('https')),
    ];
    if (credentialHttpBasic != null && credentialHttpBasic!.isNotEmpty) {
      storageParts.add(
        ParametersParameter(
          name: 'credentialHttpBasic'.toFhirString,
          valueX: credentialHttpBasic?.toFhirString,
        ),
      );
    }
    if (maxBatchResourceCount != null && maxBatchResourceCount! > 0) {
      storageParts.add(
        ParametersParameter(
          name: 'maxBatchResourceCount'.toFhirString,
          valueX: maxBatchResourceCount?.toFhirInteger,
        ),
      );
    }

    paramList.add(
      ParametersParameter(
        name: 'storageDetail'.toFhirString,
        part_: storageParts,
      ),
    );

    // input sections, one per file
    for (final file in files) {
      paramList.add(
        ParametersParameter(
          name: 'input'.toFhirString,
          part_: [
            ParametersParameter(
              name: 'type'.toFhirString,
              valueX: FhirCode(file.resourceType.name),
            ),
            ParametersParameter(
              name: 'url'.toFhirString,
              valueX: FhirUri(file.url.toString()),
            ),
          ],
        ),
      );
    }

    // Additional parameters, if any
    if (additionalParameters != null && additionalParameters!.isNotEmpty) {
      additionalParameters!.forEach((key, value) {
        paramList.add(
          ParametersParameter(
            name: key.toFhirString,
            valueX: value.toFhirString,
          ),
        );
      });
    }

    return Parameters(
      parameter: paramList,
    );
  }

  /// Creates an [OperationOutcome] for an HTTP error.
  OperationOutcome _failedHttp(int statusCode, Response result) {
    return OperationOutcome(
      issue: [
        OperationOutcomeIssue(
          severity: IssueSeverity.error,
          code: IssueType.invalid,
          details: CodeableConcept(
            text: 'HTTP $statusCode error during Bulk Import'.toFhirString,
          ),
          diagnostics: result.body.toFhirString,
        ),
      ],
    );
  }

  /// Convenience function to create an error [OperationOutcome].
  OperationOutcome _operationOutcome(
    String issue, {
    String? diagnostics,
  }) {
    return OperationOutcome(
      issue: [
        OperationOutcomeIssue(
          severity: IssueSeverity.error,
          code: IssueType.invalid,
          details: CodeableConcept(text: issue.toFhirString),
          diagnostics: diagnostics?.toFhirString,
        ),
      ],
    );
  }
}
