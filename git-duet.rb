class GitDuet < Formula
  homepage 'https://github.com/git-duet/git-duet'
  url 'https://github.com/git-duet/git-duet/releases/download/0.5.0/darwin_amd64.tar.gz'
  sha256 '88050ceb98480a7917106180c4d81764f94db5719ad3b458b90ac7af6cee9849'
  version '0.5.0'

  depends_on :arch => :x86_64

  def install
    %w( git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-merge git-duet-pre-commit git-solo).each do |exe|
      bin.install exe
    end
  end

  test do
    system 'git duet -h'
  end
end
