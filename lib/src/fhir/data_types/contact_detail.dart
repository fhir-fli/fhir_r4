import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ContactDetail] /// Specifies contact information for a person or organization.
class ContactDetail extends DataType {
  ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    this.telecom,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of an individual to contact.
  final FhirString? name;
  final Element? nameElement;

  /// [telecom] /// The contact details for the individual (if a name was provided) or the
  /// organization.
  final List<ContactPoint>? telecom;
  @override
  ContactDetail clone() => throw UnimplementedError();
  ContactDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? name,
    Element? nameElement,
    List<ContactPoint>? telecom,
  }) {
    return ContactDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      telecom: telecom ?? this.telecom,
    );
  }
}
