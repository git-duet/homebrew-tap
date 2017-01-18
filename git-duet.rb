class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.5.1"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.1/darwin_amd64.tar.gz"
    sha256 "28d90acd34291fe98505f9f808cbd36d2c8cc2828a1ec6da7c699058468d2e86"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.1/linux_amd64.tar.gz"
    sha256 "0762f5845928feb04a7e43de55330feae2fd4a2f280a964e818aa336706d924d"
  end

  depends_on :arch => :x86_64

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-merge git-duet-pre-commit git-solo].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match /#{version.to_s}/, `git duet -v`.chomp
  end
end
