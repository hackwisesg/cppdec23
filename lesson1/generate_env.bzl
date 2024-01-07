def _impl(repository_ctx):

  repository_ctx.file("BUILD", "")

  repository_ctx.file("micromamba_root.bzl", "MAMBA_ENV = \"%s\"" % \
      repository_ctx.os.environ.get("MAMBA_ENV", "micromamba_env_not_found"))

micromamba_env_repository = repository_rule(
    implementation=_impl,
    environ = ["MAMBA_ENV"],
)