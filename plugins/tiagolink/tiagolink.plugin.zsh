# funcoes autocomplete
s() { cd ~/Sites/$1; }
_s() { _files -W ~/Sites -/; }
compdef _s s

# st() {subl .;}

# Alias Pessoais
# Postgresql
# alias pgstart="pg_ctl -D /usr/local/var/postgres -l logfile start"
# alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# alias mongostart="mongod run --config /usr/local/Cellar/mongodb/2.0.3-x86_64/mongod.conf"


#git stuff
#  manda as alteraçoes pro repo
alias pusho="gm && git push origin master"
# pega as alteraçoes do repo de dev
alias pullo="gm && git pull origin master"
alias gs='git status'

alias gi="git commit -m \$1"

# mudar de branch "go funcionalidadex"
alias go="git checkout \$1"
# criar um novo branch "gob <novo>"
alias gob="git checkout -b \$1"
# vai pro master e ver se tem algo no index
alias gm='git checkout master && git status'
# faz o merge do work para o master
alias gmer="git checkout master && git merge work"
# faz o rebase do master para o work (depois de baixar novas coisas do repo por ex)
alias grbw="git checkout work && git rebase master"
# faz o rebase do work para o master (depois de alterar alguma coisa, antes de dar um "pusho")
alias grbm="git checkout master && git rebase work"
# vai pro work e ve se tem algo no index
alias gw='git checkout work && git status'
# adiciona tudo no index
alias ga='git add'
# adiciona interativamente
# alias ga="git add -i"

alias cw="compass watch"

alias rspec="be rspec"
# alias rake="noglob rake"
alias rake="be rake"
alias guard="be guard"