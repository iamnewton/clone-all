#!/usr/bin/env roundup

describe "clone-all(1): general"

clone="$PWD/bin/clone-all"
user="404"

it_prints_help_short_form() {
    usage=$($clone -h | head -n 2 | tail -n 1)
    test "$usage" = "Options:"
}
it_prints_help_long_form() {
    usage=$($clone --help | head -n 2 | tail -n 1)
    test "$usage" = "Options:"
}
it_prints_version_short_form() {
    version=$($clone -v | cut -d ' ' -f 1)
    test "$version" = "Version"
}
it_prints_version_long_form() {
    version=$($clone --version | cut -d ' ' -f 1)
    test "$version" = "Version"
}
it_errors_non_existent_flag() {
    status=$(set +e ; $clone --bad-flag &>/dev/null ; echo $?)
    test 1 -eq $status
}
it_errors_bad_user() {
    status=$(set +e ; $clone $user &>/dev/null ; echo $?)
    test 1 -eq $status
}
