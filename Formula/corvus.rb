class Corvus < Formula
  desc "MCP server for reverse engineering .NET assemblies and native binaries"
  homepage "https://github.com/Albasha0x0/Corvus"
  version "2.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.9.0/corvus-osx-arm64.tar.gz"
      sha256 "13e599023c6df6f8e211ca1fd0343361e49ccf3b878dc03d43d6b8ad47640be7"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.9.0/corvus-osx-x64.tar.gz"
      sha256 "7a892d6828a09193b569accee5d4ded6d7220c182d5c6efd3bba512d200a6ab5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.9.0/corvus-linux-arm64.tar.gz"
      sha256 "1bb29604fe0ec8429ba37b20622137ab6d757e7a4a251087ca6c9a64d779da22"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.9.0/corvus-linux-x64.tar.gz"
      sha256 "27ed9e4cc4c8da17b7e863c39fee709f999626efc2371d5d8dedcdb07a8b2c9f"
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
