/// Types of combining results from a body of evidence (eg. summary data meta-analysis).
enum SynthesisType {
  /// Display: summary data meta-analysis
  /// Definition: A meta-analysis of the summary data of estimates from individual studies or data sets.
  std_MA,

  /// Display: individual patient data meta-analysis
  /// Definition: A meta-analysis of the individual participant data from individual studies or data sets.
  IPD_MA,

  /// Display: indirect network meta-analysis
  /// Definition: An indirect meta-analysis derived from 2 or more direct comparisons in a network meta-analysis.
  indirect_NMA,

  /// Display: combined direct plus indirect network meta-analysis
  /// Definition: An composite meta-analysis derived from direct comparisons and indirect comparisons in a network meta-analysis.
  combined_NMA,

  /// Display: range of results
  /// Definition: A range of results across a body of evidence.
  range,

  /// Display: classifcation of results
  /// Definition: An approach describing a body of evidence by categorically classifying individual studies (eg 3 studies showed beneft and 2 studied found no effect).
  classification,

  /// Display: not applicable
  /// Definition: Not applicable because the evidence is not from a synthesis but from a single study. Used fo explicitly state that it's not a synthesis.
  NotApplicable,
  ;

  @override
  String toString() {
    switch (this) {
      case std_MA:
        return 'std-MA';
      case IPD_MA:
        return 'IPD-MA';
      case indirect_NMA:
        return 'indirect-NMA';
      case combined_NMA:
        return 'combined-NMA';
      case range:
        return 'range';
      case classification:
        return 'classification';
      case NotApplicable:
        return 'NotApplicable';
    }
  }

  /// Returns a [String] from a [SynthesisType] enum.
  String toJson() => toString();

  /// Returns a [SynthesisType] from a [String] enum.
  static SynthesisType fromString(String str) {
    switch (str) {
      case 'std-MA':
        return SynthesisType.std_MA;
      case 'IPD-MA':
        return SynthesisType.IPD_MA;
      case 'indirect-NMA':
        return SynthesisType.indirect_NMA;
      case 'combined-NMA':
        return SynthesisType.combined_NMA;
      case 'range':
        return SynthesisType.range;
      case 'classification':
        return SynthesisType.classification;
      case 'NotApplicable':
        return SynthesisType.NotApplicable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SynthesisType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SynthesisType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
