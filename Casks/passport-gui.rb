cask "passport-gui" do
  version ""
  sha256 :arm64 => ""

  url "https://github.com/Buct0r/PassPort/releases/download/v/PassPort-gui--darwin-arm64.tar.gz"
  name "PassPort GUI"
  desc "A secure password manager with graphical interface"
  homepage "https://github.com/Buct0r/PassPort"

  on_arm do
    artifact "PassPort.app", target: "PassPort.app"
  end

  on_intel do
    url "https://github.com/Buct0r/PassPort/releases/download/v/PassPort-gui--darwin-amd64.tar.gz"
    sha256 :intel => ""
  end

  app "PassPort.app"

  zap trash: [
    "~/Library/Application Support/PassPort",
    "~/Library/Preferences/com.passport.*",
    "~/Library/Caches/passport",
  ]
end
