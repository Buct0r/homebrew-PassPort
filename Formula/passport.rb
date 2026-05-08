class Passport < Formula
  desc "A secure password manager for macOS (GUI + CLI)"
  homepage "https://github.com/Buct0r/PassPort"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-gui-0.2.0-darwin-arm64.tar.gz"
      sha256 "07cfaf16e588605e772aea3d47cd0a321567a50c70f1e1e53a180fdaed829a17"

      resource "cli" do
        url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-darwin-arm64.tar.gz"
        sha256 ""
      end
    else
      url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-gui-0.2.0-darwin-amd64.tar.gz"
      sha256 "443573c96ead2c1afaa5380ef7a812571158b9044b494333c0b81f5df25673fd"

      resource "cli" do
        url "https://github.com/Buct0r/PassPort/releases/download/v0.2.0/PassPort-cli-0.2.0-darwin-amd64.tar.gz"
        sha256 ""
      end
    end
  end

  def install
    bin.install "passport"
    resource("cli").stage { bin.install "passport-cli" }
  end

  test do
    system "#{bin}/passport", "--version"
  end
end
