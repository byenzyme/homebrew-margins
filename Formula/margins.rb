class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.4.3/margins-0.4.3-aarch64-apple-darwin.tar.gz"
  sha256 "1d5d4177d4fd431f852da16313ea596e9c287b6415ba260a656a238adf811f94"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
