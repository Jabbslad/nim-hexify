const hexValues = "0123456789ABCDEF"

proc hexify*(n: int): string =
  var n, d = n

  if n == 0:
    result = "0"

  while n > 0:
    d = n mod 16
    n = n shr 4
    result = $hexValues[d] & result

proc unhexify(hex: string): int =
  discard