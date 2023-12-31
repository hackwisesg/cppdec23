
cc_library(
  name = "socket",
  hdrs = [
    "socket1.h",
    "socket2.h"
  ],
  srcs = ["socket.cpp"],
  visibility = ["//visibility:public"],
  # linkstatic=False,

)

cc_test(
    name = "sockettest",
    srcs = ["test/sockettest.cpp"],

    deps = [
       "//socket:socket",
        "@gtest_repo//:gtest",
    ],
    copts = ["-Iexternal/gtest_repo"],
    linkopts = []

)