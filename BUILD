package(default_visibility = ["//visibility:public"])
genrule(
  name = "setup_build",
  cmd = "$(location :foo) bdist_egg",
  srcs = glob(["*"]),
  outs = ["ament_package-0.7.3-py2.7.egg"],
  tools = [":foo"],
)
py_binary(
    name = "setup",
    srcs = ["setup.py"],
    data = ["//ament_package"],
)
py_binary(
    name = "foo",
    srcs = ["foo.py"],
    data = ["//ament_package"],
)
