require 'formula'

# Require ifuse to get the base class
require "#{File.dirname __FILE__}/ifuse.rb"

class Encfs <FuseFormula
  url 'http://encfs.googlecode.com/files/encfs-1.6-1.tgz'
  homepage 'http://www.arg0.net/encfs'
  md5 'db99570557cf432cca088748944fb74a'

  depends_on 'pkg-config'
  depends_on 'gettext'
  depends_on 'boost'
  depends_on 'rlog'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
