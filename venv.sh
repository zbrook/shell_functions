# simple wrapper for virtualenv for minds with simpler tastes than pipenv.
# If doesn't exist, create 'venv'. If exists but not sourced, activate. If active, deactivate.
venv () {
    if [[ "$VIRTUAL_ENV" != "" ]]
    then
            deactivate
    elif [[ -d "venv" ]]
    then
        source venv/bin/activate
    else
        virtualenv venv
        source venv/bin/activate
    fi
}
