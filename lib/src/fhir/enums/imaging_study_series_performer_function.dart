/// Performer function of an agent in an imaging study series
enum ImagingStudySeriesPerformerFunction {
  /// Display: consultant
  CON,

  /// Display: verifier
  VRF,

  /// Display: performer
  PRF,

  /// Display: secondary performer
  SPRF,

  /// Display: referrer
  REF,
  ;

  @override
  String toString() {
    switch (this) {
      case CON:
        return 'CON';
      case VRF:
        return 'VRF';
      case PRF:
        return 'PRF';
      case SPRF:
        return 'SPRF';
      case REF:
        return 'REF';
    }
  }

  String toJson() => toString();
  static ImagingStudySeriesPerformerFunction fromString(String str) {
    switch (str) {
      case 'CON':
        return ImagingStudySeriesPerformerFunction.CON;
      case 'VRF':
        return ImagingStudySeriesPerformerFunction.VRF;
      case 'PRF':
        return ImagingStudySeriesPerformerFunction.PRF;
      case 'SPRF':
        return ImagingStudySeriesPerformerFunction.SPRF;
      case 'REF':
        return ImagingStudySeriesPerformerFunction.REF;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImagingStudySeriesPerformerFunction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
