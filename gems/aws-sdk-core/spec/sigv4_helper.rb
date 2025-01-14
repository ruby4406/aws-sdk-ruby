module Sigv4Helper
  # perhaps belongs in an AuthHelper but we mainly check Sigv4 these days
  def expect_auth(auth_scheme, region: nil, credentials: nil)
    if auth_scheme['name'] == 'sigv4a'
      stub_const(
        'Aws::Plugins::Sign::SUPPORTED_AUTH_TYPES',
        Aws::Plugins::Sign::SUPPORTED_AUTH_TYPES + ['sigv4a']
      )
    end
    expect(Aws::Plugins::Sign).to receive(:signer_for).and_wrap_original do |m, *args|
      expect(args.first).to include(auth_scheme)
      expect(args[2]).to eq(region) if region
      expect(args[3]).to eq(credentials) if credentials

      if auth_scheme['name'] == 'sigv4a'
        mock_signature = Aws::Sigv4::Signature.new(headers: {})
        signer = double('sigv4a_signer', sign_request: mock_signature)
        region = region || args.first['signingRegionSet'].join(',')

        expect(Aws::Sigv4::Signer).to receive(:new)
          .with(hash_including(signing_algorithm: :sigv4a, region: region))
          .and_return(signer)
      end

      m.call(*args)
    end
  end
end
