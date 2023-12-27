cc_binary (
  name="tg",
  srcs=["tg.cpp"],
  deps = [
    "//socket:socket",
    "//utils/include_folder1/include_folder2:utils",

  ],
  copts = ["-Isocket", "-Iutils"],
  defines = ["SOCKET_TYPE_SF"],

)

cc_binary (
  name="tg_kernel",
  srcs=["tg.cpp"],
  deps = [
    "//socket:socket",
    "//utils/include_folder1/include_folder2:utils",

  ],
  copts = ["-Isocket", "-Iutils"],
  defines = ["SOCKET_TYPE_KERNEL"],

)