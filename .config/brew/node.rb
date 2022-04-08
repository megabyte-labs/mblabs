require "language/node"

class Mblabs < Formula
  desc "A CLI that provides various miscellaneous functions used in the Megabyte Labs ecosystem"
  homepage "https://megabyte.space"
  url "https://registry.npmjs.org/mblabs/-/mblabs-1.0.26.tgz"
  sha256 ""
  license "MIT"

  

  depends_on "node" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    output = shell_output("#{bin}/mblabs --help 2>&1", 1)
    assert_match "You can log in via contentful login", output
    assert_match "Or provide a management token via --management-token argument", output
  end
end
