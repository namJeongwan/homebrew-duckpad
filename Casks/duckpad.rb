cask "duckpad" do
  version "0.18.0"
  sha256 "403e506daec6ddb992aad652dcdeadfa68308b3b49150adb3c1f9780fcc7d267"

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
