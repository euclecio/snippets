# GIT
gac() {
    git add . --all
    git commit -m "$1"
}

get_current_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

git_pull_ocb() {
    git pull origin $(get_current_branch)
}

git_push_ocb() {
    if [[ $(git branch -r | grep "$issue_number") ]]; then
        git pull origin $(get_current_branch)
    fi
    git push origin $(get_current_branch)
}

alias g="git"
alias cb="get_current_branch"
alias gb="g branch"
alias gck="g checkout"
alias gpo="g push origin"
alias gpocb="git_push_ocb"
alias gplocb="git_pull_ocb"
alias gplom="git pull origin master"
alias gplo="g pull origin"
alias gs="git status"
alias gd="git diff"

# Linux
alias ptj="python -mjson.tool"
alias ll="ls -l"
