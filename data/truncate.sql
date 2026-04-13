-- =============================================================================
--  E-COMMERCE MARKETPLACE — Truncate Script
--  Limpa todos os dados mantendo o schema intacto.
--  Ordem inversa das FKs para evitar constraint violations.
-- =============================================================================

USE ecommerce_marketplace;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

TRUNCATE TABLE payout;
TRUNCATE TABLE seller_balance;
TRUNCATE TABLE settlement;
TRUNCATE TABLE applied_fee;
TRUNCATE TABLE charge_status_history;
TRUNCATE TABLE charge;
TRUNCATE TABLE payment;
TRUNCATE TABLE order_status_history;
TRUNCATE TABLE order_item;
TRUNCATE TABLE order_address;
TRUNCATE TABLE orders;
TRUNCATE TABLE fee_rule;
TRUNCATE TABLE product_category;
TRUNCATE TABLE product_image;
TRUNCATE TABLE product_variant;
TRUNCATE TABLE product;
TRUNCATE TABLE category;
TRUNCATE TABLE seller_address;
TRUNCATE TABLE address;
TRUNCATE TABLE seller;
TRUNCATE TABLE customer;
TRUNCATE TABLE user;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

-- =============================================================================
-- Para recarregar os dados após o truncate:
--   SOURCE ecommerce_marketplace_data.sql
-- =============================================================================