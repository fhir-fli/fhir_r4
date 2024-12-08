// ignore_for_file: public_member_api_docs, cascade_invocations, avoid_positional_boolean_parameters, avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

import 'java.dart';

class ValidationOptions {
  ValidationOptions({this.fhirVersion = FhirPublication.R5});

  ValidationOptions.withLanguage(this.fhirVersion, String language) {
    if (language.isNotEmpty) {
      langs = AcceptLanguageHeader(language, false);
    }
  }

  factory ValidationOptions.defaults() {
    return ValidationOptions.withLanguage(FhirPublication.R5, 'en, en-US');
  }

  AcceptLanguageHeader? langs;
  bool useServer = true;
  bool useClient = true;
  bool guessSystem = false;
  bool membershipOnly = false;
  bool displayWarningMode = false;
  bool vsAsUrl = false;
  bool versionFlexible = true;
  bool useValueSetDisplays = false;
  bool englishOk = true;
  bool activeOnly = false;
  bool exampleOK = false;
  FhirPublication fhirVersion;

  AcceptLanguageHeader? getLanguages() => langs;

  bool hasLanguages() => langs != null && langs!.source.isNotEmpty;

  ValidationOptions withLanguage(String language) {
    if (language.isEmpty) return this;
    final copy = _copy();
    copy.addLanguage(language);
    return copy;
  }

  ValidationOptions withNoServer() {
    final copy = _copy();
    copy.useServer = false;
    return copy;
  }

  ValidationOptions withNoClient() {
    final copy = _copy();
    copy.useClient = false;
    return copy;
  }

  ValidationOptions withGuessSystem([bool value = true]) {
    final copy = _copy();
    copy.guessSystem = value;
    return copy;
  }

  ValidationOptions withActiveOnly() {
    final copy = _copy();
    copy.activeOnly = true;
    return copy;
  }

  ValidationOptions withCheckValueSetOnly() {
    final copy = _copy();
    copy.membershipOnly = true;
    return copy;
  }

  ValidationOptions withVsAsUrl() {
    final copy = _copy();
    copy.vsAsUrl = true;
    return copy;
  }

  ValidationOptions withVersionFlexible(bool value) {
    final copy = _copy();
    copy.versionFlexible = value;
    return copy;
  }

  ValidationOptions withUseValueSetDisplays(bool useValueSetDisplays) {
    final copy = _copy();
    copy.useValueSetDisplays = useValueSetDisplays;
    return copy;
  }

  ValidationOptions withEnglishOk(bool value) {
    final copy = _copy();
    copy.englishOk = value;
    return copy;
  }

  ValidationOptions withExampleOK() {
    return setExampleOK(true);
  }

  ValidationOptions addLanguage(String language) {
    if (langs == null) {
      langs = AcceptLanguageHeader(language, false);
    } else {
      langs!.add(language);
    }
    return this;
  }

  ValidationOptions setLanguages(String language) {
    langs = AcceptLanguageHeader(language, false);
    return this;
  }

  ValidationOptions setNoServer(bool value) {
    useServer = value;
    return this;
  }

  ValidationOptions setNoClient(bool value) {
    useClient = value;
    return this;
  }

  ValidationOptions setGuessSystem(bool value) {
    guessSystem = value;
    return this;
  }

  ValidationOptions setActiveOnly(bool value) {
    activeOnly = value;
    return this;
  }

  ValidationOptions setCheckValueSetOnly() {
    membershipOnly = true;
    return this;
  }

  ValidationOptions setVsAsUrl(bool value) {
    vsAsUrl = value;
    return this;
  }

  ValidationOptions setVersionFlexible(bool value) {
    versionFlexible = value;
    return this;
  }

  ValidationOptions setUseValueSetDisplays(bool value) {
    useValueSetDisplays = value;
    return this;
  }

  ValidationOptions setEnglishOk(bool value) {
    englishOk = value;
    return this;
  }

  ValidationOptions setDisplayWarningMode(bool value) {
    displayWarningMode = value;
    return this;
  }

  ValidationOptions setExampleOK(bool value) {
    exampleOK = value;
    return this;
  }

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

  String langSummary() {
    return langs?.toString().isEmpty ?? true ? '--' : langs!.toString();
  }

  FhirPublication getFhirVersion() => fhirVersion;

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
