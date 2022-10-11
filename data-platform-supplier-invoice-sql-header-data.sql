CREATE TABLE `data_platform_supplier_invoice_header_data`
(
    `BusinessPartner`                int(10) NOT NULL,
    `SupplierInvoice`                int(10) NOT NULL,
    `DocumentDate`                   varchar(80) DEFAULT NULL,
    `PostingDate`                    varchar(80) DEFAULT NULL,
    `SupplierInvoiceIDByInvcgParty`  varchar(16) DEFAULT NULL,
    `InvoicingParty`                 varchar(10) DEFAULT NULL,
    `DocumentCurrency`               varchar(5) DEFAULT NULL,
    `InvoiceGrossAmount`             varchar(13) DEFAULT NULL,
    `DocumentHeaderText`             varchar(100) DEFAULT NULL,
    `PaymentTerms`                   varchar(4) DEFAULT NULL,
    `DueCalculationBaseDate`         varchar(80) DEFAULT NULL,
    `NetPaymentDays`                 int(3) DEFAULT NULL,
    `PaymentBlockingReason`          tinyint(1) DEFAULT NULL,
    `InternalFinInstAccountID`       int(10) DEFAULT NULL,       -- 新規追加
    `SupplierInvoiceStatus`          varchar(1) DEFAULT NULL,
    `AccountingExchangeRate`         varchar(9) DEFAULT NULL,    -- 名称変更
    `SupplyingCountry`               varchar(3) DEFAULT NULL,
    `PaymentMethod`                  varchar(1) DEFAULT NULL,
    `InvoiceReference`               varchar(40) DEFAULT NULL,
    `SupplierPostingLineItemText`    varchar(100) DEFAULT NULL,
    `TaxIsCalculatedAutomatically`   tinyint(1) DEFAULT NULL,
    `BusinessArea`                   varchar(4) DEFAULT NULL,
    `SupplierInvoiceIsDebitMemo`     tinyint(1) DEFAULT NULL,
    `ReverseDocument`                int(10) DEFAULT NULL,
    `ReverseDocumentPostingDate`     varchar(80) DEFAULT NULL,   -- 新規追加
    `TaxAmount`                      varchar(13) DEFAULT NULL,   -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `SupplierInvoice`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
