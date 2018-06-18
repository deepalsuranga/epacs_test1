<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment gateway</title>
    </head>
    <body>
        <h1>Pay pal Gateway</h1>
        <form action="${initParam['posturl']}" method="POST">
            <input type="hidden" name="upload" value="1"/><br/>
            <input type="hidden" name="return" value="${initParam['returnurl']}"/><br/>
            <input type="hidden" name="cmd" value="_cart"/><br/>
            <input type="hidden" name="currency_code" value="JPY"/><br/>
            <input type="hidden" name="business" value="${initParam['business']}"/><br/>
            <input type="hidden" name="shopping_url" value="${initParam['shopping_url']}"/><br/>

            <input type="text" name="item_name_1" value="Product 1"/><br/>
            <input type="text" name="amount_1" value="10"/><br/>
            <input type="text" name="quantity_1" value="1"/><br/>
            <!--<input type="submit" value="Payment"/>-->

            <input type="image" name="submit" src="paypal_buttons_master.png" alt="PayPal - The safer, easier way to pay online">

        </form>

    </body>
</html>
