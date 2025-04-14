import '../../cql.dart';

class Locator extends CqlToElmBase {
  final int? endChar;
  final int? endLine;
  final String? libraryId;
  final String? librarySystem;
  final String? libraryVersion;
  final int? startChar;
  final int? startLine;

  Locator({
    this.librarySystem,
    this.libraryId,
    this.libraryVersion,
    this.startLine,
    this.startChar,
    this.endLine,
    this.endChar,
  });

  factory Locator.fromJson(Map<String, dynamic> json) => Locator(
        librarySystem: json['librarySystem'],
        libraryId: json['libraryId'],
        libraryVersion: json['libraryVersion'],
        startLine: json['startLine'],
        startChar: json['startChar'],
        endLine: json['endLine'],
        endChar: json['endChar'],
      );

  @override
  String toString() {
    return 'Locator{librarySystem: $librarySystem, libraryId: $libraryId, libraryVersion: $libraryVersion, startLine: $startLine, startChar: $startChar, endLine: $endLine, endChar: $endChar}';
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (librarySystem != null) {
      data['librarySystem'] = librarySystem;
    }
    if (libraryId != null) {
      data['libraryId'] = libraryId;
    }
    if (libraryVersion != null) {
      data['libraryVersion'] = libraryVersion;
    }
    if (startLine != null) {
      data['startLine'] = startLine;
    }
    if (startChar != null) {
      data['startChar'] = startChar;
    }
    if (endLine != null) {
      data['endLine'] = endLine;
    }
    if (endChar != null) {
      data['endChar'] = endChar;
    }
    return data;
  }
}
