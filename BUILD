package(default_visibility = ["//visibility:public"])
genrule(
  name = "setup_build",
  cmd = "$(location :setup) bdist_egg -b $(location :setup) -d $(location :setup)",
  outs = ["ament_package-0.7.3-py2.7.egg"],
  tools = [":setup"],
)
py_binary(
    name = "setup",
    srcs = ["setup.py"],
    data = ["//ament_package"],
)
