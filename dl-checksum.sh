#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://storage.googleapis.com/skaffold/releases

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local platform="$os-$arch"
    local url=$MIRROR/$ver/skaffold-${platform}
    local lfile=$DIR/skaffold-${platform}-${ver}

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver linux amd64
    dl $ver linux arm64
}

dlver ${1:-v2.14.1}
