import 'dart:convert';
import 'dart:typed_data';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert from [String] to [FhirBase64Binary]
extension FhirBase64BinaryExtension on String {
  /// Converts a [String] to [FhirBase64Binary]
  FhirBase64Binary get toFhirBase64Binary => FhirBase64Binary(this);
}

/// [FhirBase64Binary] class that extends [PrimitiveType]
class FhirBase64Binary extends PrimitiveType<String?> {
  /// Public generative constructor with validation logic
  FhirBase64Binary(this.input, [Element? element])
      : super(
          input != null ? _validateBase64(input) : null,
          element,
        ) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
    object = value != null ? base64.decode(value!) : null;
    fileType = object != null ? _detectFileType(object!) : null;
  }

  /// Factory constructor to create from JSON with standardized keys
  factory FhirBase64Binary.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirBase64Binary(value, element);
  }

  /// Factory constructor for [FhirBase64Binary] that takes in a [dynamic]
  static FhirBase64Binary fromYaml(dynamic yaml) => yaml is String
      ? FhirBase64Binary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirBase64Binary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'FhirBase64Binary cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Try to parse a dynamic input into a [FhirBase64Binary]
  static FhirBase64Binary? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirBase64Binary(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Boolean getter to determine if only a value is present
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present
  bool get elementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present
  bool get valueAndElement => value != null && element != null;

  /// The original input value
  final String? input;

  /// The decoded object
  late final Uint8List? object;

  /// The detected file type
  late final Base64BinaryFileType? fileType;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirBase64Binary] instances
  static List<FhirBase64Binary> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as String?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBase64Binary(value, element);
    });
  }

  /// Converts a list of [FhirBase64Binary] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBase64Binary> binaries) {
    return {
      'value': binaries.map((binary) => binary.value).toList(),
      '_value': binaries.map((binary) => binary.element?.toJson()).toList(),
    };
  }

  /// Provides a string representation of the instance
  @override
  String toString() => value ?? '';

  /// Validates that the input is a valid Base64 string
  static String _validateBase64(String input) {
    if (input.length % 4 == 0 && _isBase64(input)) {
      return input;
    } else {
      // Attempt to remove whitespace and validate again
      final formattedInput = input.replaceAll(RegExp(r'\s'), '');
      if (formattedInput.length % 4 == 0 && _isBase64(formattedInput)) {
        return formattedInput;
      }
      throw const FormatException('Invalid Base64 String');
    }
  }

  /// Checks if a string is valid Base64
  static bool _isBase64(String input) {
    try {
      base64.decode(input);
      return true;
    } catch (e) {
      return false;
    }
  }

  Base64BinaryFileType _detectFileType(Uint8List data) {
    try {
      if (data.length >= 4) {
        if (data[0] == 0xFF && data[1] == 0xD8 && data[2] == 0xFF) {
          return Base64BinaryFileType.jpeg;
        } else if (data[0] == 0x89 &&
            data[1] == 0x50 &&
            data[2] == 0x4E &&
            data[3] == 0x47) {
          return Base64BinaryFileType.png;
        } else if (utf8.decode(data.take(4).toList()).startsWith('%PDF')) {
          return Base64BinaryFileType.pdf;
        } else if (data[0] == 0x50 && data[1] == 0x4B) {
          return Base64BinaryFileType.zip;
        } else if (data[0] == 0x47 && data[1] == 0x49 && data[2] == 0x46) {
          return Base64BinaryFileType.gif;
        } else if (data[0] == 0x42 && data[1] == 0x4D) {
          return Base64BinaryFileType.bmp;
        }
      }
    } catch (_) {
      // Catch any error and do nothing
    }
    return Base64BinaryFileType.unknown;
  }

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBase64Binary &&
          other.value == value &&
          other.element == element) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Creates a deep copy of the instance
  @override
  FhirBase64Binary clone() =>
      FhirBase64Binary(value, element?.clone() as Element?);

  /// Creates a modified copy of the instance with updated properties
  @override
  FhirBase64Binary copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    return FhirBase64Binary(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}

/// Enum for the detected file type
enum Base64BinaryFileType {
  /// JPEG Image
  jpeg,

  /// PNG Image
  png,

  /// PDF Document
  pdf,

  /// ZIP Archive
  zip,

  /// GIF Image
  gif,

  /// BMP Image
  bmp,

  /// Unknown File Type
  unknown,
}
