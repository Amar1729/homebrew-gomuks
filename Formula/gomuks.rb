class Gomuks < Formula
  desc "Terminal Matrix client written in Go"
  homepage "https://github.com/tulir/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.3.tar.gz"
  sha256 "a21dc27175abe1f6ec220dda71cec69f6abc982f60237e35100a366934fd9185"
  license "AGPL-3.0"

  bottle do
    root_url "https://github.com/Amar1729/homebrew-gomuks/releases/download/gomuks-0.2.3"
    sha256 cellar: :any,                 catalina:     "1e4a01a594a945e54052b57bf2e1983e5cc7b4d4e0503f10ef2d36054b63513b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "31d2594a1c0615f34b0231b5ab9b8ae736d0b4e3e50daf64b30bec89bf7e63b0"
  end

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
