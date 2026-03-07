import 'package:fhir_r4_cds_hooks/src/enums/cds_link_type.dart';

/// A link attached to a CDS Hooks card.
class CdsLink {
  /// Creates a [CdsLink].
  CdsLink({
    required this.label,
    required this.url,
    required this.type,
    this.appContext,
  });

  /// Creates a [CdsLink] from a JSON map.
  factory CdsLink.fromJson(Map<String, dynamic> json) {
    return CdsLink(
      label: json['label'] as String,
      url: json['url'] as String,
      type: CdsLinkType.fromJson(json['type'] as String),
      appContext: json['appContext'] as String?,
    );
  }

  /// Human-readable label for the link.
  final String label;

  /// URL of the link.
  final String url;

  /// The type of link.
  final CdsLinkType type;

  /// An optional context to pass to a SMART app launch.
  final String? appContext;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        'url': url,
        'type': type.toJson(),
        if (appContext != null) 'appContext': appContext,
      };

  /// Returns a copy with the given fields replaced.
  CdsLink copyWith({
    String? label,
    String? url,
    CdsLinkType? type,
    String? appContext,
  }) {
    return CdsLink(
      label: label ?? this.label,
      url: url ?? this.url,
      type: type ?? this.type,
      appContext: appContext ?? this.appContext,
    );
  }
}
