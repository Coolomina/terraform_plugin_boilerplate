
# Terraform plugin boilerplate
This repo is intended to be forked and by no means is the standard approach when developing Terraform, even though it's inspired by its [docs](https://www.terraform.io/docs/extend/writing-custom-providers.html).

 
## Steps to start developing

First of all you should download all dependencies:
```shell
$ make build_deps
```

And then you can start developing your Terraform plugin by:
```shell
$ make dev
```

When you're done, you can test your plugin by running:

```shell
$ make compile_plugin
```

```shell
$ make init
```

```shell
$ make plan
```

```shell
$ make apply
```
