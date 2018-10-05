import unittest

import hexify

test "0 should be 0":
  check "0" == hexify(0)

test "201 as hex should be C9":
  check "C9" == hexify(201)

test "39554 as hex should be 9A82":
  check "9A82" == hexify(39554)