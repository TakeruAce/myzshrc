source /opt/ros/melodic/setup.zsh
# change terminal prompt display to [username@current directory]
source /opt/ros/melodic/setup.zsh
source ~/catkin_ws/devel/setup.zsh
source ~/teleopbot/devel/setup.zsh
export TURTLEBOT3_MODEL=burger
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
PROMPT='[%F{green}%(5~,%-1~/.../%2~,%~)%f] '

# カッコの対応などを自動的に補完する
setopt auto_param_keys
# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
setopt correct_all

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# すっきりしたプロンプト表示 (不要ならコメントアウト)
# PROMPT='%~ %# '
 
# zsh-completions の設定。コマンド補完機能
autoload -U compinit && compinit -u
 
# git のカラー表示
git config --global color.ui auto 
 
# エイリアス
alias his='history'
alias ...='cd ../..'
alias ....='cd ../../..'
alias e="emacs"
alias v='vim'
alias vi='vim'
alias mss='mysql.server start'
alias so='source'
alias be='bundle exec'
alias ber='bundle exec ruby'
 
# エイリアス: git 系
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'
 
# 色を使用出来るようにする
autoload -Uz colors
colors
 
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# cd なしでもディレクトリ移動
setopt auto_cd
 
# ビープ音の停止
setopt no_beep
 
# ビープ音の停止(補完時)
setopt nolistbeep
 
# cd [TAB] で以前移動したディレクトリを表示
setopt auto_pushd
 
# ヒストリ (履歴) を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
 
# 同時に起動した zsh の間でヒストリを共有する
setopt share_history
 
# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups
 
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
 
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
 
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
 
# キーバインディングを emacs 風にする
bindkey -d
bindkey -e
 
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
 
# [TAB] でパス名の補完候補を表示したあと、
# 続けて [TAB] を押すと候補からパス名を選択できるようになる
# 候補を選ぶには [TAB] か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1
 
# コマンドのスペルを訂正する
setopt correct
 
# cd した先のディレクトリをディレクトリスタックに追加する
# cd [TAB] でディレクトリのヒストリが表示されるので、選択して移動できる
# ※ ディレクトリスタック: 今までに行ったディレクトリのヒストリのこと
setopt auto_pushd
 
# pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups
 
# 拡張 glob を有効にする
# 拡張 glob を有効にすると # ~ ^ もパターンとして扱われる
# glob: パス名にマッチするワイルドカードパターンのこと
# ※ たとえば mv hoge.* ~/dir というコマンドにおける * のこと
setopt extended_glob
 
# 単語の一部として扱われる文字のセットを指定する
# ここではデフォルトのセットから / を抜いたものにしている
# ※ たとえば Ctrl-W でカーソル前の1単語を削除したとき / までで削除が止まる

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# ros setup
source /opt/ros/melodic/setup.zsh
source ~/sgcmg/devel/setup.zsh
source ~/fourth_robot_ws/devel/setup.zsh
source ~/s6_sgcmg_ws/devel/setup.zsh
source ~/cmgs_primitive/devel/setup.zsh

alias restart_bluetooth='sudo rfkill unblock all; sudo systemctl restart bluetooh.service'

ulimit -c unlimited

export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"


# ros alias
alias cmg_gimbal='rosrun rosserial_server serial_node _port:=/dev/teensy_for_gimbal _baud:=115200 __name:="teensy_gimbal"'
alias cmg_flywheel='rosrun rosserial_server serial_node _port:=/dev/teensy_for_flywheel _baud:=115200 __name:="teensy_flywheel"'
alias cmg_imu='rosrun rosserial_server serial_node _port:=/dev/teensy_for_imu _baud:=115200 __name:="teensy_imu"'
