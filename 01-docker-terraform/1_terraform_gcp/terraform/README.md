### Concepts
* [Terraform_overview](../1_terraform_overview.md)
* [Audio](https://drive.google.com/file/d/1IqMRDwJV-m0v9_le_i2HA_UbM_sIWgWx/view?usp=sharing)

### Execution

```shell
# set GOOGLE_APPLICATION_CREDENTIALS
export GOOGLE_APPLICATION_CREDENTIALS="C:/Users/vorga/OneDrive/Documents/Organizations/DataTalksClub/data-engineering-zoomcamp/01-docker-terraform/1_terraform_gcp/rare-inquiry-412603-8c72019bc45e_google_credentials.json"
# Refresh service-account's auth-token for this session
gcloud auth application-default login

# Initialize state file (.tfstate)
terraform init

# Check changes to new infra plan
terraform plan -var="project=rare-inquiry-412603"
```

```shell
# Create new infra
terraform apply -var="project=rare-inquiry-412603"
```

```shell
# Delete infra after your work, to avoid costs on any running services
terraform destroy
```
