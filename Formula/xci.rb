class Xci < Formula
  desc "Local GitHub Actions runner UX powered by act"
  homepage "https://github.com/moehaje/xci#readme"
  url "https://registry.npmjs.org/@artsnlabs/xci/-/xci-0.1.6.tgz"
  sha256 "44f2bd87503c13bc428c4f61eda8849389e293b1e3f87278d0731db2c6b51df1"
  license "MIT"

  depends_on "act"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xci --version")
    assert_match "run", shell_output("#{bin}/xci --help")
  end
end
