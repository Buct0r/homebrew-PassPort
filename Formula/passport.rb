class Passport < Formula
  desc "A secure password manager CLI for macOS and Linux"
  homepage "https://github.com/Buct0r/PassPort"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Buct0r/PassPort/releases/download/v0.1.1/PassPort-cli-0.1.1-darwin-arm64.tar.gz"
      sha256 "3aee895a4a4748aef9647c66fd8818175880460d6d6cf1d1cb1b20eb254da3ab"
    else
      url "https://github.com/Buct0r/PassPort/releases/download/v0.1.1/PassPort-cli-0.1.1-darwin-amd64.tar.gz"
      sha256 "3aee895a4a4748aef9647c66fd8818175880460d6d6cf1d1cb1b20eb254da3ab"
    end
  end

  on_linux do
    url "https://github.com/Buct0r/PassPort/releases/download/v0.1.1/PassPort-cli-0.1.1-linux-amd64.tar.gz"
    sha256 "3aee895a4a4748aef9647c66fd8818175880460d6d6cf1d1cb1b20eb254da3ab"
  end

  def install
    bin.install "PassPort-cli" => "passport"
  end

  test do
    system "#{bin}/passport", "--version"
  end
end
