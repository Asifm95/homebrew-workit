class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.4.0/workit-darwin-arm64"
      sha256 "6e681c268a7c785454dbee11500d6ad27b440784c225df57b321da5d36d695e4"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.4.0/workit-darwin-x64"
      sha256 "8b14c355e722c737775b1edca4c0127b7fee6ee505f3e4b43abe826aee48d132"
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
