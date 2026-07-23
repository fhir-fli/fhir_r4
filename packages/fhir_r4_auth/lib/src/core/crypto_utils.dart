/// Small cryptographic helpers shared across the auth package.
library;

import 'dart:convert';

/// Compares two strings in constant time relative to their content.
///
/// Returns `true` only when [a] and [b] are byte-for-byte equal. The comparison
/// short-circuits on differing length (which is not secret for the fixed-length
/// hashes/tokens this is used on) but otherwise inspects every byte, so it does
/// not leak *where* two equal-length values first differ. Use this for security
/// token comparisons (`at_hash`, nonce, PKCE challenge) instead of `==`.
bool constantTimeEquals(String a, String b) {
  final ab = utf8.encode(a);
  final bb = utf8.encode(b);
  if (ab.length != bb.length) return false;
  var result = 0;
  for (var i = 0; i < ab.length; i++) {
    result |= ab[i] ^ bb[i];
  }
  return result == 0;
}
