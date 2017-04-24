class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.5.2"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.2/darwin_amd64.tar.gz"
    sha256 "aa2aeb451a989bf86504cc569b1a2f53a9971711c6dfb28cda7ae4f50c6334a0"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.2/linux_amd64.tar.gz"
    sha256 "936fa5f31e94112f1499ac950320f8e7279e38530b56ed7615b3280514763a3c"
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
