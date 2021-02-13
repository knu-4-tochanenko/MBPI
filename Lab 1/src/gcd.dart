import 'dart:core';

int gcd(int a, int b) {
  var p = 1, q = 0, r = 0, s = 1, x, y;

  while(a > 0 && b > 0) {
    if (a >= b) {
      a = a - b;
      p = p - r;
      q = q - s;
    } else {
      b = b - a;
      r = r - p;
      s = s - q;
    }
  }

  if (a > 0) {
    x = p;
    y = q;
  } else {
    x = r;
    y = s;
  }

  return b;
}
