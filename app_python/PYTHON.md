# Best DevOps practices

Name: Ozioma Okonicha

Group: B18-SE01

Lab 1 



First of all, What is DevOps? It can be seen as an extension of the Agile practice for both Development and IT Operations teams; in order to increase the frequency of deployment, reduce the failure of new releases and achieve faster market time.

After doing some research, some of the best practices of DevOps I came across are as follows:

- If something can be automated, do it – that’s the best way to reduce the time spent on that task in the future, at the same time reducing the risk of human error.
- Keep your infrastructure in a codebase – by doing that, recreation is simpler and you get a good understanding of the infrastructure stack that you create. Moreover, any changes can be checked/audited through commit history
- Always test your code.
- Keep your environments as similar as possible – it enables us to identify and mitigate any potential issues before deploying on production. In fact, it’s best to use an environment which is as similar to production as possible.
- Keep your applications [12-factor*](https://12factor.net/) compliant.
- Be up-to-date with newest technology trends.
- Deliver quickly, rollback even quicker (if necessary).
- Business, operations, and development teams need to be fully aligned to ensure the project’s success.
- Provide developers with tools that help them work best.



Some best practices of python programming itself are:

- Create a Code Repository and Implement Version Control
- Create Readable Documentation
- Follow Style Guidelines
- Correct Broken Code Immediately
- Use the PyPI Instead of Doing it Yourself
- Use the Right Data Structures
- Write Readable Code
- Use Virtual Environments
- Write Object-Oriented Code
- What Not to Do while Programming in Python



## 12-factor*
I. <u>Codebase</u>  
	One codebase tracked in revision control, many deploys  
II. <u>Dependencies</u>  
	Explicitly declare and isolate dependencies  
III. <u>Config</u>  
	Store config in the environment  
IV. <u>Backing services</u>  
	Treat backing services as attached resources  
V. <u>Build, release, run</u>  
	Strictly separate build and run stages  
VI. <u>Processes</u>  
	Execute the app as one or more stateless processes  
VII. <u>Port binding</u>  
	Export services via port binding  
VIII. <u>Concurrency</u>  
	Scale out via the process model  
IX. <u>Disposability</u>  
	Maximize robustness with fast startup and graceful shutdown  
X. <u>Dev/prod parity</u>  
	Keep development, staging, and production as similar as possible  
XI. <u>Logs</u>  
	Treat logs as event streams  
XII. <u>Admin processes</u>  
	Run admin/management tasks as one-off processes  
