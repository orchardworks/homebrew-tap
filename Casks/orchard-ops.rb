cask "orchard-ops" do
  version "0.3.2"
  sha256 "0a6691141cdcad49f3ed04d18623f8a45572aebf5d2f91d46ad4a4fa507595b3"

  url "https://github.com/orchardworks/orchard-ops-site/releases/download/v#{version}/OrchardOps.dmg"
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
