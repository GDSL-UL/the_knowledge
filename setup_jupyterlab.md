# Install and run a JupyterLab server

## Local install

This guide assumes you meet the following requirements in your personal
machine (eg. laptop):

1. You have admin rights over your machine
1. You are running either Windows 10 Pro, macOS, or Linux

Assuming Docker is up and running (check [`setup_docker.md`](setup_docker.md)
for that), you can install an "image", which is the install that will let you
run containers, by typing on a command line (`Terminal.app` or `PowerShell`
are both good options):

```
docker pull darribas/gds:4.0
```

This will take a while to download but, once finished, you will be ready
to go.

Once the command above has finished installing your GDS stack, you are ready to go! To get a Jupyter session started, you can follow these steps:

1. Run on the same terminal as above the following command:

    ```shell
    docker run --rm -ti -p 8888:8888 -v ${PWD}:/home/jovyan/work darribas/gds:4.0
    ```

The command above spins up a container of the `gds` image, version 4.0 and
ensures it is connected through two main bridges:

- Mapping your laptop's file system from where you have launched the
   command (`${PWD}`) to a folder called `work` on the home directory of
   the container. When you login to Jupyter (see below), you will see a
   `work` folder and, if you click into it, you should see the content of
   your laptops folder in there.
- Mapping port `8888` from the container to your laptop, so you can
   connect to it through a browser.

It is important to know this command starts a Jupyter server on your machine and keeps it running, so please do not quit the window until you are
done using Jupyter, otherwise it will crash.

2. Open your favorite browser (preferably Firefox or Chrome) and point it to
   `localhost:8888`
3. You will be asked for a password or a token. To find the correct one, check
   the terminal where you started the `docker run ...` command in 1) and look
   for the long token in the logs. Your prompt should look something (albeit
   not exactly) like this:

   ```shell
    docker run --rm -ti -p 8888:8888 -v ${PWD}:/home/jovyan/work darribas/gds:4.0
    Executing the command: jupyter notebook
    [I 11:38:40.234 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
    [I 11:38:41.328 NotebookApp] Loading IPython parallel extension
    [I 11:38:41.612 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.7/site-packages/jupyterlab
    [I 11:38:41.612 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
    [I 11:38:43.091 NotebookApp] Serving notebooks from local directory: /home/jovyan
    [I 11:38:43.091 NotebookApp] The Jupyter Notebook is running at:
    [I 11:38:43.091 NotebookApp] http://ee20e7549b49:8888/?token=4dc814ee44c64383d5d32dfd439fe62bbc17d9803d9ae434
    [I 11:38:43.091 NotebookApp]  or http://127.0.0.1:8888/?token=4dc814ee44c64383d5d32dfd439fe62bbc17d9803d9ae434
    [I 11:38:43.091 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
    [C 11:38:43.114 NotebookApp]

        To access the notebook, open this file in a browser:
            file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
        Or copy and paste one of these URLs:
            http://ee20e7549b49:8888/?token=4dc814ee44c64383d5d32dfd439fe62bbc17d9803d9ae434
         or http://127.0.0.1:8888/?token=4dc814ee44c64383d5d32dfd439fe62bbc17d9803d9ae434
   ```

   The token you want to copy is the long series of letter and numbers right
   after `?token=`, starting by `4dc814ee`.
4. The token should let you into your Jupyter Lab session. Congratulations!
   You can then access the files in your computer through the `work` directory
   on the left-side pane.

## Remote install

It is also possible to start a Jupyter server as above but, instead of run it
on your local machine, it can run on a remote machine and you connect to that
through your browser over the internet. The process in this context is a bit
more intricate because you need to ensure that the connection is secure, but
overall it follows a similar pattern. The following steps below assume you can
login to the remote server where you want to run Jupyter through `ssh` and the
serve already has a Docker image installed, ready to be run.

- Login to the remote machine:

    ```
    ssh <username>@<server.ip.address>
    ```

1. Launch the container:

    ```shell
    docker run --rm -ti -p 8888:8888 -v ${PWD}:/home/jovyan/work darribas/gds:4.0 start.sh
    ```

    Note we are appending `start.sh` so it drops us into
    the command line of the container rather than launching the server directly

1. Run `jupyter notebook --generate-config`
1. Generate SSH keys with: `openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem`
1. Generate password as in the official [tutorial](http://jupyter-notebook.readthedocs.io/en/stable/public_server.html#preparing-a-hashed-password)
1. Update `/home/jovyan/.jupyter/jupyter_notebook_config.py`
    ```python
    # Set options for certfile, ip, password, and toggle off
    # browser auto-opening
    c.NotebookApp.certfile = u'/home/jovyan/mycert.pem'
    c.NotebookApp.keyfile = u'/home/jovyan/mykey.key'
    # Set ip to '*' to bind on all interfaces (ips) for the public server
    c.NotebookApp.ip = '*'
    c.NotebookApp.password = u'sha1:bcd259ccf...<your hashed password here>'
    c.NotebookApp.open_browser = False

    # It is a good idea to set a known, fixed port for server access
    c.NotebookApp.port = 8888
    ```
1. Launch secure Lab: `jupyter lab`
1. On your own machine (laptop/tablet), log in to `<server.ip.address>:8888` with the password you have set

## Useful Python Docker Images

- [`gds_env`](https://github.com/darribas/gds_env): a containerised platform
  for Geographid Data Science in Jupyter (Python & R)
- [`jupyter-stacks`](https://github.com/jupyter/docker-stacks): official
  Jupyter stacks (the `gds_env` is based on these)

