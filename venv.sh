# simple wrapper for virtualenv for minds with simpler tastes than pipenv.
# If doesn't exist, create virtual env with argument name (default "venv"). 
# If exists but not sourced, activate. If active, deactivate.
venv () {
    let virtualEnvName
    virtualEnvName="venv"
    if [[ $1 != "" ]]
    then
        virtualEnvName=$1
    else
        virtualEnvName="venv"
    fi
    
    if [[ "$VIRTUAL_ENV" != "" ]]
    then
        deactivate
    elif [[ -d $virtualEnvName ]]
    then
        source $virtualEnvName/bin/activate
    else
        python -m venv $virtualEnvName
        source $virtualEnvName/bin/activate
    fi
}
