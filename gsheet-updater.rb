require 'formula'

class GsheetUpdater < Formula
  desc 'gsheet-updater'
  homepage 'https://github.com/gogolok/gsheet-updater'
  version 'v1.3.0'

  if OS.mac?
    url 'https://github.com/gogolok/gsheet-updater/releases/download/v1.3.0/gsheet-updater-macos'
    sha256 '300e47318d80d51e82d2b8aa7610a0647d90193c7b1d8fbdb6e1fb60de26b0f4'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'gsheet-updater-macos' => 'gsheet-updater'
  end

  test do
    system "#{bin}/gsheet-updater"
  end
end
