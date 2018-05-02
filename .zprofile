#
# .bashrc 
#

# プロンプトにマシン名(\h)とカレントのフルパス(\w)を表示
#
PS1="\[[\u@\h \W]\\$ \]"


#
# grep -----------------------------------------------------------
#
# GREP_COLORは、検索ワードを色づけするために使用。
# 色づけすると、視認性が格段にあがる。
# -Eオプションは、拡張正規表現を使用する場合に指定
#
export GREP_COLOR='1;37;41'
alias grep='grep -E --color=auto'


#
# Aliases --------------------------------------------------------
#

#
# -iは確認を行う。-vは詳細な情報の表示。
#
#alias cp='cp -iv'
#alias rm='rm -iv'
#alias mv='mv -iv'

#
# odは16進数でのバイナリダンプコマンド
# -tx1zは、1バイトごとに区切って表示
# -Axはアドレスを16進数表示、-vは連続する0をスキップしない
#
alias od='od -tx1z -Ax -v'


#
# ls -------------------------------------------------------------
#
alias ll='ls -la'


#
# lsのカラー化
#
export LS_COLORS='no=01;37:fi=00:di=01;36:ln=01;32:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;32;01:ex=01;33:*core=01;31:'
alias ls='ls -G'


#
# オリジナルのTERM=xtermはカラー表示できないと思われる。
#
if [ "$TERM" == xterm ]; then
  export TERM=xterm-color
fi

export PATH=$PATH:/Applications/MAMP/Library/bin/

# 以下を追記します。こちらはターミナル起動時にnvmが使えるようになる設定です。
# source ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#sakuraサーバ
alias sakura='ssh -p 11069 tsankyo@160.16.207.58'
