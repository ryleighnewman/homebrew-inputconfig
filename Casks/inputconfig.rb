cask "inputconfig" do
  version "1.6"
  sha256 "462bdf2d0b93f1b2257349c7c555256ac26d57a5acb8c5d2930f22c5eafe7f1a"

  url "https://github.com/ryleighnewman/homebrew-inputconfig/releases/download/v#{version}-32/InputConfig-#{version}.zip"
  name "InputConfig"
  desc "Controller mapper: map gamepad buttons and sticks to keys and the mouse"
  homepage "https://inputconfig.com"

  depends_on macos: :sonoma

  app "InputConfig.app"

  caveats <<~EOS
    On first launch, allow InputConfig in System Settings > Privacy & Security >
    Accessibility so it can send keys and move the pointer.

    If the Mac App Store copy is already in /Applications, quit and remove it first;
    both copies share the same presets.
  EOS

  zap trash: [
    "~/Library/Application Scripts/com.inputconfig.app",
    "~/Library/Containers/com.inputconfig.app",
  ]
end
