import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VerificationResultValidator {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference organization;
  final String identityCertificate;
  final PrimitiveElement IdentityCertificate;
  final Signature attestationSignature;
  const VerificationResultValidator({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.IdentityCertificate,
    this.attestationSignature,
  });
}
