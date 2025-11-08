part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirUrl].
extension FhirUrlExtension on String {
  /// Returns a new [FhirUrl] constructed from this [String].
  FhirUrl get toFhirUrl => FhirUrl(this);
}

/// Extension methods on [Uri] to easily convert to [FhirUrl].
extension FhirUrlUriExtension on Uri {
  /// Returns a new [FhirUrl] constructed from this [Uri].
  FhirUrl get toFhirUrl => FhirUrl.fromUri(this);
}

/// A specialized URI-type in FHIR known as `url`.
///
/// Internally extends [FhirUri]. This type typically indicates an absolute
/// URL addressing something on the web, though FHIR treats it similarly
/// to `uri`.
class FhirUrl extends FhirUri
    implements
        NameXImplementationGuidePage,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirUri]'s
  /// internal constructor.
  const FhirUrl._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirUrl] by parsing [rawValue] as either a [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null (element-only).
  /// - If [rawValue] is a [String], it is validated via [FhirUri.validateUri].
  /// - If [rawValue] is a [Uri], we store its string form.
  /// - Otherwise, throws an [ArgumentError].
  // ignore: sort_unnamed_constructors_first
  factory FhirUrl(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUrl.');
    } else if (rawValue is String) {
      parsedValue = FhirUri.validateUri(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUrl only supports a String or Uri. Got: $rawValue',
      );
    }

    return FhirUrl._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirUrl] from a [Uri] object.
  factory FhirUrl.fromUri(
    Uri input, [
    Element? element,
  ]) {
    return FhirUrl(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUrl] from a JSON [Map].
  factory FhirUrl.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);

    return FhirUrl(
      rawValue,
      element: parsedElement,
    );
  }

  /// Constructs a [FhirUrl] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirUrl fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUrl.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUrl.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUrl cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirUrl]. Returns `null` if parsing fails.
  static FhirUrl? tryParse(dynamic input) {
    try {
      return FhirUrl(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirUrl] into a JSON map.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts parallel [values] and [elements] into a list of [FhirUrl].
  static List<FhirUrl> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirUrl(val, element: elem);
    });
  }

  /// Converts a list of [FhirUrl] to a JSON map with parallel `'value'`/`'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirUrl> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type `"url"`.
  @override
  String get fhirType => 'url';

  /// Returns the string or `"null"`.
  @override
  String toString() => valueString ?? 'null';

  /// Deep equality check for [FhirUrl].
  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirUrl &&
      other.valueString == valueString &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

  /// Checks equality with [FhirUrl], [Uri], or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUrl && other.valueString == valueString) ||
      (other is Uri && other == valueUri) ||
      (other is String && other == valueString);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Clones this [FhirUrl].
  @override
  FhirUrl clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirUrlCopyWithImpl<FhirUrl> get copyWith =>
      $FhirUrlCopyWithImpl<FhirUrl>(this, (value) => value as FhirUrl);

  // --------------------------------------------------------------------------
  // Additional Convenience (Unchanged from your code)
  // --------------------------------------------------------------------------

  /// Encodes a query component as per HTML 4.01 rules.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes a percent-encoded query component.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }

  /// Splits a query string into a map of keys to a list of values.
  static Map<String, List<String>> splitQueryStringAll(
    String query, {
    Encoding encoding = utf8,
  }) {
    return Uri.splitQueryString(query, encoding: encoding).map(
      (key, value) => MapEntry<String, List<String>>(
        key,
        value.isEmpty ? <String>[] : <String>[value],
      ),
    );
  }
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirUrlCopyWithImpl<T> extends $FhirUriCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  $FhirUrlCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirUrl(
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
