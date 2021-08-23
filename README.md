# Worldtime- Moscow

### About The Project

Name: Ozioma Okonicha  
Group: B18-SE02  
Lab 1&2

### Built With

* Django python framework  
I chose to use this framework honestly because I have never used it before and was eager to explore it for the first time. Moreover, it enables rapid development of secure and maintainable websites. Also, there are good debugging tools, logging is already set up, and there's a server that automatically restarts with file changes.


## Getting Started - Lab 1 

To get a local copy up and running follow these simple steps.

### Prerequisites 

* Ensure you have python3 by running the following command
  ```sh
  python3 --version
  ```
* Install the virtual environment
  ```sh
  sudo apt install -y python3-venv
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Ozziekins/devops.git
   ```
2. Enter the working directory
   ```sh
   cd devops
   
   cd app_python
   ```
3. Create the virtual environment
   ```sh
   python3 -m venv my_env
   ```
4. Activate the virtual environment
   ```sh
   source my_env/bin/activate
   ```
5. In your new environment, you can use pip to install Django
   ```sh
   pip3 install django

   django-admin --version
   ```
6. Finally run the application and open to view on your browser at http://127.0.0.1:8000/
   ```sh
   python3 manage.py runserver
   ```


## Getting Started - Lab 2 

To get the Docker image up and running follow these simple steps.

### Prerequisites 

* Ensure you have docker by running the following command
  ```sh
  sudo docker run hello-world
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo_name.git
   ```
2. Enter the working directory
   ```sh
   cd devops

   cd app_python
   ```
3. Create the virtual environment
   ```sh
   python3 -m venv my_env
   ```
4. Activate the virtual environment
   ```sh
   source my_env/bin/activate
   ```
5. In your new environment, you can use run the container using my image
   ```sh
   docker run -it -p 8020:8020 \
      -e DJANGO_SUPERUSER_USERNAME=admin \
      -e DJANGO_SUPERUSER_PASSWORD=some_password1234 \
      -e DJANGO_SUPERUSER_EMAIL=youremail@gmail.com \
      ozziekins/django-pythonapp
   ```
6. Finally open to view on your browser at http://127.0.0.1:8020/

## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.



## Contact

Email: [innopolis email](mailto:o.okonicha@innopolis.university)  

Project Link: [https://github.com/Ozziekins/devops](https://github.com/Ozziekins/devops)




