// Api to server
const host                = "http://127.0.0.1:8000/";
const api_uri             = "${host}api/";
const api_login           = "${api_uri}login";
const api_register        = "${api_uri}register";
const api_confirm         = "${api_uri}check-register-code";
const api_logout          = "${api_uri}logout";
const api_list_products   = "${api_uri}products/list";
const api_products_detail = "${api_uri}products/item/";
const api_search          = "${api_uri}products/filter-search?textSearch=";
const api_list_categories = "${api_uri}categories/list";
const api_list_brand      = "${api_uri}brand/list";
const api_list_banner     = "${api_uri}banner";
const api_update_avatar   = "${api_uri}user/avatar";
const api_update_user     = "${api_uri}user/update";
const api_orders          = "${api_uri}orders";

// Api to stripe
const stripePublishableKey= "pk_test_51LxN7XGJqKLBeEi3fUQfPStpw4vkGAt0Z1EruqdRWz1xFOpqLsuMAGnosRvbSaW4aK6SCIdhkLkzfiXiAzJwWVPy00HmU1z5VX";
const stripeSeretKey      = "sk_test_51LxN7XGJqKLBeEi3xrkicBrbKyqD0vDRkri353VbQgWgruqFQhMmW7uzbczYGX4DBhkbdTEiFz2wGeS15aAoFtmc007OJxtbLr";
const payment_intents_url = "api.stripe.com/v1/payment_intents";
const payment_test_mode   = true; // test mode or live mode payment

// global style
const default_margin = 15.0; // safe area to left, right
const bottom_button = 30.0; // margin or pading button at bottom screen


// Database
const db_name = "food.db";