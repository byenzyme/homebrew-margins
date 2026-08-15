class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.4.1/margins-0.4.1-aarch64-apple-darwin.tar.gz"
  sha256 "887f285a281876ec488d557286d2e09989800cd282b71173c2080729bd242a31"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
