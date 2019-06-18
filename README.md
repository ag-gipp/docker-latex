# docker-texlive
latex container for docker builds

See https://gitlab.com/docker-hub/texlive/blob/master/README.md for the decription of the mother container.

For most latex projects all you need to do is running from the directory that contains the main tex file

```bash
docker run --rm -it --user="$(id -u):$(id -g)" -v "$(pwd)":/home aggipp/texlive latexmk
