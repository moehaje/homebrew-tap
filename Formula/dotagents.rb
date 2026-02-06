class Dotagents < Formula
  desc "Unified CLI for managing agent assets across projects and local agents"
  homepage "https://github.com/moehaje/dotagents#readme"
  url "https://registry.npmjs.org/@artsnlabs/dotagents/-/dotagents-0.3.0.tgz"
  sha256 "299d5dafc71ee4ecc2e9e90e6ebf9d144f4e5929bf0deb39018f085255349984"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotagents --version")
    assert_match "Commands", shell_output("#{bin}/dotagents --help")
  end
end
