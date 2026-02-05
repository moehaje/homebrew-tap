class Dotagents < Formula
  desc "CLI for managing agents assets from a canonical dotagents repo"
  homepage "https://github.com/moehaje/dotagents#readme"
  url "https://registry.npmjs.org/@artsnlabs/dotagents/-/dotagents-0.2.0.tgz"
  sha256 "d0497fe4a7992db871c3d2ebddf4ad653a1867ab5e6017fc7cf52a35519c3505"
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
