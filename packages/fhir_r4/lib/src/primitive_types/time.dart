part of 'primitive_types.dart';

/// Extension on [String] to easily convert it to a [FhirTime].
extension FhirTimeExtension on String {
  /// Creates a [FhirTime] from this [String].
  FhirTime get toFhirTime => FhirTime(this);
}

/// A FHIR primitive type representing a time of day (`time`).
///
/// Stored as a string like `"HH:MM:SS.sss"` with optional fractional seconds.
/// Not tied to a date or timezone; purely a clock time.
class FhirTime extends PrimitiveType
    implements
        Comparable<FhirTime>,
        ValueXContractAnswer,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
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

  /// Private underscore constructor that calls [super._] with [valueString].
  const FhirTime._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirTime] from [rawValue], validating if it's a valid
  /// HH:MM[:SS[.sss]] format.
  // ignore: sort_unnamed_constructors_first
  factory FhirTime(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final validatedString = _validateTime(rawValue);
    return FhirTime._(
      valueString: validatedString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirTime] from specific [hour], [minute], [second],
  /// [millisecond].
  ///
  /// - [hour] must be [0..23].
  /// - [minute], [second] must be [0..59].
  /// - [millisecond] is [0..999].
  factory FhirTime.fromUnits({
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) {
    final h = hour?.toString().padLeft(2, '0') ?? '00';
    var output = h;

    if (minute != null) {
      final m = minute.toString().padLeft(2, '0');
      output += ':$m';
      if (second != null) {
        final s = second.toString().padLeft(2, '0');
        output += ':$s';
        if (millisecond != null) {
          final ms = millisecond.toString().padLeft(3, '0');
          output += '.$ms';
        }
      }
    }
    return FhirTime(output);
  }

  /// Constructs a [FhirTime] from a JSON [Map].
  factory FhirTime.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement = elemJson == null ? null : Element.fromJson(elemJson);
    return FhirTime(rawValue, element: parsedElement);
  }

  /// Constructs a [FhirTime] from YAML ([String] or [YamlMap]).
  static FhirTime fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirTime.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirTime.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException('Invalid YAML format for FhirTime');
    }
  }

  /// Attempts to parse [input] into a [FhirTime]. Returns `null`
  /// if parsing fails.
  static FhirTime? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirTime(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates the [input] as a `time` format: `HH:MM[:SS[.sss]]`.
  /// Throws [FormatException] if invalid.
  static String? _validateTime(dynamic input) {
    if (input == null) return null; // element-only
    if (input is! String) {
      throw FormatException('Invalid time format, must be a string: $input');
    }
    if (input.isEmpty) return null;

    final timeRegex = RegExp(
      r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$',
    );
    if (timeRegex.hasMatch(input)) {
      return input;
    } else {
      throw FormatException('Invalid time format: $input');
    }
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"time"`.
  @override
  String get fhirType => 'time';

  /// Converts this [FhirTime] into a JSON [Map].
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueString != null) 'value': valueString,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Returns the string form or `''`.
  @override
  String toString() => valueString ?? '';

  @override
  String? get primitiveValue => valueString;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirTime &&
      other.valueString == valueString &&
      other.element == element;

  /// Overridden equality operator checking if [other] is a [FhirTime]
  /// with same string.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  @override
  bool equals(Object other) => _compare(Comparator.equal, other) ?? false;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  // --------------------------------------------------------------------------
  // Comparable Implementation
  // --------------------------------------------------------------------------

  /// Compares this [FhirTime] to [other], returning -1 if less, 1 if greater,
  /// or 0 otherwise.
  @override
  int compareTo(FhirTime other) {
    final isGt = this > other;
    if (isGt ?? false) return 1;
    final isLt = this < other;
    if (isLt ?? false) return -1;
    return 0;
  }

  // --------------------------------------------------------------------------
  // Time Components
  // --------------------------------------------------------------------------

  /// The hour component [0..23].
  int? get hour =>
      valueString == null ? null : int.tryParse(valueString!.split(':')[0]);

  /// The minute component [0..59].
  int? get minute {
    if (valueString == null) return null;
    final parts = valueString!.split(':');
    return parts.length > 1 ? int.tryParse(parts[1]) : null;
  }

  /// The second component [0..59].
  int? get second {
    if (valueString == null) return null;
    final parts = valueString!.split(':');
    if (parts.length > 2) {
      return int.tryParse(parts[2].split('.')[0]);
    }
    return null;
  }

  /// The millisecond component [0..999].
  int? get millisecond {
    if (valueString == null) return null;
    final dotParts = valueString!.split('.');
    if (dotParts.length > 1) {
      return int.tryParse(dotParts[1]);
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Arithmetic (Add / Subtract Time)
  // --------------------------------------------------------------------------

  /// Adds hours, minutes, seconds, and milliseconds to this time
  /// (wrapping at 24h).
  FhirTime plus({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    var newMs = (millisecond ?? 0) + milliseconds;
    var newSec = (second ?? 0) + seconds + (newMs ~/ 1000);
    newMs %= 1000;
    var newMin = (minute ?? 0) + minutes + (newSec ~/ 60);
    newSec %= 60;
    var newHr = (hour ?? 0) + hours + (newMin ~/ 60);
    newMin %= 60;
    newHr %= 24;

    return FhirTime.fromUnits(
      hour: newHr,
      minute: newMin,
      second: newSec,
      millisecond: newMs,
    );
  }

  /// Subtracts hours, minutes, seconds, milliseconds from this time
  /// (wrapping at 24h).
  FhirTime subtract({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    var newMs = (millisecond ?? 0) - milliseconds;
    var newSec = (second ?? 0) - seconds;
    var newMin = (minute ?? 0) - minutes;
    var newHr = (hour ?? 0) - hours;

    while (newMs < 0) {
      newMs += 1000;
      newSec -= 1;
    }
    while (newSec < 0) {
      newSec += 60;
      newMin -= 1;
    }
    while (newMin < 0) {
      newMin += 60;
      newHr -= 1;
    }
    newHr = (newHr % 24 + 24) % 24;

    return FhirTime.fromUnits(
      hour: newHr,
      minute: newMin,
      second: newSec,
      millisecond: newMs,
    );
  }

  // --------------------------------------------------------------------------
  // Precision
  // --------------------------------------------------------------------------

  /// Adjusts the time's precision (hour, minute, second, millisecond).
  ///
  /// If the time has a higher precision than requested, truncates.
  /// If the time has a lower precision, zero-fills missing parts.
  FhirTime adjustToPrecision(TemporalPrecisionEnum precision) {
    if (!precision.isValidTimePrecision) {
      throw ArgumentError(
        'Precision must be one of: hour, minute, second, or millisecond.',
      );
    }

    final h = hour ?? 0;
    final m = minute ?? 0;
    final s = second ?? 0;
    final ms = millisecond ?? 0;

    switch (precision) {
      case TemporalPrecisionEnum.hour:
        return FhirTime.fromUnits(hour: h);
      case TemporalPrecisionEnum.minute:
        return FhirTime.fromUnits(hour: h, minute: m);
      case TemporalPrecisionEnum.second:
        return FhirTime.fromUnits(hour: h, minute: m, second: s);
      case TemporalPrecisionEnum.millisecond:
        return FhirTime.fromUnits(
          hour: h,
          minute: m,
          second: s,
          millisecond: ms,
        );
      // year, month, day are not valid for `time`.
      case TemporalPrecisionEnum.year:
      case TemporalPrecisionEnum.month:
      case TemporalPrecisionEnum.day:
        throw ArgumentError('Unhandled precision: $precision');
    }
  }

  // --------------------------------------------------------------------------
  // Comparison Operators
  // --------------------------------------------------------------------------

  /// `>` operator for comparing times (returns `true/false` or `null` if invalid).
  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);

  /// `>=` operator.
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// `<` operator.
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);

  /// `<=` operator.
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  /// Checks if this time is after [other].
  bool? isAfter(Object other) => _compare(Comparator.greaterThan, other);

  /// Checks if this time is before [other].
  bool? isBefore(Object other) => _compare(Comparator.lessThan, other);

  /// Checks if this time is the same or after [other].
  bool? isSameOrAfter(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Checks if this time is the same or before [other].
  bool? isSameOrBefore(Object other) =>
      _compare(Comparator.lessThanEqual, other);

  /// Checks if this time is exactly equal to [other].
  bool? isEqual(Object other) => _compare(Comparator.equal, other);

  /// Checks if this time is "equivalent" to [other] (same HH:MM:SS.mmm).
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  // --------------------------------------------------------------------------
  // Internal Comparison
  // --------------------------------------------------------------------------

  /// Compares [this] with [other] using [comparator], returns `bool?`.
  bool? _compare(Comparator comparator, Object other) {
    final rhs = other is FhirTime
        ? other
        : other is String
            ? FhirTime.tryParse(other)
            : null;
    if (rhs == null) return false;

    if (valueString == null || rhs.valueString == null) return null;

    final lhsParts = valueString!.split(':');
    final rhsParts = rhs.valueString!.split(':');

    if (lhsParts.length != rhsParts.length) return null;

    // Compare each numeric component
    for (var i = 0; i < lhsParts.length; i++) {
      final lhsVal = double.parse(lhsParts[i]);
      final rhsVal = double.parse(rhsParts[i]);
      switch (comparator) {
        case Comparator.equal:
        case Comparator.equivalent:
          if (lhsVal != rhsVal) return false;
        // keep checking until mismatch or end
        case Comparator.greaterThan:
          if (lhsVal < rhsVal) return false;
          if (lhsVal > rhsVal) return true;
        // next component
        case Comparator.lessThan:
          if (lhsVal > rhsVal) return false;
          if (lhsVal < rhsVal) return true;

        case Comparator.greaterThanEqual:
          if (lhsVal < rhsVal) return false;
          if (lhsVal > rhsVal) return true;

        case Comparator.lessThanEqual:
          if (lhsVal > rhsVal) return false;
          if (lhsVal < rhsVal) return true;
      }
    }

    // If all components matched in >= / <= scenario => they are equal
    return comparator == Comparator.equal ||
        comparator == Comparator.equivalent ||
        comparator == Comparator.greaterThanEqual ||
        comparator == Comparator.lessThanEqual;
  }

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirTime clone() => copyWith();

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirTime noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirTimeCopyWithImpl<FhirTime> get copyWith =>
      $FhirTimeCopyWithImpl<FhirTime>(this, (value) => value);
}

/// An extension on [TemporalPrecisionEnum] to check if it is valid for `time`.
extension TimePrecisionCheck on TemporalPrecisionEnum {
  /// Valid time precisions: hour, minute, second, millisecond.
  bool get isValidTimePrecision =>
      this == TemporalPrecisionEnum.hour ||
      this == TemporalPrecisionEnum.minute ||
      this == TemporalPrecisionEnum.second ||
      this == TemporalPrecisionEnum.millisecond;
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirTimeCopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirTimeCopyWithImpl(this._value, this._then);

  final FhirTime _value;
  final T Function(FhirTime) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirTime(
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
