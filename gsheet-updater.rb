require 'formula'

class GsheetUpdater < Formula
  desc 'gsheet-updater'
  homepage 'https://github.com/gogolok/gsheet-updater'
  version 'v1.1.0'

  if OS.mac?
    url 'https://github.com/gogolok/gsheet-updater/releases/download/v1.1.0/gsheet-updater-macos'
    sha256 'd90b6970854f7a970cb2a44ccc016bf9def8e5bc2470a63998c73e23f4dcf2f8'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'gsheet-updater-macos' => 'gsheet-updater'
  end

  test do
    system "#{bin}/gsheet-updater"
  end
end
