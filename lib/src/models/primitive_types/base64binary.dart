import 'dart:convert';
import 'dart:typed_data';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to [FhirBase64Binary]
extension FhirBase64BinaryExtension on String {
  /// Converts a [String] to [FhirBase64Binary]
  FhirBase64Binary get toFhirBase64Binary => FhirBase64Binary(this);
}

/// FHIR primitive type `Base64Binary`
class FhirBase64Binary extends PrimitiveType<String?>
    implements
        ValueXAuditEventDetail,
        ValueXMedicationKnowledgeDrugCharacteristic,
        ValueXNutritionProductProductCharacteristic,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Constructor with validation and original input storage
  FhirBase64Binary(
    this.input, {
    super.element,
    super.id,
    super.extension_,
  }) : super(input != null ? _validateBase64(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create from JSON
  factory FhirBase64Binary.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirBase64Binary(value, element: element);
  }

  /// Factory constructor to create from YAML
  static FhirBase64Binary fromYaml(dynamic yaml) => yaml is String
      ? FhirBase64Binary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirBase64Binary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'FhirBase64Binary cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// The original input value (for serialization purposes)
  final String? input;

  /// Static method to try parsing input into [FhirBase64Binary]
  static FhirBase64Binary? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirBase64Binary(input);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Validates the input as Base64
  static String _validateBase64(String input) {
    if (input.length % 4 == 0 && _isBase64(input)) {
      return input;
    } else {
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
    } catch (_) {
      return false;
    }
  }

  /// Decoded object (computed lazily)
  Uint8List? get object => value != null ? base64.decode(value!) : null;

  /// Detected file type (computed lazily)
  Base64BinaryFileType? get fileType =>
      object != null ? _detectFileType(object!) : null;

  /// Detects the file type from the decoded object
  static Base64BinaryFileType _detectFileType(Uint8List data) {
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
    return Base64BinaryFileType.unknown;
  }

  /// Converts the instance to JSON
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to [FhirBase64Binary] instances
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
      return FhirBase64Binary(value, element: element);
    });
  }

  /// Converts a list of [FhirBase64Binary] to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBase64Binary> binaries) => {
        'value': binaries.map((binary) => binary.input).toList(),
        '_value': binaries.map((binary) => binary.element?.toJson()).toList(),
      };

  /// Returns the FHIR type as a [String]
  @override
  String get fhirType => 'base64Binary';

  /// Provides a string representation of the instance
  @override
  String toString() => value.toString();

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBase64Binary &&
          other.input == input &&
          other.element == element);

  /// Overrides hashCode
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  /// Clones the instance
  @override
  FhirBase64Binary clone() =>
      FhirBase64Binary(input, element: element?.clone() as Element?);

  /// Creates a modified copy of the instance
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
  }) {
    return FhirBase64Binary(
      newValue ?? input,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
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
