const hexValues = "0123456789ABCDEF"

proc hexify*(n: int): string =
  if n == 0:
    return "0"

  var n = n
  while n > 0:
    result = $hexValues[n mod 16] & result
    n = n shr 4

proc unhexify(hex: string): int =
  discard