#include <iostream>
class Socket1
{
public:
  void printMe()
  {
    std::cout << "Socket1 class!" << std::endl;
  }

  int32_t getSum(int32_t x, int32_t y)
  {
    return x + y;
  }
};