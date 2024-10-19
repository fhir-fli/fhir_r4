// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This is the code representing the clinical specialty of the clinician or provider who interacted with, treated, or provided a service to/for the patient. The value set used for clinical specialty has been limited by HITSP to the value set reproduced from HITSP C80 Table 2-149 Clinical Specialty Value Set Definition.
@Entity()
class PracticeSettingCodeValueSet extends FhirCode {
  /// Factory constructor to create [PracticeSettingCodeValueSet] from JSON.
  factory PracticeSettingCodeValueSet.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PracticeSettingCodeValueSet.elementOnly(element);
    }
    if (values.contains(value)) {
      return PracticeSettingCodeValueSet._(value, element);
    }
    throw ArgumentError(
      'PracticeSettingCodeValueSet.fromJson: JSON value is not a valid value',
    );
  }

  /// value408467006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408467006([this.element])
      : dbValue = '408467006',
        super('408467006', element);

  /// value394577000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394577000([this.element])
      : dbValue = '394577000',
        super('394577000', element);

  /// value394578005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394578005([this.element])
      : dbValue = '394578005',
        super('394578005', element);

  /// value421661004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value421661004([this.element])
      : dbValue = '421661004',
        super('421661004', element);

  /// value408462000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408462000([this.element])
      : dbValue = '408462000',
        super('408462000', element);

  /// value394579002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394579002([this.element])
      : dbValue = '394579002',
        super('394579002', element);

  /// value394804000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394804000([this.element])
      : dbValue = '394804000',
        super('394804000', element);

  /// value394580004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394580004([this.element])
      : dbValue = '394580004',
        super('394580004', element);

  /// value394803006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394803006([this.element])
      : dbValue = '394803006',
        super('394803006', element);

  /// value408480009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408480009([this.element])
      : dbValue = '408480009',
        super('408480009', element);

  /// value408454008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408454008([this.element])
      : dbValue = '408454008',
        super('408454008', element);

  /// value394809005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394809005([this.element])
      : dbValue = '394809005',
        super('394809005', element);

  /// value394592004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394592004([this.element])
      : dbValue = '394592004',
        super('394592004', element);

  /// value394600006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394600006([this.element])
      : dbValue = '394600006',
        super('394600006', element);

  /// value394601005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394601005([this.element])
      : dbValue = '394601005',
        super('394601005', element);

  /// value394581000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394581000([this.element])
      : dbValue = '394581000',
        super('394581000', element);

  /// value408478003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408478003([this.element])
      : dbValue = '408478003',
        super('408478003', element);

  /// value394812008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394812008([this.element])
      : dbValue = '394812008',
        super('394812008', element);

  /// value408444009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408444009([this.element])
      : dbValue = '408444009',
        super('408444009', element);

  /// value394582007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394582007([this.element])
      : dbValue = '394582007',
        super('394582007', element);

  /// value408475000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408475000([this.element])
      : dbValue = '408475000',
        super('408475000', element);

  /// value410005002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value410005002([this.element])
      : dbValue = '410005002',
        super('410005002', element);

  /// value394583002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394583002([this.element])
      : dbValue = '394583002',
        super('394583002', element);

  /// value419772000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419772000([this.element])
      : dbValue = '419772000',
        super('419772000', element);

  /// value394584008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394584008([this.element])
      : dbValue = '394584008',
        super('394584008', element);

  /// value408443003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408443003([this.element])
      : dbValue = '408443003',
        super('408443003', element);

  /// value394802001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394802001([this.element])
      : dbValue = '394802001',
        super('394802001', element);

  /// value394915009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394915009([this.element])
      : dbValue = '394915009',
        super('394915009', element);

  /// value394814009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394814009([this.element])
      : dbValue = '394814009',
        super('394814009', element);

  /// value394808002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394808002([this.element])
      : dbValue = '394808002',
        super('394808002', element);

  /// value394811001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394811001([this.element])
      : dbValue = '394811001',
        super('394811001', element);

  /// value408446006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408446006([this.element])
      : dbValue = '408446006',
        super('408446006', element);

  /// value394586005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394586005([this.element])
      : dbValue = '394586005',
        super('394586005', element);

  /// value394916005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394916005([this.element])
      : dbValue = '394916005',
        super('394916005', element);

  /// value408472002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408472002([this.element])
      : dbValue = '408472002',
        super('408472002', element);

  /// value394597005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394597005([this.element])
      : dbValue = '394597005',
        super('394597005', element);

  /// value394598000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394598000([this.element])
      : dbValue = '394598000',
        super('394598000', element);

  /// value394807007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394807007([this.element])
      : dbValue = '394807007',
        super('394807007', element);

  /// value419192003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419192003([this.element])
      : dbValue = '419192003',
        super('419192003', element);

  /// value408468001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408468001([this.element])
      : dbValue = '408468001',
        super('408468001', element);

  /// value394593009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394593009([this.element])
      : dbValue = '394593009',
        super('394593009', element);

  /// value394813003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394813003([this.element])
      : dbValue = '394813003',
        super('394813003', element);

  /// value410001006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value410001006([this.element])
      : dbValue = '410001006',
        super('410001006', element);

  /// value394589003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394589003([this.element])
      : dbValue = '394589003',
        super('394589003', element);

  /// value394591006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394591006([this.element])
      : dbValue = '394591006',
        super('394591006', element);

  /// value394599008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394599008([this.element])
      : dbValue = '394599008',
        super('394599008', element);

  /// value394649004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394649004([this.element])
      : dbValue = '394649004',
        super('394649004', element);

  /// value408470005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408470005([this.element])
      : dbValue = '408470005',
        super('408470005', element);

  /// value394585009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394585009([this.element])
      : dbValue = '394585009',
        super('394585009', element);

  /// value394821009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394821009([this.element])
      : dbValue = '394821009',
        super('394821009', element);

  /// value422191005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value422191005([this.element])
      : dbValue = '422191005',
        super('422191005', element);

  /// value394594003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394594003([this.element])
      : dbValue = '394594003',
        super('394594003', element);

  /// value416304004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value416304004([this.element])
      : dbValue = '416304004',
        super('416304004', element);

  /// value418960008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418960008([this.element])
      : dbValue = '418960008',
        super('418960008', element);

  /// value394882004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394882004([this.element])
      : dbValue = '394882004',
        super('394882004', element);

  /// value394806003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394806003([this.element])
      : dbValue = '394806003',
        super('394806003', element);

  /// value394588006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394588006([this.element])
      : dbValue = '394588006',
        super('394588006', element);

  /// value408459003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408459003([this.element])
      : dbValue = '408459003',
        super('408459003', element);

  /// value394607009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394607009([this.element])
      : dbValue = '394607009',
        super('394607009', element);

  /// value419610006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419610006([this.element])
      : dbValue = '419610006',
        super('419610006', element);

  /// value418058008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418058008([this.element])
      : dbValue = '418058008',
        super('418058008', element);

  /// value420208008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value420208008([this.element])
      : dbValue = '420208008',
        super('420208008', element);

  /// value418652005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418652005([this.element])
      : dbValue = '418652005',
        super('418652005', element);

  /// value418535003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418535003([this.element])
      : dbValue = '418535003',
        super('418535003', element);

  /// value418862001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418862001([this.element])
      : dbValue = '418862001',
        super('418862001', element);

  /// value419365004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419365004([this.element])
      : dbValue = '419365004',
        super('419365004', element);

  /// value418002000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418002000([this.element])
      : dbValue = '418002000',
        super('418002000', element);

  /// value419983000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419983000([this.element])
      : dbValue = '419983000',
        super('419983000', element);

  /// value419170002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419170002([this.element])
      : dbValue = '419170002',
        super('419170002', element);

  /// value419472004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419472004([this.element])
      : dbValue = '419472004',
        super('419472004', element);

  /// value394539006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394539006([this.element])
      : dbValue = '394539006',
        super('394539006', element);

  /// value420112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value420112009([this.element])
      : dbValue = '420112009',
        super('420112009', element);

  /// value409968004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value409968004([this.element])
      : dbValue = '409968004',
        super('409968004', element);

  /// value394587001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394587001([this.element])
      : dbValue = '394587001',
        super('394587001', element);

  /// value394913002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394913002([this.element])
      : dbValue = '394913002',
        super('394913002', element);

  /// value408440000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408440000([this.element])
      : dbValue = '408440000',
        super('408440000', element);

  /// value418112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418112009([this.element])
      : dbValue = '418112009',
        super('418112009', element);

  /// value419815003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419815003([this.element])
      : dbValue = '419815003',
        super('419815003', element);

  /// value394914008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394914008([this.element])
      : dbValue = '394914008',
        super('394914008', element);

  /// value408455009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408455009([this.element])
      : dbValue = '408455009',
        super('408455009', element);

  /// value394602003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394602003([this.element])
      : dbValue = '394602003',
        super('394602003', element);

  /// value408447002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408447002([this.element])
      : dbValue = '408447002',
        super('408447002', element);

  /// value394810000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394810000([this.element])
      : dbValue = '394810000',
        super('394810000', element);

  /// value408450004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408450004([this.element])
      : dbValue = '408450004',
        super('408450004', element);

  /// value408476004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408476004([this.element])
      : dbValue = '408476004',
        super('408476004', element);

  /// value408469009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408469009([this.element])
      : dbValue = '408469009',
        super('408469009', element);

  /// value408466002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408466002([this.element])
      : dbValue = '408466002',
        super('408466002', element);

  /// value408471009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408471009([this.element])
      : dbValue = '408471009',
        super('408471009', element);

  /// value408464004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408464004([this.element])
      : dbValue = '408464004',
        super('408464004', element);

  /// value408441001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408441001([this.element])
      : dbValue = '408441001',
        super('408441001', element);

  /// value408465003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408465003([this.element])
      : dbValue = '408465003',
        super('408465003', element);

  /// value394605001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394605001([this.element])
      : dbValue = '394605001',
        super('394605001', element);

  /// value394608004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394608004([this.element])
      : dbValue = '394608004',
        super('394608004', element);

  /// value408461007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408461007([this.element])
      : dbValue = '408461007',
        super('408461007', element);

  /// value408460008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408460008([this.element])
      : dbValue = '408460008',
        super('408460008', element);

  /// value394606000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394606000([this.element])
      : dbValue = '394606000',
        super('394606000', element);

  /// value408449004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408449004([this.element])
      : dbValue = '408449004',
        super('408449004', element);

  /// value418018006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value418018006([this.element])
      : dbValue = '418018006',
        super('418018006', element);

  /// value394604002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394604002([this.element])
      : dbValue = '394604002',
        super('394604002', element);

  /// value394609007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394609007([this.element])
      : dbValue = '394609007',
        super('394609007', element);

  /// value408474001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408474001([this.element])
      : dbValue = '408474001',
        super('408474001', element);

  /// value394610002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394610002([this.element])
      : dbValue = '394610002',
        super('394610002', element);

  /// value394611003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394611003([this.element])
      : dbValue = '394611003',
        super('394611003', element);

  /// value408477008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408477008([this.element])
      : dbValue = '408477008',
        super('408477008', element);

  /// value394801008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394801008([this.element])
      : dbValue = '394801008',
        super('394801008', element);

  /// value408463005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408463005([this.element])
      : dbValue = '408463005',
        super('408463005', element);

  /// value419321007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419321007([this.element])
      : dbValue = '419321007',
        super('419321007', element);

  /// value394576009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394576009([this.element])
      : dbValue = '394576009',
        super('394576009', element);

  /// value394590007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394590007([this.element])
      : dbValue = '394590007',
        super('394590007', element);

  /// value409967009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value409967009([this.element])
      : dbValue = '409967009',
        super('409967009', element);

  /// value408448007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value408448007([this.element])
      : dbValue = '408448007',
        super('408448007', element);

  /// value419043006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value419043006([this.element])
      : dbValue = '419043006',
        super('419043006', element);

  /// value394612005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394612005([this.element])
      : dbValue = '394612005',
        super('394612005', element);

  /// value394733009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394733009([this.element])
      : dbValue = '394733009',
        super('394733009', element);

  /// value394732004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PracticeSettingCodeValueSet.value394732004([this.element])
      : dbValue = '394732004',
        super('394732004', element);

  /// For instances where an Element is present but not value

  PracticeSettingCodeValueSet.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PracticeSettingCodeValueSet._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    '408467006',
    '394577000',
    '394578005',
    '421661004',
    '408462000',
    '394579002',
    '394804000',
    '394580004',
    '394803006',
    '408480009',
    '408454008',
    '394809005',
    '394592004',
    '394600006',
    '394601005',
    '394581000',
    '408478003',
    '394812008',
    '408444009',
    '394582007',
    '408475000',
    '410005002',
    '394583002',
    '419772000',
    '394584008',
    '408443003',
    '394802001',
    '394915009',
    '394814009',
    '394808002',
    '394811001',
    '408446006',
    '394586005',
    '394916005',
    '408472002',
    '394597005',
    '394598000',
    '394807007',
    '419192003',
    '408468001',
    '394593009',
    '394813003',
    '410001006',
    '394589003',
    '394591006',
    '394599008',
    '394649004',
    '408470005',
    '394585009',
    '394821009',
    '422191005',
    '394594003',
    '416304004',
    '418960008',
    '394882004',
    '394806003',
    '394588006',
    '408459003',
    '394607009',
    '419610006',
    '418058008',
    '420208008',
    '418652005',
    '418535003',
    '418862001',
    '419365004',
    '418002000',
    '419983000',
    '419170002',
    '419472004',
    '394539006',
    '420112009',
    '409968004',
    '394587001',
    '394913002',
    '408440000',
    '418112009',
    '419815003',
    '394914008',
    '408455009',
    '394602003',
    '408447002',
    '394810000',
    '408450004',
    '408476004',
    '408469009',
    '408466002',
    '408471009',
    '408464004',
    '408441001',
    '408465003',
    '394605001',
    '394608004',
    '408461007',
    '408460008',
    '394606000',
    '408449004',
    '418018006',
    '394604002',
    '394609007',
    '408474001',
    '394610002',
    '394611003',
    '408477008',
    '394801008',
    '408463005',
    '419321007',
    '394576009',
    '394590007',
    '409967009',
    '408448007',
    '419043006',
    '394612005',
    '394733009',
    '394732004',
  ];

  /// Returns the enum value with an element attached
  PracticeSettingCodeValueSet withElement(Element? newElement) {
    return PracticeSettingCodeValueSet._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PracticeSettingCodeValueSet.$value';
}
