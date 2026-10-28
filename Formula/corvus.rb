class Corvus < Formula
  desc "MCP server for reverse engineering .NET assemblies and native binaries"
  homepage "https://github.com/Albasha0x0/Corvus"
  version "2.7.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.2/corvus-osx-arm64.tar.gz"
      sha256 "6a32765c50a07457bf802eadce404725f6420dd36197e5b723decceb61f7ee53"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.2/corvus-osx-x64.tar.gz"
      sha256 "a6b302f5f796de12741e78d2afa57e2b45ce6356e545b63c7a1e5c011046b995"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.2/corvus-linux-arm64.tar.gz"
      sha256 "c7e3c1ac5d2256eebebed04ea517be03a968f549b9f5b83c8fe92d5a689e1e36"
    end
    on_intel do
      url "https://github.com/Albasha0x0/Corvus/releases/download/v2.7.2/corvus-linux-x64.tar.gz"
      sha256 "295fcb56102683fd0ba94b022eae14424f976fadab7c65057d37d3a18ee9be08"
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
