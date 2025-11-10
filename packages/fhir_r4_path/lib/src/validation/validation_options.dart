// ignore_for_file: avoid_positional_boolean_parameters, avoid_returning_this
// ignore_for_file: avoid_print

import 'package:fhir_r4_path/fhir_r4_path.dart';
class ValidationOptions {
  /// Constructs validation options with a default FHIR version.
  ValidationOptions({this.fhirVersion = FhirPublication.r4});

  /// Constructs validation options with a specified language.
  ValidationOptions.withLanguage(this.fhirVersion, String language) {
    if (language.isNotEmpty) {
      langs = AcceptLanguageHeader(language, false);
    }
  }

  /// Creates a default instance of validation options.
  factory ValidationOptions.defaults() {
    return ValidationOptions.withLanguage(FhirPublication.r4, 'en, en-US');
  }

  /// The accepted language header for validation.
  AcceptLanguageHeader? langs;

  /// Determines whether to use a server for validation.
  bool useServer = true;

  /// Determines whether to use a client for validation.
  bool useClient = true;

  /// Indicates whether to guess the system for a code.
  bool guessSystem = false;

  /// Indicates whether to validate membership only.
  bool membershipOnly = false;

  /// Enables display warning mode during validation.
  bool displayWarningMode = false;

  /// Indicates whether to use ValueSet URLs directly.
  bool vsAsUrl = false;

  /// Indicates whether version flexibility is allowed.
  bool versionFlexible = true;

  /// Determines whether to use ValueSet displays during validation.
  bool useValueSetDisplays = false;

  /// Allows English as an acceptable language.
  bool englishOk = true;

  /// Enables active-only validation.
  bool activeOnly = false;

  /// Indicates if example resources are acceptable.
  bool exampleOK = false;

  /// The FHIR version for validation.
  FhirPublication fhirVersion;

  /// Retrieves the accepted language header.
  AcceptLanguageHeader? getLanguages() => langs;

  /// Checks whether languages are specified.
  bool hasLanguages() => langs != null && langs!.source.isNotEmpty;

  /// Returns a copy of the validation options with a specified language.
  ValidationOptions withLanguage(String language) {
    if (language.isEmpty) return this;
    final copy = _copy()..addLanguage(language);
    return copy;
  }

  /// Returns a copy with server usage disabled.
  ValidationOptions withNoServer() {
    final copy = _copy()..useServer = false;
    return copy;
  }

  /// Returns a copy with client usage disabled.
  ValidationOptions withNoClient() {
    final copy = _copy()..useClient = false;
    return copy;
  }

  /// Returns a copy with system guessing enabled or disabled.
  ValidationOptions withGuessSystem([bool value = true]) {
    final copy = _copy()..guessSystem = value;
    return copy;
  }

  /// Returns a copy with active-only validation enabled.
  ValidationOptions withActiveOnly() {
    final copy = _copy()..activeOnly = true;
    return copy;
  }

  /// Returns a copy with membership-only validation enabled.
  ValidationOptions withCheckValueSetOnly() {
    final copy = _copy()..membershipOnly = true;
    return copy;
  }

  /// Returns a copy with ValueSet URL usage enabled.
  ValidationOptions withVsAsUrl() {
    final copy = _copy()..vsAsUrl = true;
    return copy;
  }

  /// Returns a copy with version flexibility set to the specified value.
  ValidationOptions withVersionFlexible(bool value) {
    final copy = _copy()..versionFlexible = value;
    return copy;
  }

  /// Returns a copy with ValueSet display usage enabled or disabled.
  ValidationOptions withUseValueSetDisplays(bool useValueSetDisplays) {
    final copy = _copy()..useValueSetDisplays = useValueSetDisplays;
    return copy;
  }

  /// Returns a copy with English usage set to the specified value.
  ValidationOptions withEnglishOk(bool value) {
    final copy = _copy()..englishOk = value;
    return copy;
  }

  /// Enables example resources and returns the current instance.
  ValidationOptions withExampleOK() {
    return setExampleOK(true);
  }

  /// Adds a language to the accepted language header.
  ValidationOptions addLanguage(String language) {
    if (langs == null) {
      langs = AcceptLanguageHeader(language, false);
    } else {
      langs!.add(language);
    }
    return this;
  }

  /// Sets the accepted language header to a specified language.
  ValidationOptions setLanguages(String language) {
    langs = AcceptLanguageHeader(language, false);
    return this;
  }

  /// Sets whether to use a server for validation.
  ValidationOptions setNoServer(bool value) {
    useServer = value;
    return this;
  }

  /// Sets whether to use a client for validation.
  ValidationOptions setNoClient(bool value) {
    useClient = value;
    return this;
  }

  /// Sets whether to guess the system for a code.
  ValidationOptions setGuessSystem(bool value) {
    guessSystem = value;
    return this;
  }

  /// Sets whether to enable active-only validation.
  ValidationOptions setActiveOnly(bool value) {
    activeOnly = value;
    return this;
  }

  /// Sets membership-only validation.
  ValidationOptions setCheckValueSetOnly() {
    membershipOnly = true;
    return this;
  }

  /// Sets whether to use ValueSet URLs directly.
  ValidationOptions setVsAsUrl(bool value) {
    vsAsUrl = value;
    return this;
  }

  /// Sets version flexibility.
  ValidationOptions setVersionFlexible(bool value) {
    versionFlexible = value;
    return this;
  }

  /// Sets whether to use ValueSet displays during validation.
  ValidationOptions setUseValueSetDisplays(bool value) {
    useValueSetDisplays = value;
    return this;
  }

  /// Sets whether English is allowed as an acceptable language.
  ValidationOptions setEnglishOk(bool value) {
    englishOk = value;
    return this;
  }

  /// Sets display warning mode.
  ValidationOptions setDisplayWarningMode(bool value) {
    displayWarningMode = value;
    return this;
  }

  /// Enables or disables example resources.
  ValidationOptions setExampleOK(bool value) {
    exampleOK = value;
    return this;
  }

  /// Returns if the guess system is enabled.
  bool isGuessSystem() {
    return guessSystem;
  }

  /// Returns if useClient is enabled.
  bool isUseClient() {
    return useClient;
  }

  /// Returns if useServer is enabled.
  bool isUseServer() {
    return useServer;
  }

  /// Converts the validation options to a JSON-like string.
  String toJson() {
    return {
      'langs': langs?.toString() ?? '',
      'useServer': useServer,
      'useClient': useClient,
      'guessSystem': guessSystem,
      'activeOnly': activeOnly,
      'exampleOK': exampleOK,
      'membershipOnly': membershipOnly,
      'displayWarningMode': displayWarningMode,
      'versionFlexible': versionFlexible,
    }.toString();
  }

  /// Provides a summary of the accepted language header.
  String langSummary() {
    return langs?.toString().isEmpty ?? true ? '--' : langs!.toString();
  }

  /// Retrieves the FHIR version for validation.
  FhirPublication getFhirVersion() => fhirVersion;

  /// Creates a copy of the current validation options.
  ValidationOptions _copy() {
    return ValidationOptions(fhirVersion: fhirVersion)
      ..langs = langs?.copy()
      ..useServer = useServer
      ..useClient = useClient
      ..guessSystem = guessSystem
      ..activeOnly = activeOnly
      ..vsAsUrl = vsAsUrl
      ..versionFlexible = versionFlexible
      ..membershipOnly = membershipOnly
      ..useValueSetDisplays = useValueSetDisplays
      ..displayWarningMode = displayWarningMode
      ..exampleOK = exampleOK;
  }
}

/// Represents the result of a validation operation, including its outcome and
/// related metadata.
