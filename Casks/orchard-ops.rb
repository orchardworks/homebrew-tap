cask "orchard-ops" do
  version "0.3.0"
  sha256 "a340bae1ed9a75220f0520e1a8df9b54d1bd3504c13b19bf180a14bc6b7d8900"

  url "https://github.com/shinout/orchard-ops-site/releases/download/v#{version}/OrchardOps.dmg"
  name "Orchard Ops"
  desc "Schedule scripts and commands on your Mac with a visual timeline"
  homepage "https://orchard-ops.com/"

  livecheck do
    url "https://orchard-ops.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Orchard Ops.app"

  zap trash: [
    "~/Library/Application Support/OrchardOps",
    "~/Library/Preferences/com.orchard-ops.OrchardOps.plist",
  ]
end
