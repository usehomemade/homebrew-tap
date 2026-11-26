cask "needs-you" do
  version "1.6.0"
  sha256 "fbe0fca224e4e53262cb9cc54660e018924458f8e85092be750c41f5fb0156c3"

  url "https://github.com/usehomemade/needs-you/releases/download/v#{version}/NeedsYou-#{version}.zip"
  name "Needs You"
  desc "Lets coding agents ask you out loud and hear your spoken answer"
  homepage "https://github.com/usehomemade/needs-you"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Needs You.app"
  binary "#{appdir}/Needs You.app/Contents/Helpers/needs-you"

  zap trash: [
    "~/Library/Application Support/FluidAudio",
    "~/Library/Application Support/Needs You",
    "~/Library/Caches/dev.homemade.needs-you",
    "~/Library/HTTPStorages/dev.homemade.needs-you",
    "~/Library/Preferences/dev.homemade.needs-you.plist",
  ]
end
