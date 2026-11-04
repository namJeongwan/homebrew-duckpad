cask "duckpad" do
  version "0.17.0"
  sha256 "fe240082fd8623105e812ba9b3e5cbea7d0dbfb88ac3d6967882ef31a1e599c6"

  url "https://github.com/namJeongwan/duckpad/releases/download/v#{version}/Duckpad-#{version}-universal.zip"
  name "Duckpad"
  desc "Text and code editor inspired by Notepad++"
  homepage "https://github.com/namJeongwan/duckpad"

  auto_updates true
  depends_on macos: :ventura

  app "Duckpad.app"

  caveats <<~EOS
    Duckpad is ad-hoc signed and is not notarized by Apple.
    macOS may block the first launch. After attempting to open Duckpad,
    allow it in System Settings > Privacy & Security > Open Anyway.
  EOS
end
