alias folr="/a/fogram/src/fogrampreper/fofilestruct.sh"

alias focon="node /a/fogram/src/fogrampreper/forawconformist.js"

#gatex
alias gatexmksubfold="/a/fogram/src/gatex/script__make_base_object_sub_structure.sh"

export PATH=$PATH:/c/Program\ Files/Side\ Effects\ Software/Houdini\ 17.5.425/bin/:/c/Python27

export PYTHONPATH="/c/Program\ Files/Isotropix/Clarisse\ iFX\ 4.0\ SP3/Clarisse/python/"


alias clarisse="/c/Program\ Files/Isotropix/Clarisse\ iFX\ 4.0\ SP3/Clarisse/clarisse.exe -flavor ifx"
#alias hv=

# Test of using System var in clarisse @cr It works
##@status These are conceptual stuff

export RROOT="C:/Users/jeang/Dropbox/NAD/previz/repo"
export TOROOT="m:"
export MSROOT="$TOROOT/Megascans"
export DROOT="a:"
export AROOT="$DROOT/hundred/assets"
export PROOT=$RROOT/
export XNAME=x__texturing_substance__190919
export XROOT=x
#export XROOT=fogram
#export XROOT=scenes
export MNAME=gai


export HCACHE=/e/data/_cache/houdini


############################ Alias for Docker-LAMP

alias webs-bash='docker exec -it png-webserver "bash"'
alias be-bash='docker exec -it png-mysql "bash"'
alias webs-restart='docker container restart png-webserver'
alias be-restart='docker container restart png-mysql'
alias ws-restart-all=' (webs-restart & ); (be-restart & )'
# nav to VR360 storage
alias cdvr='cd /gi/wp-content/uploads/sites/20/spin360show/'

# cd wpapp blocks dir in the theme
alias cdblock='cd /gi/wp-content/themes/twentynineteen/blocks'

alias photoshop='/c/Program\ Files/Adobe/Adobe\ Photoshop\ CC\ 2019/Photoshop.exe '

alias gh="git push"
alias gp="git pull; git push"
alias gl="git pull"
alias gc="git commit "

