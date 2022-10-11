CREATE TABLE `data_platform_supplier_item_data`
(
    `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
    `SupplierInvoice`                int(10) NOT NULL,
    `SupplierInvoiceItem`            int(6) NOT NULL,
    `OrderID`                        int(10) DEFAULT NULL,      -- 名称変更
    `OrderItem`                      int(6) DEFAULT NULL,       -- 名称変更
    `Plant`                          varchar(4) DEFAULT NULL,
    `TaxCode`                        varchar(2) DEFAULT NULL,
    `DocumentCurrency`               varchar(5) DEFAULT NULL,
    `SupplierInvoiceItemAmount`      varchar(13) DEFAULT NULL,
    `OrderQuantityUnit`              varchar(3) DEFAULT NULL,    -- 名称変更
    `QuantityInPurchaseOrderUnit`    varchar(3) DEFAULT NULL,
    `PurchaseOrderPriceUnit`         varchar(3) DEFAULT NULL,
    `QtyInPurchaseOrderPriceUnit`    varchar() DEFAULT NULL,
    `SupplierInvoiceItemText`        varchar(100) DEFAULT NULL,
    `OrderItemCategory`              varchar(4) DEFAULT NULL,  
    `GLAccount`                      varchar(10) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `SupplierInvoice`, `SupplierInvoiceItem`),
    CONSTRAINT `DataPlatformSupplierInvoiceItemData_fk` FOREIGN KEY (`BusinessPartner`, `SupplierInvoice`) REFERENCES `data_platform_supplier_invoice_header_data` (`BusinessPartner`, `SupplierInvoice`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
