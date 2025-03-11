import 'package:fhir_r4/fhir_r4.dart';

/// Utility Class to see if a resource has coding fields
class ICoding {
  /// Main constructor for [ICoding].
  ICoding({
    this.system,
    this.version,
    this.code,
    this.display,
  });

  /// The system field
  String? system;

  /// The version field
  String? version;

  /// The code field
  String? code;

  /// The display field
  String? display;

  /// Returns a [ICoding] from a [FhirBase] object
  static ICoding? getAsICoding(FhirBase? b) {
    if (b == null) return null;

    if (b is FhirCode) {
      // TODO(Dokotela): Implement this
      // if (property.getDefinition().getBinding().getStrength()
      // != BindingStrength.REQUIRED)
      //   return null;
      // final c = ICodingImpl(true, true, false, false);
      // c.code = primitiveValue();
      // final var vse = property.getContext()
      // .expandVS(property.getDefinition().getBinding(), true, false);
      // if (vse.getValueset() == null)
      //   return null;
      // for (final ValueSetExpansionContainsComponent cc in
      // vse.getValueset().getExpansion().getContains()) {
      //   if (cc.getCode().equals(c.code)) {
      //     c.system = cc.getSystem();
      //     if (cc.hasVersion()) {
      //       c.doesVersion = true;
      //       c.version = cc.getVersion();
      //     }
      //     if (cc.hasDisplay()) {
      //       c.doesDisplay = true;
      //       c.display = cc.getDisplay();
      //     }
      //   }
      // }
      // if (c.system == null)
      //   return null;
      // return c;
    } else if (b is Coding) {
      return ICoding(
        system: b.system?.toString(),
        version: b.version?.toString(),
        code: b.code?.toString(),
        display: b.display?.toString(),
      );
    } else if (b is Quantity) {
      return ICoding(
        system: b.system?.toString(),
        code: b.code?.toString(),
      );
    } else {
      return null;
    }
    return null;
  }

  /// Returns if the Resource has a system
  bool get hasSystem => system != null;

  /// Returns if the Resource has a version
  bool get hasVersion => version != null;

  /// Returns if the Resource has a code
  bool get hasCode => version != null;

  /// Returns if the Resource has a display
  bool get hasDisplay => version != null;
}
