class Awstui < Formula
  desc "Terminal UI for the AWS Console"
  homepage "https://github.com/mb-dot-dev/aws-console-tui"
  version "0.1.0"
  url "https://github.com/mb-dot-dev/aws-console-tui/releases/download/v0.1.0/awstui-0.1.0-osx-arm64.tar.gz"
  sha256 "43a1eb6f50c9d6e8a336e7bbeadbc245224ecf13d9a2e587aa2477c3e5dd2cb8"
  depends_on macos: :big_sur
  depends_on arch: :arm64

  def install
    bin.install "awstui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awstui --version")
  end
end
