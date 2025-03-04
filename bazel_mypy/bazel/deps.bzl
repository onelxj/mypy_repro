load("@mypy_integration//repositories:repositories.bzl", mypy_integration_repositories = "repositories")
load("@mypy_integration_pip_deps//:requirements.bzl", mypy_integration_pypi_deps = "install_deps")
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies")
load("@rules_proto//proto:toolchains.bzl", "rules_proto_toolchains")
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
load("@test_pypi//:requirements.bzl", test_pypi_deps = "install_deps")

def deps():
    grpc_deps()

    mypy_integration_repositories()
    mypy_integration_pypi_deps()

    rules_proto_dependencies()
    rules_proto_toolchains()

    test_pypi_deps()