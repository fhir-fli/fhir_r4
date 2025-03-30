part of 'primitive_types.dart';

/// Extension to convert a [String] to a [FhirOidBuilder].
extension FhirOidBuilderExtension on String {
  /// Converts a [String] to a [FhirOidBuilder].
  FhirOidBuilder get toFhirOidBuilder => FhirOidBuilder(this);
}

/// Extension to convert a [Uri] to a [FhirOid]
extension FhirOidUriExtension on Uri {
  /// Converts a [Uri] to a [FhirOid]
  FhirOidBuilder get toFhirOidBuilder => FhirOidBuilder.fromUri(this);
}

/// [FhirOidBuilder] represents a validated OID value in the FHIR standard.
class FhirOidBuilder extends FhirUriBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor: no external validation,
  /// but ensures that if [validatedValue] is null and [element] is null,
  /// we throw an error.
  FhirOidBuilder._({
    required super.validatedUri,
    super.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Oid',
  }) : super._() {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirOidBuilder');
    }
  }

  /// Constructs a [FhirOidBuilder] from a String input with validation.
  // ignore: sort_unnamed_constructors_first
  factory FhirOidBuilder(
    dynamic rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Oid',
  }) {
    // 1) Validate/parse
    //    - If rawInput is null and no element, throw
    //    - If rawInput is a string, parse it as Uri
    //    - If rawInput is a Uri, we can accept it directly
    Uri? finalUri;
    String? originalString;
    if (rawInput == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUri.');
    } else if (rawInput is String) {
      finalUri = _validateOid(rawInput);
      originalString = rawInput;
    } else if (rawInput is Uri) {
      finalUri = rawInput;
      originalString = rawInput.toString();
    } else if (rawInput != null) {
      throw ArgumentError(
        'FhirUri only supports a String or Uri, got: $rawInput',
      );
    }

    // 2) Construct via the private underscore constructor
    return FhirOidBuilder._(
      validatedUri: finalUri,
      input: originalString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirOidBuilder] object
  factory FhirOidBuilder.empty() =>
      FhirOidBuilder(null, element: ElementBuilder.empty());

  /// Constructs a [FhirOid] from a [Oid] object
  factory FhirOidBuilder.fromUri(
    Uri input, [
    ElementBuilder? element,
  ]) {
    return FhirOidBuilder(
      input,
      element: element,
    );
  }

  /// Factory constructor to create [FhirOidBuilder]
  /// from JSON.
  factory FhirOidBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson != null ? ElementBuilder.fromJson(elemJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Oid';
    return FhirOidBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirOidBuilder] from YAML.
  factory FhirOidBuilder.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirOidBuilder.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirOidBuilder.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid YAML format for FhirOidBuilder',
              );
  }

  /// Attempts to parse the input as a [FhirOidBuilder],
  /// returns `null` if it fails.
  static FhirOidBuilder? tryParse(dynamic input) {
    try {
      return input is String ? FhirOidBuilder(input) : null;
    } catch (_) {
      return null;
    }
  }

  /// Validates if the input matches the OID pattern.
  static Uri? _validateOid(String? input) {
    if (input == null) {
      return null;
    }
    final pattern = RegExp(r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$');
    if (pattern.hasMatch(input)) {
      return Uri.tryParse(input);
    }
    throw FormatException('Invalid FhirOid: $input');
  }

  /// Returns the FHIR type as 'oid'.
  @override
  String get fhirType => 'oid';

  /// Converts this instance to a [FhirOid] object
  @override
  FhirOid build() => FhirOid.fromJson(toJson());

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts the instance to a JSON string.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Provides a string representation of the OID.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirOidBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides the equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirOidBuilder && other.value == value) ||
      (other is String && other == value.toString());

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current [FhirOidBuilder] instance.
  @override
  FhirOidBuilder clone() => FhirOidBuilder(
        value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirOidBuilder copyWith({
    Uri? newValue,
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
    return FhirOidBuilder(
      newValue?.toString() ?? input,
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
      objectPath: objectPath ?? this.objectPath,
    );
  }

  /// Converts a list of JSON values to a list of [FhirOidBuilder] instances.
  static List<FhirOidBuilder> fromJsonList(
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
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirOidBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirOidBuilder] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirOidBuilder> oids) {
    return {
      'value': oids.map((oid) => oid.value).toList(),
      '_value': oids.map((oid) => oid.element?.toJson()).toList(),
    };
  }

  /// Creates an empty property in the object
  @override
  FhirOidBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirOidBuilder] object
  @override
  FhirOidBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirOidBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
