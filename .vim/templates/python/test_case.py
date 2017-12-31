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


def suite():
    all_suite = unittest.TestSuite()

    suite_xml = unittest.TestLoader().loadTestsFromTestCase(XmlTest)
    suite_dom = unittest.TestLoader().loadTestsFromTestCase(DomTest)

    # all_suite.addTest(suite_dom)
    # all_suite.addTest(suite_xml)
    all_suite.addTests([suite_dom, suite_xml])

    return all_suite


if __name__ == "__main__":
    unittest.main()
    # unittest.TextTestRunner(verbosity=2).run(suite())
