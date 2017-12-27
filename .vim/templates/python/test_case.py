#! /usr/bin/env python
# -*- coding: utf-8 -*-

import unittest
from


class MyTestCase(unittest.TestCase, ):
    def setUp(self):
        print("start test '%s'" % self.__class__.__name__)

    def tearDown(self):
        print("end test '%s' \n" % self.__class__.__name__)

    def test_all(self):
        self.assertEqual(a, b)
        self.assertTrue()
        self.assertFalse()

    def test_raises(self):
        self.assertRaises(ValueError, lambda :)

        with self.assertRaises(ValueError):
            pass

    def test_1(self):
        self.assertEqual(a, b)


if __name__ == "__main__":
    unittest.main()
