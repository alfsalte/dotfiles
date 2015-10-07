# Spotifiy shortcuts

alias UIO='ssh -t haakenl@login.uio.no "cd /uio/kant/div-universitas-desken/; bash"'
# alias TASSEN='ssh universitas.no'
# alias FUNKY='ssh funkytime.no'
alias soba='source $HOME/.bashrc'

program_exists () {
  # test that program exists
  type "$1" &> /dev/null ;
}

if program_exists spotify; then
  alias v='sptfy volume'  # usage v [+, ++, --, 0, 3, 4, max]
  alias n='sptfy next'
  alias b='sptfy back'
  alias p='sptfy play'  # plauy / pause
fi

alias nocolor='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'

# failed experiment
# alias cd!='cd $(fc -r | grep -m1 -o "/.*/")'

mcd () {
  mkdir -p $1 && cd $1
}
