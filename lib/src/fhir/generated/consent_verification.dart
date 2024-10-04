import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConsentVerification {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean verified;
  final PrimitiveElement Verified;
  final Reference verifiedWith;
  final FhirDateTime verificationDate;
  final PrimitiveElement VerificationDate;
  const ConsentVerification({
    this.id,
    this.extension,
    this.modifierExtension,
    this.verified,
    this.Verified,
    this.verifiedWith,
    this.verificationDate,
    this.VerificationDate,
  });
}
