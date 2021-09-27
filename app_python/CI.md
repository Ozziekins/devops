# Best CI practices

Name: Ozioma Okonicha

Group: B18-SE01

Lab 3 



First of all, What is CI? Continuous integration (CI) is the practice of automating the integration of code changes from multiple contributors into a single software project. It’s a primary DevOps best practice, allowing developers to frequently merge code changes into a central repository where builds and tests then run. Automated tools are used to assert the new code’s correctness before integration.  

After research, some general best practices of CI I found are as follows:  

- Each new feature coming down the CI pipeline should have an accompanying set of tests to assert that the new code is behaving as expected.  
- Pull requests and code review  
- It is a best practice to measure the CI pipeline speed and optimize as necessary.  


## Github  
- Keep your Actions minimal  
- Don’t install dependencies unnecessarily  
- Never hardcode secrets  
- Limit environment variables to the narrowest possible scope  
- Ensure every repository contains a CI/CD workflow  
- Store authors in Action metadata to promote code ownership  
- Don’t use self-hosted runners in a public repository  

## Jenkins  
- Authenticate users and enforce access control on a Jenkins instance  
- In larger systems, don't build on the master  
- Backup Jenkins Home regularly  
- Limit project names to a sane (e.g. alphanumeric) character set 
- Use "file fingerprinting" to manage dependencies  
- The most reliable builds will be clean builds, which are built fully from Source Code Control
- Setup a different job/project for each maintenance or development branch you create  
- 
Tag, label, or baseline the codebase after the successful build.