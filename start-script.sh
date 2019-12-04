#!/bin/sh

echo "Running Start Script, waiting..."

sleep 30

# Setup WordPress
wp core install \
    --path=/var/www/html \
    --url=localhost \
    --title=test \
    --admin_user=test \
    --admin_password=test \
    --admin_email=test@example.com

# Install WooCommerce plugin
wp plugin install woocommerce
wp plugin activate woocommerce

# Install WooCommerce Germanized plugin
wp plugin install woocommerce-germanized
wp plugin activate woocommerce-germanized

# Install Query Monotor for debugging
wp plugin install query-monitor
wp plugin activate query-monitor
