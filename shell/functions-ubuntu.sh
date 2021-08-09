function package_is_installed() {
    dpkg -s "$1" &> /dev/null
}

function install_package() {

    declare -r EXTRA_ARGUMENTS="$3"
    declare -r PACKAGE="$2"
    declare -r PACKAGE_READABLE_NAME="$1"

    if ! package_is_installed "$PACKAGE"; then
        sudo apt-get install --allow-unauthenticated -qqy "$PACKAGE"
    else
        print_success "$PACKAGE_READABLE_NAME"
    fi

}
