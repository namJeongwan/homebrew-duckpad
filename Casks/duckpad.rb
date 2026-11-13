cask "duckpad" do
  version "0.18.1"
  sha256 "d33466534d2519b82ba06240dc67c466191a6a58df3558c238741634d09ef6de"

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
