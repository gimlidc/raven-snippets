# Raven snippets
Set of scripts and notes for speedup Raven development

## Docker
The most of the code run on Raven should be placed in Docker. Useful templates and command can be found in docker folder.
- Python + PyTorch + NVIDIA example is present

## Python
Installed package manager is [*Poetry*](https://python-poetry.org). It creates (by default) .venv in your current folder by>
```
poetry init
```

## JupyterLab
If you would like to run notebooks on Raven create virtualenv with necessary python packages (e.g. through poetry)
```
poetry new jupyterlab-venv
cd jupyterlab-venv
poetry add jupyterlab
```

1. log into Raven
2. run screen (to prevent SIGKILL for your jupyterlab)
3. in the screen `./.venv/bin/jupyter-lab --no-browser -p 33333`
   - you can leave the screen by CTRL+a, CTRL+d (screen will run in the background)
   - if you want to go back to the screen use `screen -r`
   - if you want to close the screen press CTRL+d in the screen
5. in another terminal create tunnel for remote work `ssh -N -L localhost:33333:localhost:8888 username@raven-ip`
6. go to browser [http://localhost:33333/] and enter the token from the screen
