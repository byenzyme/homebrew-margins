class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/useenzyme/margins"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/useenzyme/margins/releases/download/v0.1.0/margins-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "3e04082ad6284b57049d9986e21d4c0600d03cfe7679fafa2641beb21d2ed535"
  else
    url "https://github.com/useenzyme/margins/releases/download/v0.1.0/margins-0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "798a6b4fdae00ed4c99dcc9475d32083a2c0add5d45a173e59ee446fcff9834a"
  end

  depends_on :macos

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help")
  end
end
