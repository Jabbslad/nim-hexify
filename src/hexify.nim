import math, tables

const hexValues = "0123456789ABCDEF"
const decValues = {"0" : 0, "1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5, "6" : 6, "7" : 7, "8" : 8,
"9" : 9, "A" : 10, "B" : 11, "C" : 12, "D" : 13, "E" : 14, "F" : 15}.toTable

proc hexify*(n: int): string =
  if n == 0:
    return "0"

  var n = n
  while n > 0:
    result = $hexValues[n and 0xF] & result
    n = n shr 4

proc unhexify*(hex: string): int =
  for i, c in hex.pairs:
    var x = decValues[$c] * (16 ^ ((hex.len - 1) - i))
    result = result + x
