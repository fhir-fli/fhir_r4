/// SMART on FHIR authentication for R4B applications.
///
/// Since 0.13.0 this package is a re-export of `fhir_auth`, which serves
/// every FHIR version; the code here was byte-identical to fhir_r5_auth's and
/// fhir_r6_auth's. Nothing in it depends on the R4B model:
/// `AuthConfig.fhirBaseUrl` is a `Uri`.
library;

export 'package:fhir_auth/fhir_auth.dart';
