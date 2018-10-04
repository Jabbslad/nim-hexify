import unittest

import hexify

test "0 should be 0":
  check "0x0" == hexify(0)

test "201 as hex should be C9":
  check "0xC9" == hexify(201)