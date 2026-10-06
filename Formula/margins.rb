class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.4.17/margins-0.4.17-aarch64-apple-darwin.tar.gz"
  sha256 "6c4e0fba84d3e771463b4d41e3e91988c497eab4b308db7236f1cf93ababe579"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
    # The pinned enzyme engine margins runs. It stays off PATH so it never
    # conflicts with an `enzyme` the user installs (e.g. enzyme-cli).
    (libexec/"margins").install "enzyme"
  end

  def caveats
    <<~EOS
      Next step — finish setup (one time):
        margins setup   # downloads local models and installs the agent skills
                        # (/margins, /watermark) into Claude Code, Codex, and Cursor

      Then:
        margins new     # record a meeting
        margins note    # turn the latest meeting into a note in your agent

      To capture computer audio, grant your terminal "Screen & System Audio
      Recording" in System Settings > Privacy & Security, then restart it.
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
    assert_equal "enzyme 0.12.1\n", shell_output("#{libexec}/margins/enzyme --version")
  end
end
