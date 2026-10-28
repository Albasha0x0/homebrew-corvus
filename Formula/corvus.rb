class Corvus < Formula
  desc "MCP server for reverse engineering .NET assemblies and native binaries"
  homepage "https://github.com/Albasha0x0/Corvus"
  version "2.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.1/corvus-osx-arm64.tar.gz"
      sha256 "908e110a78cc45701e725e8297fc20b48f0b3d2a4cf2023457cdabd626c7949a"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.1/corvus-osx-x64.tar.gz"
      sha256 "7132a93c4373b521c198075aa9a67113c34add822885383ebd37dc358a1e0508"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.1/corvus-linux-arm64.tar.gz"
      sha256 "d08d25c6f19c3ad4b8154f1936b6f3105a4fe587ba4ea831871449239acb34a5"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.1/corvus-linux-x64.tar.gz"
      sha256 "339bd260a8e3bb5d4834331791174fba95125d4fe17d6b83d3fc88e22a5c1ff0"
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
