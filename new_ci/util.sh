function retry_cmd()
{
    local retry_times=3
    local i=0
    for((i=0;i<$retry_times;i++))
        do
        eval $@
        [[ $? -eq 0 ]] && return 0
        sleep 5
    done
    echo "retry $@ 3 times failed"
    return 1
}


