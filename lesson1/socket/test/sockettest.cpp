#include <gtest/gtest.h>
#include "../socket1.h"

// Test fixture for MyClass
class MyClassTest : public ::testing::Test
{
protected:
  Socket1 obj;
};

// Test case to check the getSum method
TEST_F(MyClassTest, SumTest)
{
  // Test input values
  int32_t a = 5;
  int32_t b = 7;

  // Calculate the expected result
  int32_t expected_sum = a + b;

  // Get the result from MyClass method
  int32_t actual_sum = obj.getSum(a, b);

  // Check if the result matches the expected value
  EXPECT_EQ(actual_sum, expected_sum);
}

int main(int argc, char **argv)
{
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
