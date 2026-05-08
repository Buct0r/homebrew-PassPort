class PassportCli < Formula
  desc "A secure password manager CLI for macOS and Linux"
  homepage "https://github.com/Buct0r/PassPort"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-darwin-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-darwin-amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-linux-amd64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "passport-cli"
  end

  test do
    system "#{bin}/passport-cli", "--version"
  end
end
