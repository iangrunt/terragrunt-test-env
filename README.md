# Terragrunt Test Environment Generator

Run this function and get a Terragrunt stub environment to test things:
```
# TODO
```

### Generate these files by hand

We need at least this in the root to be a valid Terragrunt environment.
```
touch terragrunt.hcl
```
We're going to stash all of the shared configuration for all our environments here.
```
mkdir -p _envcommon/fake-module-for-testing
```
```
touch _envcommon/fake-module-for-testing/common-config.hcl
```

Let's create fake accounts and fake regions to play with our fake Terraform module that will be managed by Terragrunt.
```
mkdir -p {development,dogfood,kibble,loadtest,production,qa,sandbox,uat,staging}/{us-east-1,us-east-2,us-west-2}/fake-module-for-testing
```
```
touch {development,dogfood,kibble,loadtest,production,qa,sandbox,uat,staging}/{us-east-1,us-east-2,us-west-2}/fake-module-for-testing/terragrunt.hcl
```

Some values will be specific to a single account, or specific to a single region within a single account.
```
touch {development,dogfood,kibble,loadtest,production,qa,sandbox,uat,staging}/account.hcl
```
```
touch {development,dogfood,kibble,loadtest,production,qa,sandbox,uat,staging}/{us-east-1,us-east-2,us-west-2}/region.hcl
```

### Add Terragrunt code to appropriate files
We're gonna use this fake Terraform module https://github.com/iangrunt/terraform-null-input-output in all our environments. We'll need to reference it in our common configuration file.
```
cp _terragrunt_config_common_to_each_environment.hcl _envcommon/fake-module-for-testing/common-config.hcl
```

We'll also want to call this common configuration file in each one of our environments.
```
cp _terragrunt_config_to_copy_to_each_file {development,dogfood,kibble,loadtest,production,qa,sandbox,uat,staging}/{us-east-1,us-east-2,us-west-2}/fake-module-for-testing/terragrunt.hcl
```

### Cleanup?
```
rm -rf {development,dogfood,kibble,loadtest,production,qa,sandbox,staging,uat}
```

### Could these just be an env var?
Sure.
