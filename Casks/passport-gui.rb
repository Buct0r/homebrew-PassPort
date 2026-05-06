cask "passport-gui" do
  version "0.1.1"
  sha256 :arm64 => "d382fcaea20f20c61c06b6c608abe25d2c845ad8e371d9676f6ca1bd53e1efa0"

  url "https://github.com/Buct0r/PassPort/releases/download/v0.1.1/PassPort-gui-0.1.1-darwin-arm64.tar.gz"
  name "PassPort GUI"
  desc "A secure password manager with graphical interface"
  homepage "https://github.com/Buct0r/PassPort"

  on_arm do
    artifact "PassPort.app", target: "PassPort.app"
  end

  on_intel do
    url "https://github.com/Buct0r/PassPort/releases/download/v0.1.1/PassPort-gui-0.1.1-darwin-amd64.tar.gz"
    sha256 :intel => "59968fcabd22c03e720de2a11a6817ee4c33247e13229e35a7932ede808958fd"
  end

  app "PassPort.app"

  zap trash: [
    "~/Library/Application Support/PassPort",
    "~/Library/Preferences/com.passport.*",
    "~/Library/Caches/passport",
  ]
end
