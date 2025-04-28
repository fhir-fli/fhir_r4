import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class ErrorAnnotation extends Annotation {
  final int? endChar;
  final int? endLine;
  final String? errorSeverity;
  final String? errorType;
  final String? libraryId;
  final String? librarySystem;
  final String? libraryVersion;
  final String? message;
  final int? startChar;
  final int? startLine;

  ErrorAnnotation({
    this.librarySystem,
    this.libraryId,
    this.libraryVersion,
    this.startLine,
    this.startChar,
    this.endLine,
    this.endChar,
    this.message,
    this.errorType,
    this.errorSeverity,
  });

  factory ErrorAnnotation.fromJson(Map<String, dynamic> json) =>
      ErrorAnnotation(
        librarySystem: json['librarySystem'] as String?,
        libraryId: json['libraryId'] as String?,
        libraryVersion: json['libraryVersion'] as String?,
        startLine: json['startLine'] as int?,
        startChar: json['startChar'] as int?,
        endLine: json['endLine'] as int?,
        endChar: json['endChar'] as int?,
        message: json['message'] as String?,
        errorType: json['errorType'] as String?,
        errorSeverity: json['errorSeverity'] as String?,
      );

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('librarySystem', librarySystem);
    writeNotNull('libraryId', libraryId);
    writeNotNull('libraryVersion', libraryVersion);
    writeNotNull('startLine', startLine);
    writeNotNull('startChar', startChar);
    writeNotNull('endLine', endLine);
    writeNotNull('endChar', endChar);
    writeNotNull('message', message);
    writeNotNull('errorType', errorType);
    writeNotNull('errorSeverity', errorSeverity);
    writeNotNull('type', type);
    return val;
  }

  ErrorAnnotation copyWith({
    String? librarySystem,
    String? libraryId,
    String? libraryVersion,
    int? startLine,
    int? startChar,
    int? endLine,
    int? endChar,
    String? message,
    String? errorType,
    String? errorSeverity,
    String? type,
  }) {
    return ErrorAnnotation(
      librarySystem: librarySystem ?? this.librarySystem,
      libraryId: libraryId ?? this.libraryId,
      libraryVersion: libraryVersion ?? this.libraryVersion,
      startLine: startLine ?? this.startLine,
      startChar: startChar ?? this.startChar,
      endLine: endLine ?? this.endLine,
      endChar: endChar ?? this.endChar,
      message: message ?? this.message,
      errorType: errorType ?? this.errorType,
      errorSeverity: errorSeverity ?? this.errorSeverity,
    );
  }

  @override
  String get type => 'CqlToElmError';
}
