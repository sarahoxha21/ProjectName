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


   
    public function testEmptyShoppingCart()
    {
        // No items added to the shopping cart so no POST data is sent


       
        $response = $this->httpClient->post('http://localhost/payment1.php', ['form_params' => []]);


       
        $this->assertNotEquals(200, $response->getStatusCode());
       
        $this->assertContains('Your shopping cart is empty', $response->getBody()->getContents());
    }
}
?>
