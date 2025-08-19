# Azure VM Terraform Modules

A modular Terraform project to deploy an Azure Virtual Machine with all required resources:  

- Resource Group  
- Virtual Network (VNet)  
- Subnet  
- Network Security Group (NSG) with customizable rules  
- NSG association to the subnet  
- Public IP  
- Network Interface (NIC)  
- Virtual Machine (VM)  

Each resource is implemented as a **separate module** with its own `main.tf`, `variables.tf`, and `outputs.tf`. All values can be configured via `terraform.tfvars`.

---

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) >= 1.5.0  
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)  
- An Azure account  

---

## Usage

1. **Clone the repository**

```bash
git clone https://github.com/<your-username>/azure-terraform-vm-modules.git
cd azure-terraform-vm-modules

```
2. **Create a local terraform.tfvars from the example file:**
```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your own values, especially admin_username and admin_password

```
3. **Login to Azure**

```bash
az login
```

4. **Initialize Terraform**

```bash
terraform init
```

5. **Plan the Deployment**
```bash
terraform plan
```

6. **Apply the Deployment**
```bash
terraform apply
```

7. **Get the VM Public IP and SSH into the VM**
```bash
ssh <admin_username>@<public-ip>
# Use the password you defined in terraform.tfvars
```
# Edit terraform.tfvars with your own values (especially admin_username and admin_password)
```
