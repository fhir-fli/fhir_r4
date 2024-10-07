import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Coding extends DataType {
  Coding({
    super.id,
    super.extension_,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.userSelected,
    this.userSelectedElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri? system;
  final Element? systemElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirBoolean? userSelected;
  final Element? userSelectedElement;
  @override
  Coding clone() => throw UnimplementedError();
}
