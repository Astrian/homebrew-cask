cask "xiaomi-hyperconnect" do
  version :latest
  sha256 :no_check

  url "https://mijia-ios-adhoc.cnbj1.mi-fds.com/mijia-ios-adhoc/hyperconnect/HyperConnect.dmg",
      verified: "mijia-ios-adhoc.cnbj1.mi-fds.com/mijia-ios-adhoc/"
  name "Xiaomi HyperConnect"
  name "小米互联服务"
  desc "Xiaomi HyperConnect app (“device interconnection service”), used for file transfer between your macOS device and Xiaomi phone or tablets."
  homepage "https://hyperos.mi.com/continuity"

  depends_on macos: ">= :monterey"

  app "小米互联服务.app"

  zap trash: [
    "~/Library/Application Support/HyperConnect",
    "~/Library/Preferences/com.xiaomi.hyperconnect.plist",
  ]
end
