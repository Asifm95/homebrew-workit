class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.2/workit-darwin-arm64"
      sha256 "71aff082b9433eb890331526df11bc90af246043179c303b29fa275938833ff6"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.2/workit-darwin-x64"
      sha256 "7ce5f05feaa9fc607a81370564f24ceda28625dcf75da8da8ad0d8bf00335f07"
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
