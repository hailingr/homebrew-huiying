cask "huiying" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "d272aaf6e169e2a5a26857bda5e30a6c0f159ef2b92302968ef8f9543c259625",
         intel: "62d5f122b2606c765dbf71dc04ef21bd9b3e091adf9b15893ed3482cf030928a"

  url "https://screen-annotato.sooolink.cn/download/huiying-#{version}-mac-#{arch}.dmg"
  name "HuiYing"
  name "绘影"
  desc "Screen recorder, screenshot tool, and live annotation app"
  homepage "https://screen-annotato.sooolink.cn/"

  depends_on macos: :ventura

  app "绘影.app"
end
