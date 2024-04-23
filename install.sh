# My install script to be run on a fresh machine to get
# all of my apps and configuration files installed

#!/usr/local/env bash

# copy bash_profile to home directory
cp ./bash_profile ~/.bash_profile

# load bash_profile
source ~/.bash_profile

# copy ghci configuration to home directory
cp ./ghci ~/.ghci

# Symlink the useful Screen Sharing app
ln -s "/System/Library/CoreServices/Applications/Screen Sharing.app" "/Applications/Screen Sharing.app"

# Create ~/Developer directory for all my programming
mkdir -p ~/Developer

# Get Xcode
( xcode-select --version ||
  xcode-select --install ||
  xcode-select --license );

# Download homebrew package manager (http://brew.sh)
(brew --version ||
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ) &&

brew install aom aribb24 bazel brotli ca-certificates cairo capstone &&
brew install cjson cloc cmake colima cowsay curl dav1d docker-completion doxygen &&
brew install dtc dylibbundler figlet ffmpeg flac fmt fontconfig fpm freetype frei0r;

brew install fribidi gcc gettext gh ghcup giflib git git-lfs glfw glib gmp &&
brew install gnutls graphite2 harfbuzz haskell-stack highway hiredis hwloc icu4c &&
brew install imath isl jpeg-turbo jpeg-xl jsoncpp;

brew install lame leptonica libarchive libass libb2 libbluray libevent libidn2 &&
brew install libmicrohttpd libmpc libnghttp2 libogg libpng librist libsamplerate &&
brew install libslirp libsndfile libsodium libsoxr libssh libssh2 libtasn1 libtermkey libtiff;

brew install libunibreak libunistring libusb libuv libvidstab libvmaf libvorbis libvpx &&
brew install libvterm libx11 libxau libxcb libxdmcp libxext libxrender lima little-cms2 &&
brew install llvm luajit luv lz4 lzo mbedtls meson;

brew install molten-vk mpdecimal mpfr mpg123 msgpack ncurses neovim nettle ninja numpy &&
brew install nushell odin openblas opencore-amr openexr openjdk openjpeg openldap openssl &&
brew install openvino opus p11-kit pandoc pango pcre2;

brew install pixman premake pugixml python-packaging python qemu rav1e raylib &&
brew install readline rtmpdump rubberband rustup-init screenfetch sdl2 sl snappy speex &&
brew install sqlite srt svt-av1 tbb tesseract theora tree-sitter;

brew install unbound unibilium valijson vcpkg vde vulkan-headers vulkan-loader &&
brew install vulkan-profiles vulkan-utility-libraries webp wget x264 x265 xvid xz &&
brew install z3 zig zimg zstd;


# My general apps
brew install --cask activitywatch appcleaner backblaze battery battle-net &&
brew install --cask bfxr blender blockbench chromium cursor discord docker &&
brew install --cask dotnet-sdk epic-games firefox git-credential-manager godot &&
brew install --cask itch iterm2 krita lmms notion obsidian openemu parsec steam && 
brew install --cask steamcmd transmission visual-studio-code whisky wine-stable zed zoom;

# Update
update;
