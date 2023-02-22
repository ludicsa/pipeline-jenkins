Study -- Jenkins Lab
================

In this directory you will find files to manage a dockerized flask/python application to run with **Jenkins** pipeline.

### Jenkins Configuration
In this step you will configure containers to access jenkins dashboard on localhost.

1. Run the script on the main folder to build images and get the container up: 
```
- chomd u+x app.sh
- ./app.sh
```

2. Type `docker logs jenkins-server`, scroll up until you find jenkins admin password, it'll look like this:
```
*************************************************************
Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:
ace5651430964c99a2a2431263632f47
*************************************************************
``` 
Note: the password above is usage example only, it'll not work if you try to use that.

3. Access `http://localhost:8080/` to enter jenkins page and paste the password you got on the step above.

4. Configure jenkins and its plugin as you want. **My** recommendation is to keep as default.

### Jobs/Pipeline Configuration
In this step you'll create, **bake** (to build), **launch** (to deploy), **remove** (in case you need to remove).

Follow the steps below:

1. On jenkins dashboard click in "New Job" - **bake**
    - Name it **bake**
    -  Choose **pipeline**
    -  Go to "Advanced Project Options" and select "Pipeline Script from SCM" on **definition** tab
    -  Select "Git" on **SCM** tab
    -  Paste "https://github.com/ludicsa/pipeline-jenkins.git" on **Repository URL** tab
    -  Change to "*/main" on **Branch Specifier (blank for 'any')** tab
    -  Change to **"bake/Jenkinsfile"** on **Script Path** 
    -  Save it, now you can run the pipeline on the dashboard.


2. On jenkins dashboard click in "New Job" - **launch**
    - Name it **launch**
    -  Choose **pipeline**
    -  Go to "Advanced Project Options" and select "Pipeline Script from SCM" on **definition** tab
    -  Select "Git" on **SCM** tab
    -  Paste "https://github.com/ludicsa/pipeline-jenkins.git" on **Repository URL** tab
    -  Change to "*/main" on **Branch Specifier (blank for 'any')** tab
    -  Change to **"launch/Jenkinsfile"** on **Script Path** 
    -  Save it, now you can run the pipeline on the dashboard.

3. On jenkins dashboard click in "New Job" - **remove**
    - Name it **remove**
    -  Choose **pipeline**
    -  Go to "Advanced Project Options" and select "Pipeline Script from SCM" on **definition** tab
    -  Select "Git" on **SCM** tab
    -  Paste "https://github.com/ludicsa/pipeline-jenkins.git" on **Repository URL** tab
    -  Change to "*/main" on **Branch Specifier (blank for 'any')** tab
    -  Change to **"remove/Jenkinsfile"** on **Script Path** 
    -  Save it, now you can run the pipeline on the dashboard.
