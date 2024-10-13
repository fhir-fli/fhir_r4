/// Used to express the reason and specific aspect for the variant abstract, such as language and specific language.
enum CitedArtifactAbstractType {
  /// Display: Primary human use
  /// Definition: Human-friendly main or official abstract
  primary_human_use,

  /// Display: Primary machine use
  /// Definition: Machine-friendly main or official abstract
  primary_machine_use,

  /// Display: Truncated
  /// Definition: Truncated abstract
  truncated,

  /// Display: Short abstract
  /// Definition: Brief abstract, for use when abstracts are provided in different sizes or lengths
  short_abstract,

  /// Display: Long abstract
  /// Definition: Long version of the abstract, for use when abstracts are provided in different sizes or lengths
  long_abstract,

  /// Display: Plain language
  /// Definition: Additional form of abstract written for the general public
  plain_language,

  /// Display: Different publisher for abstract
  /// Definition: Abstract produced by a different publisher than the cited artifact
  different_publisher,

  /// Display: Different language
  /// Definition: Additional form of abstract in a different language
  language,

  /// Display: Different language derived from autotranslation
  /// Definition: Machine translated form of abstract in a different language, language element codes the language into which it was translated by machine
  autotranslated,

  /// Display: Different text in additional Medline entry
  /// Definition: Alternative form of abstract in two or more Medline entries
  duplicate_pmid,

  /// Display: Different text in an earlier version
  /// Definition: Alternative form of abstract in an earlier version such as epub ahead of print
  earlier_abstract,
  ;

  @override
  String toString() {
    switch (this) {
      case primary_human_use:
        return 'primary-human-use';
      case primary_machine_use:
        return 'primary-machine-use';
      case truncated:
        return 'truncated';
      case short_abstract:
        return 'short-abstract';
      case long_abstract:
        return 'long-abstract';
      case plain_language:
        return 'plain-language';
      case different_publisher:
        return 'different-publisher';
      case language:
        return 'language';
      case autotranslated:
        return 'autotranslated';
      case duplicate_pmid:
        return 'duplicate-pmid';
      case earlier_abstract:
        return 'earlier-abstract';
    }
  }

  /// Returns a [String] from a [CitedArtifactAbstractType] enum.
  String toJson() => toString();

  /// Returns a [CitedArtifactAbstractType] from a [String] enum.
  static CitedArtifactAbstractType fromString(String str) {
    switch (str) {
      case 'primary-human-use':
        return CitedArtifactAbstractType.primary_human_use;
      case 'primary-machine-use':
        return CitedArtifactAbstractType.primary_machine_use;
      case 'truncated':
        return CitedArtifactAbstractType.truncated;
      case 'short-abstract':
        return CitedArtifactAbstractType.short_abstract;
      case 'long-abstract':
        return CitedArtifactAbstractType.long_abstract;
      case 'plain-language':
        return CitedArtifactAbstractType.plain_language;
      case 'different-publisher':
        return CitedArtifactAbstractType.different_publisher;
      case 'language':
        return CitedArtifactAbstractType.language;
      case 'autotranslated':
        return CitedArtifactAbstractType.autotranslated;
      case 'duplicate-pmid':
        return CitedArtifactAbstractType.duplicate_pmid;
      case 'earlier-abstract':
        return CitedArtifactAbstractType.earlier_abstract;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CitedArtifactAbstractType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CitedArtifactAbstractType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
