part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirPositiveInt].
extension FhirPositiveIntExtension on num {
  /// Returns a [FhirPositiveInt] from this [num], if it's an integer > 0.
  ///
  /// Otherwise throws a [FormatException].
  FhirPositiveInt get toFhirPositiveInt => this is int
      ? FhirPositiveInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// A FHIR primitive type `positiveInt`.
///
/// Subclass of [FhirNumber]. Only allows strictly positive integers ([1..∞]).
class FhirPositiveInt extends FhirNumber
    implements
        DoseNumberXImmunizationProtocolApplied,
        SeriesDosesXImmunizationProtocolApplied,
        DoseNumberXImmunizationEvaluation,
        SeriesDosesXImmunizationEvaluation,
        DoseNumberXImmunizationRecommendationRecommendation,
        SeriesDosesXImmunizationRecommendationRecommendation,
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

  /// Private underscore constructor, calls [super._].
  const FhirPositiveInt._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'PositiveInt',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirPositiveInt] from [rawValue], which must be an [int] > 0
  /// or a [String] that parses to an int > 0, or `null` (with [element]).
  // ignore: sort_unnamed_constructors_first
  factory FhirPositiveInt(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String objectPath = 'PositiveInt',
  }) {
    String? parsedString;

    if (rawValue == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirPositiveInt.',
      );
    }
    if (rawValue is num) {
      if (rawValue is int) {
        if (rawValue <= 0) {
          throw ArgumentError(
            'FhirPositiveInt only supports positive integers, got: $rawValue',
          );
        }
        parsedString = rawValue.toString();
      } else {
        throw ArgumentError(
          'FhirPositiveInt only supports an int or null, got: $rawValue',
        );
      }
    } else if (rawValue is String) {
      final asInt = int.tryParse(rawValue);
      if (asInt == null || asInt <= 0) {
        throw ArgumentError(
          'FhirPositiveInt only supports positive integers, got: $rawValue',
        );
      }
      parsedString = asInt.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirPositiveInt only supports an int or null, got: $rawValue',
      );
    }

    return FhirPositiveInt._(
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

  /// Constructs a [FhirPositiveInt] from a JSON [Map].
  factory FhirPositiveInt.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement = elemJson == null ? null : Element.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';

    return FhirPositiveInt(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirPositiveInt] from a YAML input ([String] or [YamlMap]).
  static FhirPositiveInt fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirPositiveInt.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirPositiveInt.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirPositiveInt: not a valid YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirPositiveInt]. Returns `null`
  /// if unsuccessful.
  static FhirPositiveInt? tryParse(dynamic input) {
    try {
      return FhirPositiveInt(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns the integer value, or `null` if [valueString] is null.
  @override
  int? get valueNum => valueString == null ? null : int.parse(valueString!);

  /// Same as [valueNum].
  int? get valueInt => valueNum;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"positiveInt"`.
  @override
  String get fhirType => 'positiveInt';

  /// JSON serialization.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueNum != null) 'value': valueNum,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Returns the string form or `'null'`.
  @override
  String toString() => valueString ?? 'null';

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirPositiveInt &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality checks [FhirPositiveInt], or an [int]/[double] with the same value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirPositiveInt && other.valueString == valueString) ||
      (other is int && other == valueInt) ||
      (other is double && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirPositiveInt clone() => copyWith();

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirPositiveInt noExtensions() => copyWith(disallowExtensions: true);

  FhirPositiveInt _copyWith({
    required FhirPositiveInt Function(FhirPositiveInt) then,
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
      FhirPositiveInt(
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
            ? this.objectPath ?? 'PositiveInt'
            : objectPath as String? ?? 'PositiveInt',
      ),
    );
  }

  /// Creates a new instance with the specified fields replaced.
  @override
  FhirPositiveInt copyWith({
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
