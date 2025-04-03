// ignore_for_file: avoid_positional_boolean_parameters, avoid_returning_this
// ignore_for_file: avoid_print

import 'dart:collection';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// A class representing validation options for FHIR validation processes.
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
class ValidationResult {
  /// Constructor for a generic [ValidationResult].
  ValidationResult({
    this.system,
    this.definition,
    this.display,
    this.severity,
    this.message,
    this.errorClass,
    this.txLink,
  });

  /// Constructor for an error result.
  ValidationResult.error({
    required this.message,
    this.errorClass,
  }) : severity = IssueSeverity.error;

  /// Constructor for a successful validation result.
  ValidationResult.success({
    this.system,
    this.definition,
    this.message,
    this.txLink,
  }) : severity = IssueSeverity.information;

  /// The associated concept definition.
  CodeSystemConcept? definition;

  /// The system URL.
  String? system;

  /// The display name of the validated concept.
  String? display;

  /// The severity of the validation result.
  IssueSeverity? severity;

  /// The validation message.
  String? message;

  /// The error classification.
  TerminologyServiceErrorClass? errorClass;

  /// The transaction link.
  String? txLink;

  /// Returns whether the validation result is acceptable.
  bool get isOk {
    return severity == null ||
        severity == IssueSeverity.information ||
        severity == IssueSeverity.warning;
  }

  /// Retrieves the display name of the validated concept.
  String? getDisplay() {
    return definition?.display?.valueString;
  }

  /// Retrieves the code of the validated concept.
  String? getCode() {
    return definition?.code.valueString;
  }

  /// Retrieves the definition of the validated concept.
  String? getDefinition() {
    return definition?.definition?.valueString;
  }

  /// Returns the associated concept definition.
  CodeSystemConcept? asConceptDefinition() => definition;

  /// Indicates whether the error was caused by the absence of a terminology
  /// service.
  bool isNoService() {
    return errorClass == TerminologyServiceErrorClass.noservice;
  }

  /// Returns the instance as a [Coding], if applicable.
  Coding? asCoding() {
    if (isOk && definition != null) {
      return Coding(
        system: system == null ? null : FhirUri(system),
        code: definition?.code,
        display: definition?.display,
      );
    }
    return null;
  }

  @override
  String toString() {
    return 'ValidationResult [definition=$definition, system=$system, '
        'severity=$severity, message=$message, errorClass=$errorClass, '
        'txLink=$txLink]';
  }
}

