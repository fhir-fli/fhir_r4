part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirDecimal].
extension FhirDecimalExtension on num {
  /// Returns a new [FhirDecimal] constructed from this [num].
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

/// A FHIR primitive type representing `decimal`.
///
/// Subclass of [FhirNumber], able to represent fractional values.
class FhirDecimal extends FhirNumber
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        ProbabilityXRiskAssessmentPrediction,
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

  /// Private underscore constructor that simply assigns [valueString] and
  /// [isInt].
  const FhirDecimal._({
    required super.valueString,
    required this.isInt,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirDecimal] from [rawValue], which can be:
  /// - `null` (element-only usage if [element] is not null),
  /// - A numeric type [num],
  /// - A [String] that parses to a double.
  // ignore: sort_unnamed_constructors_first
  factory FhirDecimal(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    String? valueString;
    var isInt = false;

    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirDecimal.');
    }
    if (rawValue is num) {
      valueString = rawValue.toString();
      isInt = rawValue is int;
    } else if (rawValue is String) {
      // Attempt parse
      final possibleInt = int.tryParse(rawValue);
      if (possibleInt != null) {
        // Then also store as double to preserve decimal format
        // e.g. "4" -> 4.0 for consistent decimal representation
        isInt = true;
        valueString = rawValue;
      } else {
        final parsedDouble = double.tryParse(rawValue);
        if (parsedDouble == null) {
          throw ArgumentError(
            'FhirDecimal only supports numeric input or null, got: $rawValue',
          );
        }
        valueString = rawValue;
      }
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirDecimal only supports a num or string or null, got: $rawValue',
      );
    }

    return FhirDecimal._(
      valueString: valueString,
      isInt: isInt,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirDecimal] from a [FhirInteger].
  factory FhirDecimal.fromFhirInteger(
    FhirInteger integer, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return FhirDecimal(
      integer.valueString,
      element: element,
      id: id,
      extension_: extension_,
    );
  }

  /// Creates a [FhirDecimal] from JSON.
  factory FhirDecimal.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement = elemJson == null ? null : Element.fromJson(elemJson);
    return FhirDecimal(
      rawValue,
      element: parsedElement,
    );
  }

  /// Creates a [FhirDecimal] from a YAML input ([String] or [YamlMap]).
  static FhirDecimal fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirDecimal.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirDecimal.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirDecimal cannot be constructed from the provided input. '
        'It must be a YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirDecimal]. Returns `null` if it fails.
  static FhirDecimal? tryParse(dynamic input) {
    try {
      return FhirDecimal(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Fields / Getters
  // --------------------------------------------------------------------------

  /// Flag indicating whether the original input was an integer or not.
  final bool isInt;

  /// Returns this decimal as a [num], overriding [FhirNumber.valueNum].
  @override
  num? get valueNum => valueString == null ? null : num.parse(valueString!);

  /// Returns this decimal as a [double], if non-null.
  double? get valueDouble =>
      valueString == null ? null : double.parse(valueString!);

  /// Returns this decimal as an [int], or `null` if [isInt] is `false`.
  int? get valueInt =>
      (valueString != null && isInt) ? int.parse(valueString!) : null;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"decimal"`.
  @override
  String get fhirType => 'decimal';

  /// Serializes the instance to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      // If it's an integer, store as int; otherwise store as double
      if (valueNum != null) 'value': valueInt ?? valueNum,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Returns the string or `''`.
  @override
  String toString() => valueString ?? '';

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirDecimal &&
      other.valueNum == valueNum &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimal && other.valueNum == valueNum) ||
      (other is num && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirDecimal clone() => copyWith();

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirDecimal noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirDecimalCopyWithImpl<FhirDecimal> get copyWith =>
      $FhirDecimalCopyWithImpl<FhirDecimal>(this, (value) => value);
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirDecimalCopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirDecimalCopyWithImpl(this._value, this._then);

  final FhirDecimal _value;
  final T Function(FhirDecimal) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirDecimal(
        identical(newValue, fhirSentinel) ? _value.valueString : newValue,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
