/// Type if a sequence -- DNA, RNA, or amino acid sequence.
enum SequenceType {
  /// Display: AA Sequence
  /// Definition: Amino acid sequence.
  aa,

  /// Display: DNA Sequence
  /// Definition: DNA Sequence.
  dna,

  /// Display: RNA Sequence
  /// Definition: RNA Sequence.
  rna,
  ;

  @override
  String toString() {
    switch (this) {
      case aa:
        return 'aa';
      case dna:
        return 'dna';
      case rna:
        return 'rna';
    }
  }

  String toJson() => toString();
  static SequenceType fromString(String str) {
    switch (str) {
      case 'aa':
        return SequenceType.aa;
      case 'dna':
        return SequenceType.dna;
      case 'rna':
        return SequenceType.rna;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SequenceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
