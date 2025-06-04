# Crossplane Models

This project contains KCL models for various Crossplane providers, including AWS and Azure.

## Project Structure

```
io/
  upbound/
    aws/         # AWS provider models
    azure/       # Azure provider models
k8s/             # Kubernetes API models
```

## Adding New Provider Models

To add a new provider or extend existing provider models, follow these steps:

### 1. Add Provider Dependency

Update the `upbound.yaml` file by adding the new provider dependency using the `up` CLI:

```bash
up dependency add "xpkg.upbound.io/upbound/provider-azure-network@>=v1"
```

This command will:
- Update the `upbound.yaml` file with the new dependency
- Download the provider models to `.up/kcl/models/` folder

### 2. Copy Models to Project Structure

After running the dependency command, copy the `io` and `k8s` folders from `.up/kcl/models/` to the project root:

```bash
cp -r .up/kcl/models/io .
cp -r .up/kcl/models/k8s .
```

### 3. Verify Integration

Ensure the models are properly integrated by:
- Checking that the models compile correctly
- Verifying the folder structure matches existing patterns
- Testing the models with your Crossplane configurations

## Examples

### Adding AWS DynamoDB Provider
```bash
up dependency add "xpkg.upbound.io/upbound/provider-aws-dynamodb@>=v1"
cp -r .up/kcl/models/io .
cp -r .up/kcl/models/k8s .
```

### Adding Azure Network Provider
```bash
up dependency add "xpkg.upbound.io/upbound/provider-azure-network@>=v1"
cp -r .up/kcl/models/io .
cp -r .up/kcl/models/k8s .
```

## Current Dependencies

The project currently includes the following providers:
- AWS DynamoDB (`xpkg.upbound.io/upbound/provider-aws-dynamodb`)
- AWS EC2 (`xpkg.upbound.io/upbound/provider-aws-ec2`)
- AWS SES (`xpkg.upbound.io/upbound/provider-aws-ses`)
- AWS Route53 (`xpkg.upbound.io/upbound/provider-aws-route53`)
- Azure Network (`xpkg.upbound.io/upbound/provider-azure-network`)

## Contributing

When adding new models:
1. Follow the existing directory structure
2. Ensure models are properly versioned (v1alpha1, v1beta1, etc.)
3. Include both provider configuration and resource models
4. Update this README with new dependencies

## License

Apache-2.0
