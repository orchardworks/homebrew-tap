cask "orchard-ops" do
  version "1.0.0"
  sha256 "27e78beaee6491abc63f95e66f29458e8f03b751f828f193a53e586cee695912"

  url "https://github.com/orchardworks/orchard-ops.com/releases/download/v#{version}/OrchardOps.dmg"
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
