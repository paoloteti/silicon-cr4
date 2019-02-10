set -euxo pipefail

main() {
    GCC_ARM=https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2

    case $TARGET in
        arm*v7r-none-eabi*)
            rustup target add $TARGET
            ;;
        *)
            mkdir gcc
            curl -L $GCC_ARM | tar --strip-components=1 -C gcc -xj
            ;;
    esac
}

main
