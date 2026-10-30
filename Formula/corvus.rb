class Corvus < Formula
  desc "MCP server for reverse engineering .NET assemblies and native binaries"
  homepage "https://github.com/Albasha0x0/Corvus"
  version "2.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.8.0/corvus-osx-arm64.tar.gz"
      sha256 "25056985d1848a19cf88c5d460a58d2d346cd49463fcaaf0d89e2bd8831e7e66"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.8.0/corvus-osx-x64.tar.gz"
      sha256 "75dde0a810db13a1c85fc41269c62edf30dcdbf9b4f1e710a64ccf6e072b7558"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.8.0/corvus-linux-arm64.tar.gz"
      sha256 "6f0d54638b1200dd39863fd3076431fccd8ac642ea0f2747c8ec73373b65ef4c"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.8.0/corvus-linux-x64.tar.gz"
      sha256 "a0ae45539fe0b401567b0da53eb97a00bc7be96fc922e1b2c6db57e4a1fde940"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"corvus"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/corvus version").strip
  end
end
