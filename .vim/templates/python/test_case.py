#! /usr/bin/env python
# -*- coding: utf-8 -*-

import unittest
from import


class MyTestCase(unittest.TestCase, ):
    def setUp(self):
        print("start test '%s'" % self.__class__.__name__)

    def tearDown(self):
        print("end test '%s' \n" % self.__class__.__name__)

    def test_1(self):
        self.assertEqual(a, b)

    def test_2(self):
        pass


if __name__ == "__main__":
    unittest.main()
