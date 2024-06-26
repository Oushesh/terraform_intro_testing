# terraform_intro_testing
   My first intro to terraform cloud and how it can transformed to voice to infrastructure from code. 

   * Google Cloud Compute Platform:


      Example Project:
      terraform_gcp/
      terraform_gcp_bucket/
      terraform_gcp_vm/

   * Azure Cloud 
     Install azure-cli 
      Ref: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-macos

      If new login was made, or location changed: use az login to reconfigure things.

      Example Project:
      terraform_azure_vm
      terraform_azure_big_gpu      


      In case of contradiction see/list the options available in the region:
      az vm list-sizes --location eastus
      az vm list-sizes --location westus


## Installation:
    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform

## Steps: 
   * Get certification from hashicorp.

## Advantages: 
   1. Build and tear down infrastructure for running experiments within 30s. instead of 15-20 min of configuration.
   2. Leading to cost saving for not running the tests of infrastructure overnight.
   3. Automation of cloud infrastructure from any cloud to any cloud.
   4. Infrastructure-as-code: 
   1 command to build all of it and tear it all down.
   Infrastructure-as-code. Next step in AI would be be build the workflow.
   5. agent-less. There are providers 
   6. Multi-cloud (does not lock to one cloud). State based.
      one source of truth: like git for infrastructure.
   7. Using terraform-cloud: the changes made to the state are locked, preventing unwanted changes.
   8. No manual click-ops
   9. Massive Cost-Savings.

## Fire-rapid questions:
    What is the difference between docker and terraform?
    Orgainsations Decentralise: https://www.youtube.com/watch?v=zm0QVutAkYg

## Personally Identifiable Information: something to look for.

## Terraform Google Example
![](terraform_google.png)

    * Install google cloud from here: gloud https://cloud.google.com/sdk/docs/install
    This will communicate with terraform registry service.

## GCP VM Setup: 
   Ref: https://github.com/GoogleCloudPlatform/compute-gpu-installation
   
   For cheap purposes i use Nvidia K80. Alternatives are T4, P4, A100. 

## 



## Terraform Testing:


## Reference:
   * https://www.youtube.com/watch?v=nvNqfgojocs
   * https://www.udemy.com/course/terraform_training/?utm_source=adwords&utm_medium=udemyads&     utm_campaign=LongTail_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_77879423894_._ad_535397245857_._kw__._de_c_._dm__._pl__._ti_dsa-1007766171032_._li_9070408_._pd__._&matchtype=&gad_source=1&gclid=Cj0KCQiAwP6sBhDAARIsAPfK_wZNaPLNHA_Luyr2ptSmiXB1UGC4h4Mjr6DngjjrCvws69VFYIgr2ToaAlIrEALw_wcB
   
   
   Udemy Course for Hashicorp

   * https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-terraform 