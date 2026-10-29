class Corvus < Formula
  desc "MCP server for reverse engineering .NET assemblies and native binaries"
  homepage "https://github.com/Albasha0x0/Corvus"
  version "2.7.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.3/corvus-osx-arm64.tar.gz"
      sha256 "02895e6f0aef39fc8e5797ccb355711c8333bf842438d084ebcc1d6fe920a5a1"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.3/corvus-osx-x64.tar.gz"
      sha256 "48a7a97e7ee5c37d92e2a895b0ffb63e1348ab6fa39b1e88893767b69c5105b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.3/corvus-linux-arm64.tar.gz"
      sha256 "bdcc46a2d10f2e7647224c574520958c3b12e3eaae981ec0d1941869b51a27e5"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.3/corvus-linux-x64.tar.gz"
      sha256 "a31783775bebb41b77e72542dfd8fc4e02f8420cfdb2a6895691d8881292033f"
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
