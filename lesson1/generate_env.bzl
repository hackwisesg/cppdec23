def _impl(repository_ctx):

  # print("XXXXXXXXXXXXXXXXXXXXXXXSX")
  # ddd = repository_ctx.os.environ.get("MAMBA_ENV", "micromamba_env_not_found")
  # print(ddd.lower())
  # print(ddd.lower())
  # print('SSSS')
  # #env = repository_ctx.host_configuration.default_shell_env
  # print(repository_ctx.os.environ["MAMBA_ENV"])
  # print('YYYYY')


  repository_ctx.file("BUILD", "")

  repository_ctx.file("micromamba_root.bzl", "MAMBA_ENV = \"%s\"" % \
      repository_ctx.os.environ.get("MAMBA_ENV", "micromamba_env_not_found"))
  #repository_ctx.file("micromamba_root.bzl", "MICROMAMBA_ENV_PATH = \"%s\"" % "/home/jonty/micromamba/envs/")
  #print("MICROMAMBA_ENV_PATH = \"%s\"" % repository_ctx.os.environ.get("MICROMAMBA_ENV_PATH", "micromamba_env_not_found"))

micromamba_env_repository = repository_rule(
    implementation=_impl,
    environ = ["MAMBA_ENV"],
)