part of 'guidance_response.dart';

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
sealed class ModuleXGuidanceResponseGuidanceResponse extends DataType {}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
class UriModuleGuidanceResponseGuidanceResponse extends FhirUri
    implements ModuleXGuidanceResponseGuidanceResponse {
  /// Constructor for [UriModuleGuidanceResponseGuidanceResponse]
  UriModuleGuidanceResponseGuidanceResponse(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriModuleGuidanceResponseGuidanceResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriModuleGuidanceResponseGuidanceResponse;
}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
class CanonicalModuleGuidanceResponseGuidanceResponse extends FhirCanonical
    implements ModuleXGuidanceResponseGuidanceResponse {
  /// Constructor for [CanonicalModuleGuidanceResponseGuidanceResponse]
  CanonicalModuleGuidanceResponseGuidanceResponse(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalModuleGuidanceResponseGuidanceResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalModuleGuidanceResponseGuidanceResponse;
}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
class CodeableConceptModuleGuidanceResponseGuidanceResponse
    extends CodeableConcept implements ModuleXGuidanceResponseGuidanceResponse {
  /// Factory constructor for super class
  factory CodeableConceptModuleGuidanceResponseGuidanceResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptModuleGuidanceResponseGuidanceResponse;
}
