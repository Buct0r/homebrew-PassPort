class Passport < Formula
  desc "A secure password manager CLI for macOS and Linux"
  homepage "https://github.com/Buct0r/PassPort"
  version ""
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Buct0r/PassPort/releases/download/v/PassPort-cli--darwin-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/Buct0r/PassPort/releases/download/v/PassPort-cli--darwin-amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/Buct0r/PassPort/releases/download/v/PassPort-cli--linux-amd64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "PassPort-cli" => "passport"
  end

  test do
    system "#{bin}/passport", "--version"
  end
end
