// // ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

// import 'package:fhir_r4/src/utils/accept_language_header.dart';
// import 'package:fhir_r4/src/fhir_path/java/fhir_publication.dart';

// class ValidationOptions {
//   ValidationOptions([FhirPublication? version]) {
//     fhirVersion = version ?? FhirPublication.R5;
//   }

//   ValidationOptions.withLanguage(FhirPublication version, String language) {
//     fhirVersion = version;
//     if (language.isNotEmpty) {
//       langs = AcceptLanguageHeader(language, false);
//     }
//   }

//   factory ValidationOptions.defaults() {
//     return ValidationOptions.withLanguage(FhirPublication.R5, 'en, en-US');
//   }

//   AcceptLanguageHeader? langs;
//   bool useServer = true;
//   bool useClient = true;
//   bool guessSystem = false;
//   bool membershipOnly = false;
//   bool displayWarningMode = false;
//   bool vsAsUrl = false;
//   bool versionFlexible = true;
//   bool useValueSetDisplays = false;
//   bool englishOk = true;
//   bool activeOnly = false;
//   bool exampleOk = false;
//   late FhirPublication fhirVersion;

//   AcceptLanguageHeader? getLanguages() => langs;

//   bool hasLanguages() => langs != null && langs!.source.isNotEmpty;

//   ValidationOptions withLanguage(String language) {
//     if (language.isEmpty) return this;
//     final copy = this.copy()..addLanguage(language);
//     return copy;
//   }

//   ValidationOptions withNoServer() {
//     final copy = this.copy()..useServer = false;
//     return copy;
//   }

//   ValidationOptions withNoClient() {
//     final copy = this.copy()..useClient = false;
//     return copy;
//   }

//   ValidationOptions withGuessSystem([bool value = true]) {
//     final copy = this.copy()..guessSystem = value;
//     return copy;
//   }

//   ValidationOptions withActiveOnly() {
//     final copy = this.copy()..activeOnly = true;
//     return copy;
//   }

//   ValidationOptions withCheckValueSetOnly() {
//     final copy = this.copy()..membershipOnly = true;
//     return copy;
//   }

//   ValidationOptions withVsAsUrl() {
//     final copy = this.copy()..vsAsUrl = true;
//     return copy;
//   }

//   ValidationOptions withVersionFlexible(bool value) {
//     final copy = this.copy()..versionFlexible = value;
//     return copy;
//   }

//   ValidationOptions withUseValueSetDisplays(bool value) {
//     final copy = this.copy()..useValueSetDisplays = value;
//     return copy;
//   }

//   ValidationOptions withEnglishOk(bool value) {
//     final copy = this.copy()..englishOk = value;
//     return copy;
//   }

//   void addLanguage(String language) {
//     if (langs == null) {
//       langs = AcceptLanguageHeader(language, false);
//     } else {
//       langs!.add(language);
//     }
//   }

//   ValidationOptions copy() {
//     final copy = ValidationOptions(fhirVersion)
//       ..langs = langs?.copy()
//       ..useServer = useServer
//       ..useClient = useClient
//       ..guessSystem = guessSystem
//       ..activeOnly = activeOnly
//       ..vsAsUrl = vsAsUrl
//       ..versionFlexible = versionFlexible
//       ..membershipOnly = membershipOnly
//       ..useValueSetDisplays = useValueSetDisplays
//       ..displayWarningMode = displayWarningMode
//       ..exampleOk = exampleOk;
//     return copy;
//   }

//   String toJson() {
//     return '''
// {
//   'langs': '${langs?.toString() ?? ''}',
//   'useServer': $useServer,
//   'useClient': $useClient,
//   'guessSystem': $guessSystem,
//   'activeOnly': $activeOnly,
//   'exampleOk': $exampleOk,
//   'membershipOnly': $membershipOnly,
//   'displayWarningMode': $displayWarningMode,
//   'versionFlexible': $versionFlexible
// }
// ''';
//   }

//   String langSummary() {
//     if (langs == null) return '--';
//     final summary = langs.toString();
//     return summary.isEmpty ? '--' : summary;
//   }
// }
