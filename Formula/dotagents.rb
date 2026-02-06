class Dotagents < Formula
  desc "Unified CLI for managing agent assets across projects and local agents"
  homepage "https://github.com/moehaje/dotagents#readme"
  url "https://registry.npmjs.org/@artsnlabs/dotagents/-/dotagents-0.3.1.tgz"
  sha256 "1dbed7f69feb8bfb4b5004408db489c9b62b453c4d6a1bc4e4f52670300256d2"
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
