class PassportCli < Formula
  desc "A secure password manager CLI for macOS and Linux"
  homepage "https://github.com/Buct0r/PassPort"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-darwin-arm64.tar.gz"
      sha256 "5190cd4d50a3ccb9124e444850ce9882a5d6c272fabba68a1a4763eaa55933bd"
    else
      url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-darwin-amd64.tar.gz"
      sha256 "5190cd4d50a3ccb9124e444850ce9882a5d6c272fabba68a1a4763eaa55933bd"
    end
  end

  on_linux do
    url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-linux-amd64.tar.gz"
    sha256 "5190cd4d50a3ccb9124e444850ce9882a5d6c272fabba68a1a4763eaa55933bd"
  end

  def install
    bin.install "passport-cli"
  end

  test do
    system "#{bin}/passport-cli", "--version"
  end
end
