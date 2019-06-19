# docker-texlive
latex container for docker builds

See https://gitlab.com/docker-hub/texlive/blob/master/README.md for the decription of the mother container.

For most latex projects all you need to do is running from the directory that contains the main tex file

```bash
docker run --rm -it --user="$(id -u):$(id -g)" -v "$(pwd)":/home aggipp/texlive latexmk
```

# trouble shooting
clone this repo and build the docker file loclly.
```bash
git clone https://github.com/ag-gipp/docker-texlive
cd docker-texlive
docker build -t aggipp/texlive .
```
Now you use the locally build image on your system and not the image downloaded from dockerhub.
## Install missing packages

If you see error messages like
```
(/usr/local/texlive/texmf-dist/tex/latex/xfor/xfor.sty)

! LaTeX Error: File `datatool-base.sty' not found.

Type X to quit or <RETURN> to proceed,
```
Search on [ctan](https://ctan.org/pkg/datatool) for the filename, here, and add the package name, here, datatool to the list in the [Dockerfile](Dockerfile). If you have to that multiple times use a second run command to speed up building. If you are done make a pull request. Be sure to use the correct package nme listed in 'contained in TEXLIVE' which can be different from the mitex and canonical ctan name. For example 
```
Con­tained in
* TeX Live as jk­napltx
* MiKTeX as jk­nap­pen

