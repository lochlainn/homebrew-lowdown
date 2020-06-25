class Lowdown < Formula
  desc "Simple markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://github.com/kristapsdz/lowdown/archive/VERSION_0_7_1.tar.gz"
  sha256 "a49a5b77f4d7b3f37c5848858997fa3759e45d7846a6d32e4b5e1dc2a65373ce"

  def install
    system "./configure", "PREFIX=#{prefix}",
                          "INCLUDEDIR=#{include}",
                          "BINDIR=#{bin}",
                          "LIBDIR=#{lib}",
                          "MANDIR=#{man}"
    system "make", "install"
  end

  test do
    assert_equal "<h1 id=\"Lowdown\">Lowdown</h1>\n", pipe_output("#{bin}/lowdown",
                                                                  "# Lowdown")
  end
end
