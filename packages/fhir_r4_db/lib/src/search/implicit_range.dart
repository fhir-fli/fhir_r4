/// The implicit range of a search number, R4B 3.1.1.4.6, as `[low, high)`.
///
/// "Searching on decimals involves an implicit range. The number of
/// significant digits of the implicit range is the number of digits
/// specified in the search parameter value, excluding leading zeros." The
/// range is half a unit of the last significant digit either side of the
/// value, read from the value AS WRITTEN:
///
/// | written   | range                | in the text               |
/// |-----------|----------------------|---------------------------|
/// | `100`     | [99.5, 100.5)        | [99.5 ... 100.5)          |
/// | `100.00`  | [99.995, 100.005)    | [99.995 ... 100.005)      |
/// | `1.00e2`  | [99.5, 100.5)        | same three digits as 100  |
/// | `5.4`     | [5.35, 5.45)         | 5.4 (+/-0.05)             |
/// | `5.40e-3` | [0.005395, 0.005405) | 0.0054 (+/-0.000005)      |
///
/// The bounds are built as decimal strings and parsed, not computed as
/// `value ± half` in floating point, so that `high` for `0.3` is the same
/// double that a stored `0.35` parses to; `0.3 + 0.05` need not be.
///
/// Returns null when [written] is not a number.
({double low, double high})? implicitRange(String written) {
  final trimmed = written.trim();
  if (double.tryParse(trimmed) == null) {
    return null;
  }
  final exponentAt = trimmed.indexOf(RegExp('[eE]'));
  final mantissa = exponentAt < 0 ? trimmed : trimmed.substring(0, exponentAt);
  final exponent =
      exponentAt < 0 ? 0 : int.parse(trimmed.substring(exponentAt + 1));
  final pointAt = mantissa.indexOf('.');
  final decimals = pointAt < 0 ? 0 : mantissa.length - pointAt - 1;
  // The integer the mantissa's digits spell, so the value is
  // digits × 10^place, with place the position of the last digit.
  final digits = BigInt.parse(mantissa.replaceFirst('.', ''));
  final place = exponent - decimals;
  // Half a unit of that place either side: (2·digits ∓ 1) × 5 × 10^(place-1).
  final two = BigInt.two;
  final five = BigInt.from(5);
  final low = (two * digits - BigInt.one) * five;
  final high = (two * digits + BigInt.one) * five;
  return (
    low: double.parse('${low}e${place - 1}'),
    high: double.parse('${high}e${place - 1}'),
  );
}
