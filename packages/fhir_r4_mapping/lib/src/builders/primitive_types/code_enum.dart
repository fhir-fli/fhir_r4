part of 'primitive_types.dart';

/// Extension of FhirCode for Specific FhirCode
abstract class FhirCodeEnumBuilder extends FhirCodeBuilder {
  /// Private underscore constructor that just calls `super._(...)`,
  /// passing the validated code. We can also store system, version, display.
  /// This means we do no further logic: any validation is done in a
  /// public factory.
  FhirCodeEnumBuilder._({
    required super.valueString,
    this.system,
    this.version,
    this.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath,
  }) : super._();

  /// Creates a [FhirCodeEnumBuilder] from [rawValue], which can be:
  /// - `null` (element-only usage if [element] is not null),
  // ignore: sort_unnamed_constructors_first
  FhirCodeEnumBuilder({
    required super.valueString,
    this.system,
    this.version,
    this.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath,
  }) : super._();

  /// [system]
  /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  final FhirUriBuilder? system;

  /// [version]
  /// The version of the code system which was used when choosing this code.
  /// Note that a well-maintained code system does not need the version
  /// reported, because the meaning of codes is consistent across versions.
  /// However this cannot consistently be assured, and when the meaning is
  /// not guaranteed to be consistent, the version SHOULD be exchanged.
  final FhirStringBuilder? version;

  /// [display]
  /// A representation of the meaning of the code in the system, following
  /// the rules of the system.
  final FhirStringBuilder? display;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': valueString?.isEmpty ?? true ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
