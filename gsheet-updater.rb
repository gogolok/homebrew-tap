require 'formula'

class GsheetUpdater < Formula
  desc 'gsheet-updater'
  homepage 'https://github.com/gogolok/gsheet-updater'
  version 'v1.2.0'

  if OS.mac?
    url 'https://github.com/gogolok/gsheet-updater/releases/download/v1.2.0/gsheet-updater-macos'
    sha256 '9c61714dc20af37ee3529f836ec6c54bbf5b9d401e13aefda49d17d6872a3e64'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'gsheet-updater-macos' => 'gsheet-updater'
  end

  test do
    system "#{bin}/gsheet-updater"
  end
end
