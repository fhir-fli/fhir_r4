part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirUnsignedIntBuilder].
extension FhirUnsignedIntBuilderExtension on num {
  /// Returns a [FhirUnsignedIntBuilder] from this [num], if it's an
  /// integer ≥ 0.
  ///
  /// Otherwise throws a [FormatException].
  FhirUnsignedIntBuilder get toFhirUnsignedIntBuilder => this is int
      ? FhirUnsignedIntBuilder(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedIntBuilder(int.parse(toString()))
          : throw FormatException(
              'Invalid input for FhirUnsignedIntBuilder: $this',
            );
}

/// A FHIR primitive type `unsignedInt`.
///
/// Subclass of [FhirNumberBuilder]. Only allows non-negative integers
/// ([0..∞]).
class FhirUnsignedIntBuilder extends FhirNumberBuilder
    implements
        AllowedXCoverageEligibilityResponseBenefitBuilder,
        UsedXCoverageEligibilityResponseBenefitBuilder,
        AllowedXExplanationOfBenefitFinancialBuilder,
        UsedXExplanationOfBenefitFinancialBuilder,
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor, delegates to [super._].
  FhirUnsignedIntBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'UnsignedInt',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUnsignedIntBuilder] from [rawValue], which must be a
  /// non-negative integer or `null`.
  ///
  /// - If [rawValue] is `null`, [element] must be non-null
  /// (element-only usage).
  /// - If [rawValue] is an [int] ≥ 0, stores it.
  /// - If [rawValue] is a [String], it must parse to an int ≥ 0.
  // ignore: sort_unnamed_constructors_first
  factory FhirUnsignedIntBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'UnsignedInt',
  }) {
    String? parsedString;

    if (rawValue == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirUnsignedIntBuilder.',
      );
    }

    if (rawValue is num) {
      if (rawValue is int) {
        if (rawValue < 0) {
          throw ArgumentError(
            'FhirUnsignedIntBuilder only supports non-negative integers, '
            'got: $rawValue',
          );
        }
        parsedString = rawValue.toString();
      } else {
        throw ArgumentError(
          'FhirUnsignedIntBuilder only supports an int or null, got: $rawValue',
        );
      }
    } else if (rawValue is String) {
      final asInt = int.tryParse(rawValue);
      if (asInt == null || asInt < 0) {
        throw ArgumentError(
          'FhirUnsignedIntBuilder only supports non-negative integers, '
          'got: $rawValue',
        );
      }
      parsedString = asInt.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUnsignedIntBuilder only supports an int or string or null, '
        'got: $rawValue',
      );
    }

    return FhirUnsignedIntBuilder._(
      valueString: parsedString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirUnsignedIntBuilder] (with [ElementBuilder.empty]
  /// for metadata).
  factory FhirUnsignedIntBuilder.empty() =>
      FhirUnsignedIntBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUnsignedIntBuilder] from a JSON [Map].
  factory FhirUnsignedIntBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'UnsignedInt';
    return FhirUnsignedIntBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUnsignedIntBuilder] from a YAML input ([String] or [YamlMap]).
  static FhirUnsignedIntBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUnsignedIntBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUnsignedIntBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirUnsignedIntBuilder: '
        'not a valid YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirUnsignedIntBuilder]. Returns `null`
  /// if it fails.
  static FhirUnsignedIntBuilder? tryParse(dynamic input) {
    try {
      return FhirUnsignedIntBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns this value as an [int], or `null` if [valueString] is `null`.
  @override
  int? get valueNum => valueString == null ? null : int.parse(valueString!);

  /// Same as [valueNum].
  int? get valueInt => valueNum;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"unsignedInt"`.
  @override
  String get fhirType => 'unsignedInt';

  /// JSON serialization with `'value'` and `'_value'`.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueNum != null) 'value': valueNum,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Method to convert the builder object to the original Element object
  @override
  FhirUnsignedInt build() => FhirUnsignedInt.fromJson(toJson());

  /// Returns the [valueString] or `'null'`.
  @override
  String toString() => valueString ?? 'null';

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirUnsignedIntBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality checks [FhirUnsignedIntBuilder], or an [int]/[double] with the same value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirUnsignedIntBuilder && other.valueString == valueString) ||
      (other is int && other == valueInt) ||
      (other is double && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirUnsignedIntBuilder clone() => FhirUnsignedIntBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirUnsignedIntBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirUnsignedIntBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirUnsignedIntBuilder(
      newValue ?? valueString,
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

  @override
  FhirUnsignedIntBuilder createProperty(String propertyName) => this;

  @override
  FhirUnsignedIntBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUnsignedIntBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
