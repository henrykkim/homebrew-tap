# Homebrew cask for Skills Manager. Lives in the henrykkim/homebrew-tap repo as
# Casks/skills-manager.rb; copy it there and bump version + sha256 per release.
cask "skills-manager" do
  version "0.4.2"
  sha256 "9076dddebc87f57bc45d14e8eff4f4e88546e39334f0f3bea0f3d4cb5281473c"

  url "https://github.com/henrykkim/skills-manager/releases/download/v#{version}/SkillsManager-#{version}.dmg"
  name "Skills Manager"
  desc "Inventory of Claude Code skills and plugins with per-skill cheat sheets"
  homepage "https://github.com/henrykkim/skills-manager"

  # Sparkle updates the app in place; brew shouldn't fight it.
  auto_updates true
  depends_on macos: :sonoma

  app "Skills Manager.app"

  zap trash: [
    "~/Library/Preferences/com.henrykkim.SkillsManager.plist",
  ]
end
