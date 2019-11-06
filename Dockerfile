FROM adnrv/texlive:basic

RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

RUN tlmgr update --self &&\
    tlmgr install scheme-full
    
