part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirUnsignedInt].
extension FhirUnsignedIntExtension on num {
  /// Returns a [FhirUnsignedInt] from this [num], if it's an integer ≥ 0.
  ///
  /// Otherwise throws a [FormatException].
  FhirUnsignedInt get toFhirUnsignedInt => this is int
      ? FhirUnsignedInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirUnsignedInt: $this');
}

/// A FHIR primitive type `unsignedInt`.
///
/// Subclass of [FhirNumber]. Only allows non-negative integers ([0..∞]).
class FhirUnsignedInt extends FhirNumber
    implements
        AllowedXCoverageEligibilityResponseBenefit,
        UsedXCoverageEligibilityResponseBenefit,
        AllowedXExplanationOfBenefitFinancial,
        UsedXExplanationOfBenefitFinancial,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor, delegates to [super._].
  const FhirUnsignedInt._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'UnsignedInt',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUnsignedInt] from [rawValue], which must be a
  /// non-negative integer or `null`.
  ///
  /// - If [rawValue] is `null`, [element] must be non-null
  /// (element-only usage).
  /// - If [rawValue] is an [int] ≥ 0, stores it.
  /// - If [rawValue] is a [String], it must parse to an int ≥ 0.
  // ignore: sort_unnamed_constructors_first
  factory FhirUnsignedInt(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String objectPath = 'UnsignedInt',
  }) {
    String? parsedString;

    if (rawValue == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirUnsignedInt.',
      );
    }

    if (rawValue is num) {
      if (rawValue is int) {
        if (rawValue < 0) {
          throw ArgumentError(
            'FhirUnsignedInt only supports non-negative integers, '
            'got: $rawValue',
          );
        }
        parsedString = rawValue.toString();
      } else {
        throw ArgumentError(
          'FhirUnsignedInt only supports an int or null, got: $rawValue',
        );
      }
    } else if (rawValue is String) {
      final asInt = int.tryParse(rawValue);
      if (asInt == null || asInt < 0) {
        throw ArgumentError(
          'FhirUnsignedInt only supports non-negative integers, got: $rawValue',
        );
      }
      parsedString = asInt.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUnsignedInt only supports an int or string or null, '
        'got: $rawValue',
      );
    }

    return FhirUnsignedInt._(
      valueString: parsedString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
      objectPath: objectPath,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUnsignedInt] from a JSON [Map].
  factory FhirUnsignedInt.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement = elemJson == null ? null : Element.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'UnsignedInt';
    return FhirUnsignedInt(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUnsignedInt] from a YAML input ([String] or [YamlMap]).
  static FhirUnsignedInt fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUnsignedInt.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUnsignedInt.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirUnsignedInt: not a valid YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirUnsignedInt]. Returns `null` if
  /// it fails.
  static FhirUnsignedInt? tryParse(dynamic input) {
    try {
      return FhirUnsignedInt(input);
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

  /// Returns the [valueString] or `'null'`.
  @override
  String toString() => valueString ?? 'null';

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirUnsignedInt &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality checks [FhirUnsignedInt], or an [int]/[double] with the same value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirUnsignedInt && other.valueString == valueString) ||
      (other is int && other == valueInt) ||
      (other is double && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirUnsignedInt clone() => copyWith();

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirUnsignedInt noExtensions() => copyWith(disallowExtensions: true);

  FhirUnsignedInt _copyWith({
    required FhirUnsignedInt Function(FhirUnsignedInt) then,
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
    Object? userData = fhirSentinel,
    Object? formatCommentsPre = fhirSentinel,
    Object? formatCommentsPost = fhirSentinel,
    Object? annotations = fhirSentinel,
    Object? objectPath = fhirSentinel,
  }) {
    return then(
      FhirUnsignedInt(
        identical(newValue, fhirSentinel) ? valueString : newValue,
        element: identical(element, fhirSentinel)
            ? this.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? this.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? this.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? this.disallowExtensions
            : disallowExtensions as bool?,
        userData: identical(userData, fhirSentinel)
            ? this.userData
            : userData as Map<String, dynamic>?,
        formatCommentsPre: identical(formatCommentsPre, fhirSentinel)
            ? this.formatCommentsPre
            : formatCommentsPre as List<String>?,
        formatCommentsPost: identical(formatCommentsPost, fhirSentinel)
            ? this.formatCommentsPost
            : formatCommentsPost as List<String>?,
        annotations: identical(annotations, fhirSentinel)
            ? this.annotations
            : annotations as List<dynamic>?,
        objectPath: identical(objectPath, fhirSentinel)
            ? this.objectPath ?? 'UnsignedInt'
            : objectPath as String? ?? 'UnsignedInt',
      ),
    );
  }

  /// Creates a new instance with the specified fields replaced.
  @override
  FhirUnsignedInt copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return _copyWith(
      then: (value) => value,
      newValue: newValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
      objectPath: objectPath,
    );
  }
}
