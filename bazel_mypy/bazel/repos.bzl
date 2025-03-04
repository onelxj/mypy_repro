load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repos():

    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "9acc0944c94adb23fba1c9988b48768b1bacc6583b52a2586895c5b7491e2e31",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.27.0/rules_python-0.27.0.tar.gz",
        strip_prefix = "rules_python-0.27.0",
    )

    maybe(
        http_archive,
        name = "com_github_grpc_grpc",
        urls = ["https://github.com/grpc/grpc/archive/refs/tags/v1.70.0.tar.gz"],
        strip_prefix = "grpc-1.70.0",
        sha256 = "3c95034f6b23ce7d286e2e7b5f3f4f223720b8bb3f5a9662ff96b7013b2c3c26",
    )

    maybe(
        http_archive,
        name = "com_google_protobuf",
        sha256 = "6fbe2e6f703bcd3a246529c2cab586ca12a98c4e641f5f71d51fde09eb48e9e7",
        strip_prefix = "protobuf-27.1",
        urls = [
            "https://github.com/protocolbuffers/protobuf/archive/v27.1.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "mypy_integration",
        sha256 = "9d270fdb81e76fed1122a94c512b0930d70b837569dc488b58ab9c033641910d",
        strip_prefix = "bazel-mypy-integration-0.5.0",
        url = "https://github.com/bazel-contrib/bazel-mypy-integration/archive/refs/tags/0.5.0.tar.gz",
        # patches = ["@com_github_reboot_dev_reboot//bazel:mypy.patch"],
        # patch_args = ["-p1"],
    )

    maybe(
        http_archive,
        name = "rules_proto",
        sha256 = "14a225870ab4e91869652cfd69ef2028277fc1dc4910d65d353b62d6e0ae21f4",
        strip_prefix = "rules_proto-7.1.0",
        url = "https://github.com/bazelbuild/rules_proto/releases/download/7.1.0/rules_proto-7.1.0.tar.gz",
    )