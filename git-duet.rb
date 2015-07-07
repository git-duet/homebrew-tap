class GitDuet < Formula
  homepage 'https://github.com/git-duet/git-duet'
  url 'https://github.com/git-duet/git-duet/releases/download/0.1.0/darwin_amd64.tar.gz'
  sha256 '47e33a01b21aa940a7f8a9551aabb75b275fe65c08398ea417994df6e851195a'
  version '0.1.0'

  depends_on :arch => :x86_64

  def install
    %w( git-duet git-duet-commit git-duet-install-hook git-duet-pre-commit git-solo).each do |exe|
      bin.install exe
    end
  end

  test do
    system 'git duet -h'
  end
end
