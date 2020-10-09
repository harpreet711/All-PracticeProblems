declare -A sound
sound[dog]="bark"
sound[cow]="moo"
sound[bird]="tweet"
sound[wolf]="howl"
echo ${sound[dog]}
unset sound[bird]
echo ${sound[@]}
