<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>
</head>

<body>
    <div id="paypal-button"></div>

    <script>

        paypal.Button.render({
            env: 'production',

            locale: 'jp_JP',

            style: {
                size: 'small',
                color: 'gold',
                shape: 'pill',
                label: 'checkout'
            },

            payment: function (data, actions) {
                alert("Hi"+data);
            },

            onAuthorize: function (data, actions) {
                /*
                 * Execute the payment here
                 */
            },

            onCancel: function (data, actions) {
                /*
                 * Buyer cancelled the payment
                 */
            },

            onError: function (err) {
                alert(err);
            }
        }, '#paypal-button');
    </script>
</body>