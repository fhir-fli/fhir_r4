part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirInteger].
extension FhirIntegerExtension on num {
  /// Returns a new [FhirInteger] from this [num], provided it's truly an [int].
  FhirInteger get toFhirInteger => this is int
      ? FhirInteger(this as int)
      : int.tryParse(toString()) != null
          ? FhirInteger(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

/// A FHIR primitive type representing `integer`.
///
/// Subclass of [FhirNumber]. Only allows whole numbers (no decimals).
class FhirInteger extends FhirNumber
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        DetailXGoalTarget,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        MultipleBirthXPatient,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXStructureMapParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
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

  /// Private underscore constructor that just sets [valueString] on [super].
  const FhirInteger._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'Integer',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirInteger] from [rawValue], which can be:
  /// - `null` (element-only usage),
  /// - An integer [num],
  /// - A string that parses to an integer.
  // ignore: sort_unnamed_constructors_first
  factory FhirInteger(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String objectPath = 'Integer',
  }) {
    String? parsedString;

    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirInteger.');
    }
    if (rawValue is num) {
      if (rawValue is int) {
        parsedString = rawValue.toString();
      } else {
        throw ArgumentError(
          'FhirInteger only supports an int or null, got: $rawValue',
        );
      }
    } else if (rawValue is String) {
      final asInt = int.tryParse(rawValue);
      if (asInt == null) {
        throw ArgumentError(
          'FhirInteger only supports an integer or null, got: $rawValue',
        );
      }
      parsedString = asInt.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirInteger only supports an int or String or null, got: $rawValue',
      );
    }

    return FhirInteger._(
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

  /// Creates a [FhirInteger] from JSON.
  factory FhirInteger.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement = elemJson == null ? null : Element.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Integer';
    return FhirInteger(value, element: parsedElement, objectPath: objectPath);
  }

  /// Creates a [FhirInteger] from a YAML input ([String] or [YamlMap]).
  static FhirInteger fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirInteger.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirInteger.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirInteger: must be a YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirInteger]. Returns `null` if
  /// parsing fails.
  static FhirInteger? tryParse(dynamic input) {
    try {
      return FhirInteger(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns the integer value, or `null` if [valueString] is null.
  @override
  int? get valueNum => valueString == null ? null : int.tryParse(valueString!);

  /// Alias for [valueNum], returning an [int].
  int? get valueInt => valueNum;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"integer"`.
  @override
  String get fhirType => 'integer';

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
      other is FhirInteger &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger && other.valueString == valueString) ||
      (other is int && other == valueInt) ||
      (other is double && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirInteger clone() => copyWith();

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirInteger noExtensions() => copyWith(disallowExtensions: true);

  FhirInteger _copyWith({
    required FhirInteger Function(FhirInteger) then,
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
      FhirInteger(
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
            ? this.objectPath ?? 'Integer'
            : objectPath as String? ?? 'Integer',
      ),
    );
  }

  /// Creates a new instance with the specified fields replaced.
  @override
  FhirInteger copyWith({
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
