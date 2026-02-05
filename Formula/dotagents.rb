class Dotagents < Formula
  desc "CLI for managing agents assets from a canonical dotagents repo"
  homepage "https://github.com/moehaje/dotagents#readme"
  url "https://registry.npmjs.org/@artsnlabs/dotagents/-/dotagents-0.1.0.tgz"
  sha256 "3c58c2ec61f2aa09e37403429e75459c9dfae2fd51fa95e17475f699c9261a5f"
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
