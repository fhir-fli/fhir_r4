// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is the code representing the clinical specialty of the clinician or provider who interacted with, treated, or provided a service to/for the patient. The value set used for clinical specialty has been limited by HITSP to the value set reproduced from HITSP C80 Table 2-149 Clinical Specialty Value Set Definition.
class PracticeSettingCodeValueSet extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PracticeSettingCodeValueSet._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [PracticeSettingCodeValueSet] from JSON.
  factory PracticeSettingCodeValueSet.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PracticeSettingCodeValueSet.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PracticeSettingCodeValueSet cannot be constructed from JSON.',
      );
    }
    return PracticeSettingCodeValueSet._(value: value, element: element);
  }

  /// value408467006
  static final PracticeSettingCodeValueSet value408467006 =
      PracticeSettingCodeValueSet._(
    value: '408467006',
  );

  /// value394577000
  static final PracticeSettingCodeValueSet value394577000 =
      PracticeSettingCodeValueSet._(
    value: '394577000',
  );

  /// value394578005
  static final PracticeSettingCodeValueSet value394578005 =
      PracticeSettingCodeValueSet._(
    value: '394578005',
  );

  /// value421661004
  static final PracticeSettingCodeValueSet value421661004 =
      PracticeSettingCodeValueSet._(
    value: '421661004',
  );

  /// value408462000
  static final PracticeSettingCodeValueSet value408462000 =
      PracticeSettingCodeValueSet._(
    value: '408462000',
  );

  /// value394579002
  static final PracticeSettingCodeValueSet value394579002 =
      PracticeSettingCodeValueSet._(
    value: '394579002',
  );

  /// value394804000
  static final PracticeSettingCodeValueSet value394804000 =
      PracticeSettingCodeValueSet._(
    value: '394804000',
  );

  /// value394580004
  static final PracticeSettingCodeValueSet value394580004 =
      PracticeSettingCodeValueSet._(
    value: '394580004',
  );

  /// value394803006
  static final PracticeSettingCodeValueSet value394803006 =
      PracticeSettingCodeValueSet._(
    value: '394803006',
  );

  /// value408480009
  static final PracticeSettingCodeValueSet value408480009 =
      PracticeSettingCodeValueSet._(
    value: '408480009',
  );

  /// value408454008
  static final PracticeSettingCodeValueSet value408454008 =
      PracticeSettingCodeValueSet._(
    value: '408454008',
  );

  /// value394809005
  static final PracticeSettingCodeValueSet value394809005 =
      PracticeSettingCodeValueSet._(
    value: '394809005',
  );

  /// value394592004
  static final PracticeSettingCodeValueSet value394592004 =
      PracticeSettingCodeValueSet._(
    value: '394592004',
  );

  /// value394600006
  static final PracticeSettingCodeValueSet value394600006 =
      PracticeSettingCodeValueSet._(
    value: '394600006',
  );

  /// value394601005
  static final PracticeSettingCodeValueSet value394601005 =
      PracticeSettingCodeValueSet._(
    value: '394601005',
  );

  /// value394581000
  static final PracticeSettingCodeValueSet value394581000 =
      PracticeSettingCodeValueSet._(
    value: '394581000',
  );

  /// value408478003
  static final PracticeSettingCodeValueSet value408478003 =
      PracticeSettingCodeValueSet._(
    value: '408478003',
  );

  /// value394812008
  static final PracticeSettingCodeValueSet value394812008 =
      PracticeSettingCodeValueSet._(
    value: '394812008',
  );

  /// value408444009
  static final PracticeSettingCodeValueSet value408444009 =
      PracticeSettingCodeValueSet._(
    value: '408444009',
  );

  /// value394582007
  static final PracticeSettingCodeValueSet value394582007 =
      PracticeSettingCodeValueSet._(
    value: '394582007',
  );

  /// value408475000
  static final PracticeSettingCodeValueSet value408475000 =
      PracticeSettingCodeValueSet._(
    value: '408475000',
  );

  /// value410005002
  static final PracticeSettingCodeValueSet value410005002 =
      PracticeSettingCodeValueSet._(
    value: '410005002',
  );

  /// value394583002
  static final PracticeSettingCodeValueSet value394583002 =
      PracticeSettingCodeValueSet._(
    value: '394583002',
  );

  /// value419772000
  static final PracticeSettingCodeValueSet value419772000 =
      PracticeSettingCodeValueSet._(
    value: '419772000',
  );

  /// value394584008
  static final PracticeSettingCodeValueSet value394584008 =
      PracticeSettingCodeValueSet._(
    value: '394584008',
  );

  /// value408443003
  static final PracticeSettingCodeValueSet value408443003 =
      PracticeSettingCodeValueSet._(
    value: '408443003',
  );

  /// value394802001
  static final PracticeSettingCodeValueSet value394802001 =
      PracticeSettingCodeValueSet._(
    value: '394802001',
  );

  /// value394915009
  static final PracticeSettingCodeValueSet value394915009 =
      PracticeSettingCodeValueSet._(
    value: '394915009',
  );

  /// value394814009
  static final PracticeSettingCodeValueSet value394814009 =
      PracticeSettingCodeValueSet._(
    value: '394814009',
  );

  /// value394808002
  static final PracticeSettingCodeValueSet value394808002 =
      PracticeSettingCodeValueSet._(
    value: '394808002',
  );

  /// value394811001
  static final PracticeSettingCodeValueSet value394811001 =
      PracticeSettingCodeValueSet._(
    value: '394811001',
  );

  /// value408446006
  static final PracticeSettingCodeValueSet value408446006 =
      PracticeSettingCodeValueSet._(
    value: '408446006',
  );

  /// value394586005
  static final PracticeSettingCodeValueSet value394586005 =
      PracticeSettingCodeValueSet._(
    value: '394586005',
  );

  /// value394916005
  static final PracticeSettingCodeValueSet value394916005 =
      PracticeSettingCodeValueSet._(
    value: '394916005',
  );

  /// value408472002
  static final PracticeSettingCodeValueSet value408472002 =
      PracticeSettingCodeValueSet._(
    value: '408472002',
  );

  /// value394597005
  static final PracticeSettingCodeValueSet value394597005 =
      PracticeSettingCodeValueSet._(
    value: '394597005',
  );

  /// value394598000
  static final PracticeSettingCodeValueSet value394598000 =
      PracticeSettingCodeValueSet._(
    value: '394598000',
  );

  /// value394807007
  static final PracticeSettingCodeValueSet value394807007 =
      PracticeSettingCodeValueSet._(
    value: '394807007',
  );

  /// value419192003
  static final PracticeSettingCodeValueSet value419192003 =
      PracticeSettingCodeValueSet._(
    value: '419192003',
  );

  /// value408468001
  static final PracticeSettingCodeValueSet value408468001 =
      PracticeSettingCodeValueSet._(
    value: '408468001',
  );

  /// value394593009
  static final PracticeSettingCodeValueSet value394593009 =
      PracticeSettingCodeValueSet._(
    value: '394593009',
  );

  /// value394813003
  static final PracticeSettingCodeValueSet value394813003 =
      PracticeSettingCodeValueSet._(
    value: '394813003',
  );

  /// value410001006
  static final PracticeSettingCodeValueSet value410001006 =
      PracticeSettingCodeValueSet._(
    value: '410001006',
  );

  /// value394589003
  static final PracticeSettingCodeValueSet value394589003 =
      PracticeSettingCodeValueSet._(
    value: '394589003',
  );

  /// value394591006
  static final PracticeSettingCodeValueSet value394591006 =
      PracticeSettingCodeValueSet._(
    value: '394591006',
  );

  /// value394599008
  static final PracticeSettingCodeValueSet value394599008 =
      PracticeSettingCodeValueSet._(
    value: '394599008',
  );

  /// value394649004
  static final PracticeSettingCodeValueSet value394649004 =
      PracticeSettingCodeValueSet._(
    value: '394649004',
  );

  /// value408470005
  static final PracticeSettingCodeValueSet value408470005 =
      PracticeSettingCodeValueSet._(
    value: '408470005',
  );

  /// value394585009
  static final PracticeSettingCodeValueSet value394585009 =
      PracticeSettingCodeValueSet._(
    value: '394585009',
  );

  /// value394821009
  static final PracticeSettingCodeValueSet value394821009 =
      PracticeSettingCodeValueSet._(
    value: '394821009',
  );

  /// value422191005
  static final PracticeSettingCodeValueSet value422191005 =
      PracticeSettingCodeValueSet._(
    value: '422191005',
  );

  /// value394594003
  static final PracticeSettingCodeValueSet value394594003 =
      PracticeSettingCodeValueSet._(
    value: '394594003',
  );

  /// value416304004
  static final PracticeSettingCodeValueSet value416304004 =
      PracticeSettingCodeValueSet._(
    value: '416304004',
  );

  /// value418960008
  static final PracticeSettingCodeValueSet value418960008 =
      PracticeSettingCodeValueSet._(
    value: '418960008',
  );

  /// value394882004
  static final PracticeSettingCodeValueSet value394882004 =
      PracticeSettingCodeValueSet._(
    value: '394882004',
  );

  /// value394806003
  static final PracticeSettingCodeValueSet value394806003 =
      PracticeSettingCodeValueSet._(
    value: '394806003',
  );

  /// value394588006
  static final PracticeSettingCodeValueSet value394588006 =
      PracticeSettingCodeValueSet._(
    value: '394588006',
  );

  /// value408459003
  static final PracticeSettingCodeValueSet value408459003 =
      PracticeSettingCodeValueSet._(
    value: '408459003',
  );

  /// value394607009
  static final PracticeSettingCodeValueSet value394607009 =
      PracticeSettingCodeValueSet._(
    value: '394607009',
  );

  /// value419610006
  static final PracticeSettingCodeValueSet value419610006 =
      PracticeSettingCodeValueSet._(
    value: '419610006',
  );

  /// value418058008
  static final PracticeSettingCodeValueSet value418058008 =
      PracticeSettingCodeValueSet._(
    value: '418058008',
  );

  /// value420208008
  static final PracticeSettingCodeValueSet value420208008 =
      PracticeSettingCodeValueSet._(
    value: '420208008',
  );

  /// value418652005
  static final PracticeSettingCodeValueSet value418652005 =
      PracticeSettingCodeValueSet._(
    value: '418652005',
  );

  /// value418535003
  static final PracticeSettingCodeValueSet value418535003 =
      PracticeSettingCodeValueSet._(
    value: '418535003',
  );

  /// value418862001
  static final PracticeSettingCodeValueSet value418862001 =
      PracticeSettingCodeValueSet._(
    value: '418862001',
  );

  /// value419365004
  static final PracticeSettingCodeValueSet value419365004 =
      PracticeSettingCodeValueSet._(
    value: '419365004',
  );

  /// value418002000
  static final PracticeSettingCodeValueSet value418002000 =
      PracticeSettingCodeValueSet._(
    value: '418002000',
  );

  /// value419983000
  static final PracticeSettingCodeValueSet value419983000 =
      PracticeSettingCodeValueSet._(
    value: '419983000',
  );

  /// value419170002
  static final PracticeSettingCodeValueSet value419170002 =
      PracticeSettingCodeValueSet._(
    value: '419170002',
  );

  /// value419472004
  static final PracticeSettingCodeValueSet value419472004 =
      PracticeSettingCodeValueSet._(
    value: '419472004',
  );

  /// value394539006
  static final PracticeSettingCodeValueSet value394539006 =
      PracticeSettingCodeValueSet._(
    value: '394539006',
  );

  /// value420112009
  static final PracticeSettingCodeValueSet value420112009 =
      PracticeSettingCodeValueSet._(
    value: '420112009',
  );

  /// value409968004
  static final PracticeSettingCodeValueSet value409968004 =
      PracticeSettingCodeValueSet._(
    value: '409968004',
  );

  /// value394587001
  static final PracticeSettingCodeValueSet value394587001 =
      PracticeSettingCodeValueSet._(
    value: '394587001',
  );

  /// value394913002
  static final PracticeSettingCodeValueSet value394913002 =
      PracticeSettingCodeValueSet._(
    value: '394913002',
  );

  /// value408440000
  static final PracticeSettingCodeValueSet value408440000 =
      PracticeSettingCodeValueSet._(
    value: '408440000',
  );

  /// value418112009
  static final PracticeSettingCodeValueSet value418112009 =
      PracticeSettingCodeValueSet._(
    value: '418112009',
  );

  /// value419815003
  static final PracticeSettingCodeValueSet value419815003 =
      PracticeSettingCodeValueSet._(
    value: '419815003',
  );

  /// value394914008
  static final PracticeSettingCodeValueSet value394914008 =
      PracticeSettingCodeValueSet._(
    value: '394914008',
  );

  /// value408455009
  static final PracticeSettingCodeValueSet value408455009 =
      PracticeSettingCodeValueSet._(
    value: '408455009',
  );

  /// value394602003
  static final PracticeSettingCodeValueSet value394602003 =
      PracticeSettingCodeValueSet._(
    value: '394602003',
  );

  /// value408447002
  static final PracticeSettingCodeValueSet value408447002 =
      PracticeSettingCodeValueSet._(
    value: '408447002',
  );

  /// value394810000
  static final PracticeSettingCodeValueSet value394810000 =
      PracticeSettingCodeValueSet._(
    value: '394810000',
  );

  /// value408450004
  static final PracticeSettingCodeValueSet value408450004 =
      PracticeSettingCodeValueSet._(
    value: '408450004',
  );

  /// value408476004
  static final PracticeSettingCodeValueSet value408476004 =
      PracticeSettingCodeValueSet._(
    value: '408476004',
  );

  /// value408469009
  static final PracticeSettingCodeValueSet value408469009 =
      PracticeSettingCodeValueSet._(
    value: '408469009',
  );

  /// value408466002
  static final PracticeSettingCodeValueSet value408466002 =
      PracticeSettingCodeValueSet._(
    value: '408466002',
  );

  /// value408471009
  static final PracticeSettingCodeValueSet value408471009 =
      PracticeSettingCodeValueSet._(
    value: '408471009',
  );

  /// value408464004
  static final PracticeSettingCodeValueSet value408464004 =
      PracticeSettingCodeValueSet._(
    value: '408464004',
  );

  /// value408441001
  static final PracticeSettingCodeValueSet value408441001 =
      PracticeSettingCodeValueSet._(
    value: '408441001',
  );

  /// value408465003
  static final PracticeSettingCodeValueSet value408465003 =
      PracticeSettingCodeValueSet._(
    value: '408465003',
  );

  /// value394605001
  static final PracticeSettingCodeValueSet value394605001 =
      PracticeSettingCodeValueSet._(
    value: '394605001',
  );

  /// value394608004
  static final PracticeSettingCodeValueSet value394608004 =
      PracticeSettingCodeValueSet._(
    value: '394608004',
  );

  /// value408461007
  static final PracticeSettingCodeValueSet value408461007 =
      PracticeSettingCodeValueSet._(
    value: '408461007',
  );

  /// value408460008
  static final PracticeSettingCodeValueSet value408460008 =
      PracticeSettingCodeValueSet._(
    value: '408460008',
  );

  /// value394606000
  static final PracticeSettingCodeValueSet value394606000 =
      PracticeSettingCodeValueSet._(
    value: '394606000',
  );

  /// value408449004
  static final PracticeSettingCodeValueSet value408449004 =
      PracticeSettingCodeValueSet._(
    value: '408449004',
  );

  /// value418018006
  static final PracticeSettingCodeValueSet value418018006 =
      PracticeSettingCodeValueSet._(
    value: '418018006',
  );

  /// value394604002
  static final PracticeSettingCodeValueSet value394604002 =
      PracticeSettingCodeValueSet._(
    value: '394604002',
  );

  /// value394609007
  static final PracticeSettingCodeValueSet value394609007 =
      PracticeSettingCodeValueSet._(
    value: '394609007',
  );

  /// value408474001
  static final PracticeSettingCodeValueSet value408474001 =
      PracticeSettingCodeValueSet._(
    value: '408474001',
  );

  /// value394610002
  static final PracticeSettingCodeValueSet value394610002 =
      PracticeSettingCodeValueSet._(
    value: '394610002',
  );

  /// value394611003
  static final PracticeSettingCodeValueSet value394611003 =
      PracticeSettingCodeValueSet._(
    value: '394611003',
  );

  /// value408477008
  static final PracticeSettingCodeValueSet value408477008 =
      PracticeSettingCodeValueSet._(
    value: '408477008',
  );

  /// value394801008
  static final PracticeSettingCodeValueSet value394801008 =
      PracticeSettingCodeValueSet._(
    value: '394801008',
  );

  /// value408463005
  static final PracticeSettingCodeValueSet value408463005 =
      PracticeSettingCodeValueSet._(
    value: '408463005',
  );

  /// value419321007
  static final PracticeSettingCodeValueSet value419321007 =
      PracticeSettingCodeValueSet._(
    value: '419321007',
  );

  /// value394576009
  static final PracticeSettingCodeValueSet value394576009 =
      PracticeSettingCodeValueSet._(
    value: '394576009',
  );

  /// value394590007
  static final PracticeSettingCodeValueSet value394590007 =
      PracticeSettingCodeValueSet._(
    value: '394590007',
  );

  /// value409967009
  static final PracticeSettingCodeValueSet value409967009 =
      PracticeSettingCodeValueSet._(
    value: '409967009',
  );

  /// value408448007
  static final PracticeSettingCodeValueSet value408448007 =
      PracticeSettingCodeValueSet._(
    value: '408448007',
  );

  /// value419043006
  static final PracticeSettingCodeValueSet value419043006 =
      PracticeSettingCodeValueSet._(
    value: '419043006',
  );

  /// value394612005
  static final PracticeSettingCodeValueSet value394612005 =
      PracticeSettingCodeValueSet._(
    value: '394612005',
  );

  /// value394733009
  static final PracticeSettingCodeValueSet value394733009 =
      PracticeSettingCodeValueSet._(
    value: '394733009',
  );

  /// value394732004
  static final PracticeSettingCodeValueSet value394732004 =
      PracticeSettingCodeValueSet._(
    value: '394732004',
  );

  /// For instances where an Element is present but not value

  static final PracticeSettingCodeValueSet elementOnly =
      PracticeSettingCodeValueSet._(value: '');

  /// List of all enum-like values
  static final List<PracticeSettingCodeValueSet> values = [
    value408467006,
    value394577000,
    value394578005,
    value421661004,
    value408462000,
    value394579002,
    value394804000,
    value394580004,
    value394803006,
    value408480009,
    value408454008,
    value394809005,
    value394592004,
    value394600006,
    value394601005,
    value394581000,
    value408478003,
    value394812008,
    value408444009,
    value394582007,
    value408475000,
    value410005002,
    value394583002,
    value419772000,
    value394584008,
    value408443003,
    value394802001,
    value394915009,
    value394814009,
    value394808002,
    value394811001,
    value408446006,
    value394586005,
    value394916005,
    value408472002,
    value394597005,
    value394598000,
    value394807007,
    value419192003,
    value408468001,
    value394593009,
    value394813003,
    value410001006,
    value394589003,
    value394591006,
    value394599008,
    value394649004,
    value408470005,
    value394585009,
    value394821009,
    value422191005,
    value394594003,
    value416304004,
    value418960008,
    value394882004,
    value394806003,
    value394588006,
    value408459003,
    value394607009,
    value419610006,
    value418058008,
    value420208008,
    value418652005,
    value418535003,
    value418862001,
    value419365004,
    value418002000,
    value419983000,
    value419170002,
    value419472004,
    value394539006,
    value420112009,
    value409968004,
    value394587001,
    value394913002,
    value408440000,
    value418112009,
    value419815003,
    value394914008,
    value408455009,
    value394602003,
    value408447002,
    value394810000,
    value408450004,
    value408476004,
    value408469009,
    value408466002,
    value408471009,
    value408464004,
    value408441001,
    value408465003,
    value394605001,
    value394608004,
    value408461007,
    value408460008,
    value394606000,
    value408449004,
    value418018006,
    value394604002,
    value394609007,
    value408474001,
    value394610002,
    value394611003,
    value408477008,
    value394801008,
    value408463005,
    value419321007,
    value394576009,
    value394590007,
    value409967009,
    value408448007,
    value419043006,
    value394612005,
    value394733009,
    value394732004,
  ];

  /// Clones the current instance
  @override
  PracticeSettingCodeValueSet clone() => PracticeSettingCodeValueSet._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PracticeSettingCodeValueSet withElement(Element? newElement) {
    return PracticeSettingCodeValueSet._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  PracticeSettingCodeValueSet copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PracticeSettingCodeValueSet._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
