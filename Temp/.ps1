# msixmgr.exe -Unpack -packagePath <package>.msix -destination "f:\<name of folder you created earlier>" -applyacls 


<#Author       : Dean Cefola
# Creation Date: 11-19-2019
# Usage        : Self-Signed Certificates
#
#********************************************************************************
# Date                         Version      Changes
#------------------------------------------------------------------------
# 11/19/2019                     1.0        Intial Version
#

#*********************************************************************************
#
#>

$cert = New-SelfSignedCertificate -CertStoreLocation Cert:\LocalMachine\My -DnsName fuhr.de -Type CodeSigningCert -Subject sub-fuhr -Verbose
$cert
$secPassword = ConvertTo-SecureString -String Birne-3467 -Force -AsPlainText
$certPath = "Cert:\LocalMachine\My\$($Cert.Thumbprint)"
Export-PfxCertificate -Cert $certPath -FilePath 'C:\temp\fuhr-CodeSigning.pfx' -Password $secPassword

# Import-PfxCertificate -Password $secPassword -FilePath 'C:\temp\WVD\MSIX\Code Signing Cert\MSAzureAcademy CodeSigning.pfx' -CertStoreLocation 'Cert:\LocalMachine\TrustedPublisher'