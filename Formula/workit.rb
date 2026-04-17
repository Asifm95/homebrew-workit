class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.5/workit-darwin-arm64"
      sha256 "bec482d4dd448d1ab735c3cf787c0a157c81645b2bd081a468dd5ec84a05edee"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.5/workit-darwin-x64"
      sha256 "565e06b57a41f27c8c4a23d5e690a0ad49a659cbfa52356365138db0b44479c2"
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
