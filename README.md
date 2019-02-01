# PCR_Generator
interactive generator for production change request tickets for jira enviroment

### Required:
**pcraws.sh** to be executable - in the folder where `pcraws.sh` is, run following command `sudo chmod +x pcraws.sh`

### You will also need to update files within config data (_all data in files should be in one line and it should be separated by space - check `.line` files for examples):

* **projects.line** (set aws names of the projects ex: **cnd** **lee**)
* **ccs.line** (set jira account names to cc them in message. ex: **pperic** **mmikic** **zzikic** )
* **thankyou.line** (set name - your signature, which shoud be used to sign jira message)

### Usage:
`./pcraws.sh [build number]`
then follow instructions and select from choices, if some options is not needed just hit enter and it will be skiped.

Script then will print on the screen text for PCR, just copy and paste it.

Feel free to give suggestions, or maybe open PR with some improvements.
