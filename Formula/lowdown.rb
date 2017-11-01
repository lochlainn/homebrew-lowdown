class Lowdown < Formula
  desc "Simple markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://github.com/kristapsdz/lowdown/archive/VERSION_0_3_1.tar.gz"
  sha256 "af1fe2904dd543e46ff2b19ccd601df053986f3913d5abf68ac9c62da50754ec"

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
