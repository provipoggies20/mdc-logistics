import unittest
class TestChatHandler(unittest.TestCase):
    def test_specific_vehicle_query(self):
        result = query_database("specific_vehicle_query", "Status of PC200-10M0", {})
        self.assertIn("PC200-10M0", result)
if __name__ == "__main__":
    unittest.main()