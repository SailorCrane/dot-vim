import unittest
from  import


class MyTestCase(unittest.TestCase, ):
    def setUp(self):
        print("start test")

    def tearDown(self):
        print("end test\n")

    def test_1(self):
        self.assertEqual(a, b)

    def test_2(self):
        pass


if __name__ == "__main__":
    unittest.main()
