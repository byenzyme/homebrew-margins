class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.4.0/margins-0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "6c37f298ee07234acb950e5d1e48b2b478706f76f4406c561480e2fc8f240cec"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
