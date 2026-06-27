# Azure Enterprise Landing Zone

This repository contains Terraform configurations for setting up an Azure Enterprise Landing Zone. The project is structured to support multiple environments and modular architecture, allowing for efficient management and deployment of Azure resources.

## Project Structure

- **.github/workflows/**: Contains GitHub Actions workflows for CI/CD automation.
- **docs/**: Documentation related to the project.
- **diagrams/**: Architectural diagrams and visual representations of the infrastructure.
- **environments/**: Contains environment-specific configurations.
  - **dev/**: Development environment variables.
  - **test/**: Testing environment variables.
  - **prod/**: Production environment variables.
- **modules/**: Contains reusable Terraform modules for various Azure resources.
  - **resource-group/**: Module for managing Azure resource groups.
  - **hub-network/**: Module for hub network configuration.
  - **spoke-network/**: Module for spoke network configuration.
  - **vnet-peering/**: Module for virtual network peering.
  - **nsg/**: Module for network security groups.
  - **route-table/**: Module for route tables.
  - **firewall/**: Module for Azure Firewall configuration.
  - **natgateway/**: Module for NAT Gateway configuration.
  - **bastion/**: Module for Azure Bastion configuration.
  - **loadbalancer/**: Module for load balancer configuration.
  - **windows-vm/**: Module for provisioning Windows virtual machines.
  - **keyvault/**: Module for Azure Key Vault.
  - **monitoring/**: Module for monitoring resources.
  - **diagnostics/**: Module for diagnostics settings.
  - **storage/**: Module for Azure Storage accounts.
  - **backup/**: Module for backup solutions.
  - **managed-identity/**: Module for managed identities.
  - **private-endpoint/**: Module for private endpoints.
  - **private-dns/**: Module for private DNS zones.
  - **policy/**: Module for Azure policies.
- **pipelines/**: CI/CD pipeline configurations.
- **scripts/**: Utility scripts for deployment or management.
- **tests/**: Test cases related to the Terraform configurations.
- **examples/**: Example configurations demonstrating how to use the modules.

## Getting Started

To get started with this project, clone the repository and navigate to the desired environment folder. You can then customize the `terraform.tfvars` file with your specific configuration values.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.