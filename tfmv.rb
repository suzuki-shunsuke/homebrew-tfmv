# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmv < Formula
  desc "Rename Terraform resources and modules and generate moved blocks. You can rename blocks flexibly using Jsonnet.
"
  homepage "https://github.com/suzuki-shunsuke/tfmv"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.2/tfmv_darwin_amd64.tar.gz"
      sha256 "e1d390d0f94257996a3e34b2257411c55c68aa9ad4ba030ef1b913684acb6811"

      def install
        bin.install "tfmv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.2/tfmv_darwin_arm64.tar.gz"
      sha256 "6a140b103e5e9d4d7a53e011c29f8c97df93f04f839f88816e8860a7f8ca6806"

      def install
        bin.install "tfmv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.2/tfmv_linux_amd64.tar.gz"
        sha256 "5904b984956cbce5c85992bbbbaccc6662dc7c4d5b29780a3745bc1735b7c9bd"

        def install
          bin.install "tfmv"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.2/tfmv_linux_arm64.tar.gz"
        sha256 "75674d0176e6d7dac1a4be46d1914439f0b6e55677dea1d0d2c6c75bcfb28b3a"

        def install
          bin.install "tfmv"
        end
      end
    end
  end

  test do
    system "#{bin}/tfmv --version"
  end
end
