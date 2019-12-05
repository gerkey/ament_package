package(default_visibility = ["//visibility:public"])
#genrule(
#  name = "setup_build",
#  cmd = "foo=`realpath $(location :setup)`; cd ament_package && $$foo bdist_egg && cd .. && cp ament_package/dist/ament_package-0.7.3-py3.5.egg $(RULEDIR)",
#  srcs = glob(["**"]),
#  outs = ["ament_package-0.7.3-py3.5.egg"],
#  tools = [":setup"],
#)
genrule(
  name = "setup_build",
  cmd = "cd ament_package && mkdir -p ../$(RULEDIR)/lib/python3.5/site-packages && PYTHONPATH=../$(RULEDIR)/lib/python3.5/site-packages ../$(location :setup) install --prefix `realpath ../$(RULEDIR)`",
  srcs = glob(["**"]),
  outs = ["lib/python3.5/site-packages/ament_package-0.7.3-py3.5.egg"],
  tools = [":setup"],
)
py_binary(
    name = "setup",
    srcs = ["setup.py"],
    data = ["//ament_package"],
)
