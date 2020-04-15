<?php 
class Myfunction{

    public function __construct(){
        echo "Myfunction constructor ";
    }
    
        
    
    private $ciphering = "AES-128-CTR";
    // Use OpenSSl Encryption method 
    //protected $iv_length = openssl_cipher_iv_length($ciphering); 
    private $options = 0;
    // Non-NULL Initialization Vector for encryption 
    private  $encryption_iv = 'sumanrajakbarali';
    // Store the encryption key 
    private  $encryption_key = "hrxtrfktcvx8qchd7pthkyypb";
    public function myencryption($simple_string)
    {
        return openssl_encrypt(
            $simple_string,
            $this->ciphering,
            $this->encryption_key,
            $this->options,
            $this->encryption_iv
        );
    }

    public function mydencryption($encrypted_string)
    {
        // Use openssl_decrypt() function to decrypt the data 
        return openssl_decrypt(
            $encrypted_string,
            $this->ciphering,
            $this->encryption_key,
            $this->options,
            $this->encryption_iv
        );
    }
}
?>