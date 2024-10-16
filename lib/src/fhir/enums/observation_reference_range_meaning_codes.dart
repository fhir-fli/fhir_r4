import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular target population.
enum ObservationReferenceRangeMeaningCodes {
  /// Display: Type
  /// Definition: General types of reference range.
  type('type'),

  /// Display: Normal Range
  /// Definition: Values expected for a normal member of the relevant control population being measured. Typically each results producer such as a laboratory has specific normal ranges and they are usually defined as within two standard deviations from the mean and account for 95.45% of this population.
  normal('normal'),

  /// Display: Recommended Range
  /// Definition: The range that is recommended by a relevant professional body.
  recommended('recommended'),

  /// Display: Treatment Range
  /// Definition: The range at which treatment would/should be considered.
  treatment('treatment'),

  /// Display: Therapeutic Desired Level
  /// Definition: The optimal range for best therapeutic outcomes.
  therapeutic('therapeutic'),

  /// Display: Pre Therapeutic Desired Level
  /// Definition: The optimal range for best therapeutic outcomes for a specimen taken immediately before administration.
  pre('pre'),

  /// Display: Post Therapeutic Desired Level
  /// Definition: The optimal range for best therapeutic outcomes for a specimen taken immediately after administration.
  post('post'),

  /// Display: Endocrine
  /// Definition: Endocrine related states that change the expected value.
  endocrine('endocrine'),

  /// Display: Pre-Puberty
  /// Definition: An expected range in an individual prior to puberty.
  pre_puberty('pre-puberty'),

  /// Display: Follicular Stage
  /// Definition: An expected range in an individual during the follicular stage of the cycle.
  follicular('follicular'),

  /// Display: MidCycle
  /// Definition: An expected range in an individual during the midcycle stage of the cycle.
  midcycle('midcycle'),

  /// Display: Luteal
  /// Definition: An expected range in an individual during the luteal stage of the cycle.
  luteal('luteal'),

  /// Display: Post-Menopause
  /// Definition: An expected range in an individual post-menopause.
  postmenopausal('postmenopausal'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ObservationReferenceRangeMeaningCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ObservationReferenceRangeMeaningCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeMeaningCodes.elementOnly
          .withElement(element);
    }
    return ObservationReferenceRangeMeaningCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ObservationReferenceRangeMeaningCodes withElement(Element? newElement) {
    return ObservationReferenceRangeMeaningCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
