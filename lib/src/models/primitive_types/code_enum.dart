part of 'primitive_types.dart';

/// Extension of FhirCode for Specific FhirCode
class FhirCodeEnum extends FhirCode {
  /// Private underscore constructor that just calls `super._(...)`,
  /// passing the validated code. We can also store system, version, display.
  /// This means we do no further logic: any validation is done in a
  /// public factory.
  FhirCodeEnum._({
    required super.validatedValue,
    this.system,
    this.version,
    this.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath,
  }) : super._(input: validatedValue);

  /// Public factory, similar to `FhirCode(...)`,
  /// that does `_validateCode` if needed
  // ignore: sort_unnamed_constructors_first
  factory FhirCodeEnum(
    String? rawInput, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated =
        rawInput != null ? FhirCode._validateCode(rawInput) : null;
    return FhirCodeEnum._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirCodeEnum] object
  factory FhirCodeEnum.empty() => FhirCodeEnum(null, element: Element.empty());

  /// Factory constructor to create from JSON.
  factory FhirCodeEnum.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FhirCodeEnum.empty().copyWith(element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FhirCodeEnum cannot be constructed from '
        'JSON with no value or element.',
      );
    }
    return FhirCodeEnum(
      value,
      element: element,
    );
  }

  /// Attempts to parse the input as a [FhirCodeEnum], returning `null` if
  /// parsing fails
  static FhirCodeEnum? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCodeEnum(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// [system]
  /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  final FhirUri? system;

  /// [version]
  /// The version of the code system which was used when choosing this code.
  /// Note that a well-maintained code system does not need the version
  /// reported, because the meaning of codes is consistent across versions.
  /// However this cannot consistently be assured, and when the meaning is
  /// not guaranteed to be consistent, the version SHOULD be exchanged.
  final FhirString? version;

  /// [display]
  /// A representation of the meaning of the code in the system, following
  /// the rules of the system.
  final FhirString? display;

  @override
  FhirCodeEnum clone() => FhirCodeEnum(
        value,
        system: system,
        version: version,
        display: display,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy with updated properties
  @override
  FhirCodeEnum copyWith({
    String? newValue,
    FhirUri? system,
    FhirString? version,
    FhirString? display,
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
    // no reason to check newValue’s type—this is not an integer or anything
    return FhirCodeEnum._(
      validatedValue: newValue ?? value,
      system: system ?? this.system,
      version: version ?? this.version,
      display: display ?? this.display,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': value?.isEmpty ?? true ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';
}
