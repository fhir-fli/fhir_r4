part of 'implementation_guide.dart';

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
sealed class ExampleXImplementationGuideResource extends DataType {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
class BooleanExampleImplementationGuideResource extends FhirBoolean
    implements ExampleXImplementationGuideResource {
  /// Constructor for [BooleanExampleImplementationGuideResource]
  BooleanExampleImplementationGuideResource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanExampleImplementationGuideResource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanExampleImplementationGuideResource;
}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
class CanonicalExampleImplementationGuideResource extends FhirCanonical
    implements ExampleXImplementationGuideResource {
  /// Constructor for [CanonicalExampleImplementationGuideResource]
  CanonicalExampleImplementationGuideResource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalExampleImplementationGuideResource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalExampleImplementationGuideResource;
}

/// The source address for the page.
sealed class NameXImplementationGuidePage extends DataType {}

/// The source address for the page.
class UrlNameImplementationGuidePage extends FhirUrl
    implements NameXImplementationGuidePage {
  /// Constructor for [UrlNameImplementationGuidePage]
  UrlNameImplementationGuidePage(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlNameImplementationGuidePage.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlNameImplementationGuidePage;
}

/// The source address for the page.
class ReferenceNameImplementationGuidePage extends Reference
    implements NameXImplementationGuidePage {
  /// Factory constructor for super class
  factory ReferenceNameImplementationGuidePage.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceNameImplementationGuidePage;
}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
sealed class ExampleXImplementationGuideResource1 extends DataType {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
class BooleanExampleImplementationGuideResource1 extends FhirBoolean
    implements ExampleXImplementationGuideResource1 {
  /// Constructor for [BooleanExampleImplementationGuideResource]
  BooleanExampleImplementationGuideResource1(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanExampleImplementationGuideResource1.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanExampleImplementationGuideResource1;
}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
class CanonicalExampleImplementationGuideResource1 extends FhirCanonical
    implements ExampleXImplementationGuideResource1 {
  /// Constructor for [CanonicalExampleImplementationGuideResource1]
  CanonicalExampleImplementationGuideResource1(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalExampleImplementationGuideResource1.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalExampleImplementationGuideResource1;
}
