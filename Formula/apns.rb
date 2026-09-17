class Apns < Formula
  desc "A command line tool to send push notifications using the Apple Push Notification Service."
  homepage "https://github.com/tdimeco/apns"
  license "MIT"
  url "https://github.com/tdimeco/apns.git",
      tag:      "1.0.2",
      revision: "61369cab776235258e4860bd99b98f62a712d786"
  head "https://github.com/tdimeco/apns.git", branch: "main"

  depends_on :macos

  on_macos do
    depends_on macos: :sonoma
    depends_on xcode: ["27.0", :build]
  end

  def install
    system "make", "build-homebrew"
    system "make", "install", "INSTALL_PATH=#{prefix}/bin"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/apns --version").chomp
  end
end
