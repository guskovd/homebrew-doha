class Doha < Formula
  # Update these values as needed as new versions are released
  current_version="1.0.16"
  # current_release="20190115004751"
  # current_sha256="3207e4369795f13b80088210ddfdb679be45351e1c70e5e872d0830c12fd6a76"

  # Installing "openssl" ensures there's a certificate chain at
  # `/usr/local/etc/openssl/cert.pem`, which our OpenSSL library needs
  # in order to work.
  #
  # Users can install using `--without-openssl` if they don't want
  # this, in which case, they'll need to set `SSL_CERT_FILE` and / or
  # `SSL_CERT_DIR` to appropriate values.
  depends_on "openssl" => :recommended

  desc "The Doha command line application"
  homepage "https://github.com/guskovd/doha"
  url "https://github.com/guskovd/doha/releases/download/v#{current_version}/doha_darwin_amd64"
  version current_version

  # sha256 current_sha256.downcase

  def install
    # system "cp", "doha_darwin_amd64", bin/"doha"
    prefix.install "doha_darwin_amd64", "doha"
  end

  test do
    `#{bin}/doha --version`
  end
end
