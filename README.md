
#### 0. clone

#### 1. add user to upload packages

type the below command in the docker container 
```
htpasswd -s /pypi/.htpasswd <username>
```

#### 2. write `pypirc` in local computer
```
[distutils]
index-servers =
    aiv-pypi
    internal

[aiv-pypi]
repository: http://192.168.0.105:8080
username:wonchul
password:1218

[internal]
repository: http://localhost:8080
username:wonchul
password:1218
```

#### 3. upload python package into local pypi-server 
```
python setup.py sdist upload -r aiv-pypi
```

#### 4. download python pacakge from local pypi-server 
```
pip install --extra-index-url http://<server IP adress>:8080 <package name>
```

