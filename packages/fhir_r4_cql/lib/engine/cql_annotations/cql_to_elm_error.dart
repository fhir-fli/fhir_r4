import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents the CqlToElmError type
class CqlToElmError extends Locator {
  /// errorSeverity attribute
  ErrorSeverity? errorSeverity;

  /// errorType attribute
  ErrorType errorType;

  /// message attribute
  String message;

  /// targetIncludeLibraryId attribute
  String? targetIncludeLibraryId;

  ///The namespace uri of the included library
  String? targetIncludeLibrarySystem;

  /// targetIncludeLibraryVersionId attribute
  String? targetIncludeLibraryVersionId;

  CqlToElmError({
    super.librarySystem,
    super.libraryId,
    super.libraryVersion,
    required this.message,
    required this.errorType,
    this.errorSeverity,
    this.targetIncludeLibrarySystem,
    this.targetIncludeLibraryId,
    this.targetIncludeLibraryVersionId,
    super.startLine,
    super.startChar,
    super.endLine,
    super.endChar,
  });

  factory CqlToElmError.fromJson(Map<String, dynamic> json) {
    return CqlToElmError(
      librarySystem: json['librarySystem'],
      libraryId: json['libraryId'],
      libraryVersion: json['libraryVersion'],
      startLine: json['startLine'],
      startChar: json['startChar'],
      endLine: json['endLine'],
      endChar: json['endChar'],
      message: json['message'],
      errorType: ErrorTypeExtension.fromJson(json['errorType']),
      errorSeverity: json['errorSeverity'] != null
          ? ErrorSeverityExtension.fromJson(json['errorSeverity'])
          : null,
      targetIncludeLibrarySystem: json['targetIncludeLibrarySystem'],
      targetIncludeLibraryId: json['targetIncludeLibraryId'],
      targetIncludeLibraryVersionId: json['targetIncludeLibraryVersionId'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      if (librarySystem != null) 'librarySystem': librarySystem,
      if (libraryId != null) 'libraryId': libraryId,
      if (libraryVersion != null) 'libraryVersion': libraryVersion,
      if (startLine != null) 'startLine': startLine,
      if (startChar != null) 'startChar': startChar,
      if (endLine != null) 'endLine': endLine,
      if (endChar != null) 'endChar': endChar,
      'message': message,
      'errorType': errorType.toJson(),
      if (errorSeverity != null) 'errorSeverity': errorSeverity!.toJson(),
      if (targetIncludeLibraryId != null)
        'targetIncludeLibraryId': targetIncludeLibraryId,
      if (targetIncludeLibrarySystem != null)
        'targetIncludeLibrarySystem': targetIncludeLibrarySystem,
      if (targetIncludeLibraryVersionId != null)
        'targetIncludeLibraryVersionId': targetIncludeLibraryVersionId,
      'type': type,
    };
    return data;
  }

  String get type => 'CqlToElmError';
}
