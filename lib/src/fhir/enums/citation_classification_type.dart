import 'package:json_annotation/json_annotation.dart';

/// Citation classification type
enum CitationClassificationType {
  /// Display: Citation Source
  /// Definition: Citation repository where this citation was created or copied from
  @JsonValue('citation-source')
  citation_source,

  /// Display: MEDLINE Citation Owner
  /// Definition: The party responsible for creating and validating the MEDLINE citation
  @JsonValue('medline-owner')
  medline_owner,

  /// Display: FEvIR Platform Use
  /// Definition: Used for Citation sharing on the Fast Evidence Interoperability Resources (FEvIR) Platform
  @JsonValue('fevir-platform-use')
  fevir_platform_use,
  ;

  @override
  String toString() {
    switch (this) {
      case citation_source:
        return 'citation-source';
      case medline_owner:
        return 'medline-owner';
      case fevir_platform_use:
        return 'fevir-platform-use';
    }
  }

  String toJson() => toString();
  CitationClassificationType fromString(String str) {
    switch (str) {
      case 'citation-source':
        return CitationClassificationType.citation_source;
      case 'medline-owner':
        return CitationClassificationType.medline_owner;
      case 'fevir-platform-use':
        return CitationClassificationType.fevir_platform_use;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  CitationClassificationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
