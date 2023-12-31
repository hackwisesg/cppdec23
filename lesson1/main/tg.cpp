#include <iostream>
#include "gtest/gtest.h"
#include "socket1.h"
#include "socket2.h"
#include "include_folder1/include_folder2/utils.h"

// added a dummy comment
int main()
{
  int x = 10; // to show debug symbols
  Socket1 s1;
  Utils u1;
  u1.printMe();
  s1.printMe();
  return 0;
}
