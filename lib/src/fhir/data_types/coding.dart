import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Coding] /// A reference to a code defined by a terminology system.
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

  /// [system] /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  final FhirUri? system;
  final Element? systemElement;

  /// [version] /// The version of the code system which was used when choosing this code. Note
  /// that a well-maintained code system does not need the version reported,
  /// because the meaning of codes is consistent across versions. However this
  /// cannot consistently be assured, and when the meaning is not guaranteed to
  /// be consistent, the version SHOULD be exchanged.
  final FhirString? version;
  final Element? versionElement;

  /// [code] /// A symbol in syntax defined by the system. The symbol may be a predefined
  /// code or an expression in a syntax defined by the coding system (e.g.
  /// post-coordination).
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// A representation of the meaning of the code in the system, following the
  /// rules of the system.
  final FhirString? display;
  final Element? displayElement;

  /// [userSelected] /// Indicates that this coding was chosen by a user directly - e.g. off a pick
  /// list of available items (codes or displays).
  final FhirBoolean? userSelected;
  final Element? userSelectedElement;
  @override
  Coding clone() => throw UnimplementedError();
  Coding copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? system,
    Element? systemElement,
    FhirString? version,
    Element? versionElement,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    FhirBoolean? userSelected,
    Element? userSelectedElement,
  }) {
    return Coding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      userSelected: userSelected ?? this.userSelected,
      userSelectedElement: userSelectedElement ?? this.userSelectedElement,
    );
  }
}
