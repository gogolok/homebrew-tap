require 'formula'

class GsheetUpdater < Formula
  desc 'gsheet-updater'
  homepage 'https://github.com/gogolok/gsheet-updater'
  version 'v1.4.0'

  if OS.mac?
    url 'https://github.com/gogolok/gsheet-updater/releases/download/v1.4.0/gsheet-updater-macos'
    sha256 'd9bc9c200130f7c80c5b5fca7eff9e1a24bd8cf7612cbe8af898715d8b03115e'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'gsheet-updater-macos' => 'gsheet-updater'
  end

  test do
    system "#{bin}/gsheet-updater"
  end
end
