class Apns < Formula
  desc "A command line tool to send push notifications using the Apple Push Notification Service."
  homepage "https://github.com/tdimeco/apns"
  license "MIT"
  url "https://github.com/tdimeco/apns.git",
      tag:      "1.0.1",
      revision: "a9d20130dd07182c9f357f53b9f06f262b67acaa"
  head "https://github.com/tdimeco/apns.git", branch: "main"

  depends_on :macos
  depends_on macos: :ventura
  depends_on xcode: ["15.4", :build]

  def install
    system "make", "build-homebrew"
    system "make", "install", "INSTALL_PATH=#{prefix}/bin"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/apns --version").chomp
  end
end
