# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmv < Formula
  desc "Rename Terraform resources and modules and generate moved blocks. You can rename blocks flexibly using Jsonnet.
"
  homepage "https://github.com/suzuki-shunsuke/tfmv"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.4/tfmv_darwin_amd64.tar.gz"
      sha256 "1137dbf3bfd6069f5cdbede0b779f83ee613bc629fdc7551234271f810003012"

      def install
        bin.install "tfmv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.4/tfmv_darwin_arm64.tar.gz"
      sha256 "6cc7743f86b350a6b77970a825de04412d99bca2ffce72daf85e5aa59baf7442"

      def install
        bin.install "tfmv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.4/tfmv_linux_amd64.tar.gz"
        sha256 "ccf5f1f66782688e52949379dbf93d1373d686f946c1ed1d0ca20e94b7701c9c"

        def install
          bin.install "tfmv"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.4/tfmv_linux_arm64.tar.gz"
        sha256 "b5d58737d06005249686d5fec30237437d6f216f7eba2f985e402cfcb4ca0eca"

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
