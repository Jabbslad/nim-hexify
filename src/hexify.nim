const hexValues = "0123456789ABCDEF"

proc hexify*(n: int): string =
  if n == 0:
    return "0"

  var n = n
  while n > 0:
    result = $hexValues[n and 0xF] & result
    n = n shr 4

proc unhexify(hex: string): int =
  discard