/// Classifies different types of errors that can occur during terminology
/// services operations.
class TerminologyServiceErrorClass extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TerminologyServiceErrorClass._(
    String? valueString, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'TerminologyServiceErrorClass',
  }) : super(valueString: valueString);

  /// Factory constructor to create a new instance of
  /// [TerminologyServiceErrorClass] with the specified parameters.
  // ignore: sort_unnamed_constructors_first
  factory TerminologyServiceErrorClass(
    String? rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'TerminologyServiceErrorClass',
    String? system,
    String? version,
    String? display,
  }) {
    return TerminologyServiceErrorClass._(
      rawValue,
      system: system?.toFhirUri,
      version: version?.toFhirString,
      display: display?.toFhirString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create [TerminologyServiceErrorClass] from JSON.
  factory TerminologyServiceErrorClass.fromJson(
    Map<String, dynamic> json,
  ) {
    final id = json['id'] as String?;
    final extension = json['extension'] is List<dynamic>
        ? (json['extension'] as List<dynamic>)
            .map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
            .toList()
        : null;
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TerminologyServiceErrorClass.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TerminologyServiceErrorClass cannot be constructed from JSON.',
      );
    }
    return TerminologyServiceErrorClass._(
      id: id?.toFhirString,
      extension_: extension,
      value,
      element: element,
    );
  }

  /// Unknown error type.
  static final TerminologyServiceErrorClass unknown =
      TerminologyServiceErrorClass._(
    'unknown',
  );

  /// Indicates no terminology service is available.
  static final TerminologyServiceErrorClass noservice =
      TerminologyServiceErrorClass._(
    'noservice',
  );

  /// An error occurred on the server.
  static final TerminologyServiceErrorClass serverError =
      TerminologyServiceErrorClass._(
    'serverError',
  );

  /// The value set is unsupported.
  static final TerminologyServiceErrorClass valueSetUnsupported =
      TerminologyServiceErrorClass._(
    'valueSetUnsupported',
  );

  /// The code system is unsupported.
  static final TerminologyServiceErrorClass codeSystemUnsupported =
      TerminologyServiceErrorClass._(
    'codeSystemUnsupported',
  );

  /// The operation is blocked by specific validation options.
  static final TerminologyServiceErrorClass blockedByOptions =
      TerminologyServiceErrorClass._(
    'blockedByOptions',
  );

  /// For instances where an Element is present but not value.
  static final TerminologyServiceErrorClass elementOnly =
      TerminologyServiceErrorClass._('');

  /// List of all enum-like values.
  static final List<TerminologyServiceErrorClass> values = [
    unknown,
    noservice,
    serverError,
    valueSetUnsupported,
    codeSystemUnsupported,
    blockedByOptions,
  ];

  /// Determines if the error type is related to infrastructure issues.
  bool isInfrastructure() {
    return this == TerminologyServiceErrorClass.noservice ||
        this == TerminologyServiceErrorClass.serverError ||
        this == TerminologyServiceErrorClass.valueSetUnsupported;
  }

  /// Clones the current instance.
  @override
  TerminologyServiceErrorClass clone() => TerminologyServiceErrorClass._(
        valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached.
  TerminologyServiceErrorClass withElement(Element? newElement) {
    return TerminologyServiceErrorClass._(
      valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation.
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TerminologyServiceErrorClass copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return TerminologyServiceErrorClass._(
      newValue?.toString() ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}

/// ValidatorFetcher is a utility class that fetches and validates resources
class ValidatorFetcher {
  /// Constructs a new instance of the validator fetcher.
  final HashMap<String, bool> urlCache = HashMap();

  /// Constructs a new instance of the validator fetcher.
  final HashMap<String, String> packageIdCache = HashMap();

  /// Resolves the URL and attempts to find the associated resource.
  void findResource(Object validator, String url) {
    try {
      resolveURL(validator, url);
    } catch (e) {
      // Log or handle the exception as needed
      print('Error resolving URL: $e');
    }
  }

  /// Resolves a given URL and determines if it can be processed or not.
  bool resolveURL(Object validator, String url) {
    // Check if the URL is already cached
    if (urlCache.containsKey(url)) {
      return urlCache[url]!;
    }

    // Handle special cases for FHIR-related URLs
    if (url.startsWith('http://hl7.org/fhir') ||
        url.startsWith('http://terminology.hl7.org')) {
      urlCache[url] = false;
      return false;
    }

    // Placeholder logic for handling additional FHIR URL scenarios
    // For example, you could check for package availability or other
    // conditions here
    // Example:
    if (url.contains('|')) {
      final baseUrl = url.substring(0, url.indexOf('|'));
      final version = url.substring(url.indexOf('|') + 1);
      // Load package or perform specific logic for `baseUrl` and `version`
      print('Base URL: $baseUrl, Version: $version');
    }

    // Assume external URLs are valid if no specific handling exists
    urlCache[url] = true;
    return true;
  }
}

/// ValidationContextCarrier provides additional resources or context
/// that may be relevant during validation. It allows resources to be
/// resolved dynamically if they become necessary.
class ValidationContextCarrier {
  /// A list of proxies that provide context resources.
  final List<ValidationContextResourceProxy> resources = [];

  /// Get the list of resource proxies.
  List<ValidationContextResourceProxy> getResources() => resources;
}

/// Interface for a resource loader in the validation context.
/// Allows partially loaded resources to be fully resolved when needed.
// ignore: one_member_abstracts
abstract class IValidationContextResourceLoader {
  /// Load a contained resource by its ID and type.
  Resource? loadContainedResource({
    required List<String> errors,
    required String path,
    required Element resource,
    required String id,
    required Type resourceType,
  });
}

/// Proxy for a validation context resource. This can either represent
/// a fully resolved `Resource` or a partially resolved `Element` with a loader.
class ValidationContextResourceProxy {
  /// Constructor for a fully resolved resource.
  ValidationContextResourceProxy.resource(this.resource)
      : element = null,
        loader = null,
        path = null,
        errors = null;

  /// Constructor for a partially resolved element with a loader.
  ValidationContextResourceProxy.element({
    required this.element,
    required this.loader,
    required this.path,
    required this.errors,
  }) : resource = null;

  /// The fully resolved resource, if available.
  final Resource? resource;

  /// The partially resolved element, if available.
  final Element? element;

  /// Loader for resolving the element into a full resource.
  final IValidationContextResourceLoader? loader;

  /// Path to the element in the resource.
  final String? path;

  /// Errors collected during the resolution process.
  final List<String>? errors;

  /// Load a contained resource by its ID and type.
  Resource? loadContainedResource(String id, Type resourceType) {
    if (resource != null) {
      // If the resource is already resolved, look for contained resources.
      if (resource is DomainResource) {
        for (final contained
            in (resource! as DomainResource).contained ?? <Resource>[]) {
          if (contained.id?.valueString == id &&
              contained.runtimeType == resourceType) {
            return contained;
          }
        }
      }
      return null;
    } else if (element != null && loader != null) {
      // Resolve the element into a full resource using the loader.
      return loader!.loadContainedResource(
        errors: errors ?? [],
        path: path!,
        resource: element!,
        id: id,
        resourceType: resourceType,
      );
    }
    return null;
  }
}
