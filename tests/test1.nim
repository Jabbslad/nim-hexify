import unittest

import hexify

test "0 dec should be 0 hex":
  check "0" == hexify(0)

test "201 dec should be C9 hex":
  check "C9" == hexify(201)

test "39554 dec should be 9A82 hex":
  check "9A82" == hexify(39554)

test "0 hex should be 0 dec":
  check 0 == unhexify("0")

test "C9 hex should be 201 decimal":
  check unhexify("C9") == 201

test "AB2 hex should be 2738 decimal":
  check unhexify("AB2") == 2738