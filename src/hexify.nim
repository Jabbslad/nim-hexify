const hexValues = "0123456789ABCDEF"

proc hexify*(n: int): string =
  var n, d = n

  if n == 0:
    result = "0"

  while n > 0:
    d = n mod 16
    n = n div 16
    result = $hexValues[d] & result

  result = "0x" & result 

