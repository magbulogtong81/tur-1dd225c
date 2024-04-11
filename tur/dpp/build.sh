TERMUX_PKG_HOMEPAGE=https://dpp.dev
TERMUX_PKG_DESCRIPTION="D++ is a lightweight and simple library for Discord written in modern C++."
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@OrdinaryEnder"
TERMUX_PKG_VERSION="10.0.24"
TERMUX_PKG_SRCURL=https://github.com/brainboxdotcc/dpp/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="libc++, libopus, libsodium, openssl, zlib"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_SHA256=e5d561b864a7397caeb5616d388ebbd79a8f21077f3b13ac6ccd7e29c746daa9

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DRUN_LDCONFIG=OFF
"

termux_step_pre_configure() {
	termux_setup_cmake
}
