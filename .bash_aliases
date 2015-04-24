alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories


# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Aliases git
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias gus='git reset HEAD'
alias gm="git merge"
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gsl="git shortlog -sn"
alias gw="git whatchanged"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gtl="git tag -l"

# Aliases vagrant
alias vup="vagrant up"
alias vh="vagrant halt"
alias vs="vagrant suspend"
alias vr="vagrant resume"
alias vrl="vagrant reload"
alias vssh="vagrant ssh"
alias vst="vagrant status"
alias vp="vagrant provision"
alias vdstr="vagrant destroy"
# requires vagrant-list plugin
alias vl="vagrant list"
# requires vagrant-hostmanager plugin
alias vhst="vagrant hostmanager"

# Aliases ubuntu
##################################################
# Apt-cache stuff                #
##################################################

alias aptadd='sudo apt-cache add'
alias aptdepends='apt-cache depends'
alias aptdotty='sudo apt-cache dotty'
alias aptdumpavail='sudo apt-cache dumpavail'
alias aptdump='apt-cache dump'
alias aptgencaches='sudo apt-cache gencaches'
alias aptpkgnames='apt-cache pkgnames'
alias aptpolicy='apt-cache policy'
alias aptrdepends='apt-cache rdepends'
alias aptsearch='apt-cache search'
alias aptshowpkg='apt-cache showpkg'
alias aptshowsrc='apt-cache showsrc'
alias aptshow='apt-cache show'
alias aptstats='apt-cache stats'
alias aptunmet='apt-cache unmet'
alias aptxvcg='sudo apt-cache xvcg'



##################################################
# Apt-get stuff                  #
##################################################

alias autoremove='sudo apt-get autoremove'
alias check='sudo apt-get check'
alias dist-upgrade='sudo apt-get dist-upgrade'
alias dselect-upgrade='sudo apt-get dselect-upgrade'
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
alias download='sudo apt-get download'
alias build-dep='sudo apt-get build-dep'
alias clean='sudo apt-get clean'
alias autoclean='sudo apt-get autoclean'
alias autoremove='sudo apt-get autoremove'
alias autoremove='sudo apt-get autoremove'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -iv'
alias mkdir='mkdir -p -v'
alias reboot='sudo /sbin/reboot'
alias root='sudo bash -l'
alias shutdown='sudo shutdown -h now'
alias kernelcleanup="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"                                         # remove all unused Linux Kernel headers, images & modules

# python aliases
alias venv='python3 -m venv'
alias serve='python3 -m http.server'
alias pydoc='python3 -m pydoc'
alias pytime='python3 -m timeit'
alias pyprof='python3 -m profile'
alias jcat='python3 -m json.tool'
alias cal='python3 -m calendar'
alias py2path='python -m site'
alias py3path='python3 -m site'

