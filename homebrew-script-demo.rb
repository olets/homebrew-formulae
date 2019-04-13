class HomebrewScriptDemo < Formula
  desc "First Homebrew formula"
  homepage "https://github.com/olets/homebrew-script-demo"
  url "https://github.com/olets/homebrew-script-demo/releases/download/homebrew-script-demo-1.0.0/homebrew-script-demo-1.0.0.tar.gz"
  sha256 "aba1e5d4f4116d4975a4e3b26676d53c71d704884fc894ebe11991c9b9fa325f"

  def install
    bin.install "olets-test-homebrew"
  end

  test do
    assert_equal %x('#{bin}/olets-test-homebrew'), "this is a test of homebrew\n"
  end
end
