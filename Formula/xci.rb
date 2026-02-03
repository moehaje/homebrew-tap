class Xci < Formula
  desc "Local GitHub Actions runner UX powered by act"
  homepage "https://github.com/moehaje/xci#readme"
  url "https://registry.npmjs.org/@artsnlabs/xci/-/xci-0.1.4.tgz"
  sha256 "eabec8fdb4ad0408a0839a81ee3d7aefe77846a86805b9ce8090a681205859c7"
  license "MIT"

  depends_on "node"
  depends_on "act"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xci --version")
    assert_match "run", shell_output("#{bin}/xci --help")
  end
end
