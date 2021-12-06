require 'formula'

class GsheetUpdater < Formula
  desc 'gsheet-updater'
  homepage 'https://github.com/gogolok/gsheet-updater'
  version 'v1.5.0'

  if OS.mac?
    url 'https://github.com/gogolok/gsheet-updater/releases/download/v1.5.0/gsheet-updater-macos'
    sha256 '2b414d083ece656f099f9c92b5b07e6154384a5079de016745359d5e3d5107a5'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'gsheet-updater-macos' => 'gsheet-updater'
  end

  test do
    system "#{bin}/gsheet-updater"
  end
end
