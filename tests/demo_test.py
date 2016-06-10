import unittest

class SimpleTestCase(unittest.TestCase):
	def test_upper(self):
		self.assertEqual('foo'.upper(),'TOO')
