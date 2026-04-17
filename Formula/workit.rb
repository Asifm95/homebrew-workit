class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.3.0/workit-darwin-arm64"
      sha256 "4918e2339809a8112e6bc2285f2fbe71cfa88668f3800ffe7529cb77215956ac"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.3.0/workit-darwin-x64"
      sha256 "80f94cc333ae46554ad7f6047602957ff4882d3644a38c7027f50fcba65c0238"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "workit-darwin-arm64" : "workit-darwin-x64"
    bin.install binary_name => "workit"
  end

  test do
    assert_match "workit", shell_output("#{bin}/workit --help")
  end
end
