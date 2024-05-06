<?php


use PHPUnit\Framework\TestCase;
use GuzzleHttp\Client;


class CheckoutTest extends TestCase
{
    private $httpClient;


    protected function setUp(): void
    {
        parent::setUp();
        $this->httpClient = new Client();
    }


   
    public function testNormalCheckout()
    {
        $postData = [
            'payment' => [
                'cardnumber' => '1234567890123456',
                'cvc_code' => '123',
                'expairy_year' => '25'
            ]
        ];
       


       
        $response = $this->httpClient->post('http://localhost/payment1.php', ['form_params' => $postData]);


       
        $this->assertEquals(200, $response->getStatusCode());
        $this->assertContains('Order placed successfully', $response->getBody()->getContents());
    }
}
