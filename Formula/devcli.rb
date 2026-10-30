class Devcli < Formula
  desc "Homebrew test CLI"
  homepage "https://example.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.1.0/devcli-darwin-arm64.tar.gz"
      sha256 "617d5dc8ffe8bec187b799647ef2924a605ee49cc77820c0c05a53fddb3fbbf6"
    end
    on_intel do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.1.0/devcli-darwin-x64.tar.gz"
      sha256 "845d48aa03777878a2aece084293c67f768c11743768411bcef50595f41af884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.1.0/devcli-linux-arm64.tar.gz"
      sha256 "da3b6d9fad4ee3c91e4576703dce1973ba23db2d22513a329149d16bbf095c98"
    end
    on_intel do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.1.0/devcli-linux-x64.tar.gz"
      sha256 "9ad2d5440bd437e117eb9e9796876c1d4d9965966ae9051a8797639f7b4fe8e0"
    end
  end

  def install
    bin.install "devcli"
    man1.install Dir["man/*.1"]
    generate_completions_from_executable(bin/"devcli", "completion")
  end

  test do
    system bin/"devcli", "--help"
  end
end
