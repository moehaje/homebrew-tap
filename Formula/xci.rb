class Xci < Formula
  desc "Local GitHub Actions runner UX powered by act"
  homepage "https://github.com/moehaje/xci#readme"
  url "https://registry.npmjs.org/@artsnlabs/xci/-/xci-0.2.0.tgz"
  sha256 "615331a952ced420945e09d56092e50e15691bc2937fa334ffadcb3d44c3b5a0"
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
