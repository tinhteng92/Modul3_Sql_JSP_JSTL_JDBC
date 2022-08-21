CREATE DATABASE `ProductManagement`;
use productManagement;

CREATE TABLE Product (
id int primary key,
productCode int,
productName varchar(50),
productPrice int,
productAmount int,
productDescription varchar(255),
productStatus Bit (25)
);

CREATE UNIQUE INDEX index_proCode
ON product ( productCode);

CREATE INDEX id_comp
ON product (productName, productPrice);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM product where productName like '%t%' ;
DROP INDEX index_proCode on product;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW product_view as
Select productCode, productName, productPrice, productStatus 
From product;

-- Tiến hành sửa đổi view
CREATE OR REPLACE VIEW customer_views AS
SELECT productCode, productName, productPrice, productStatus 
FROM product
WHERE productName = 'ti vi';

CREATE OR REPLACE VIEW product_view AS
SELECT productCode, productName, productPrice, productStatus 
FROM product
WHERE productName = 'ti vi';

-- Tiến hành xoá view
DROP View customer_views;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
Delimiter //
Create Procedure allproduct()
    BEGIN
    Select * from product;
    END//
DELIMITER ;

-- Tạo store procedure thêm một sản phẩm mới
Delimiter //
Create Procedure creatProduct (In id int, productCode int, productName varchar(50), productPrice int, productAmount int,
										productDescription varchar(255), productStatus Bit (25) )
Begin 
Insert into Product values (id, productCode, productName, productPrice, productAmount, productDescription, productStatus);
End //
DELIMITER ;

CALL creatProduct (5, 161, 'máy tính', 9000, 4, 'Dell', 1);

-- Tạo store procedure sửa thông tin sản phẩm theo id
Delimiter //
Create Procedure editProductPrice (IN id_input int, productPrice_input int)
Begin 
update product
set productPrice = productPrice_input
where id = id_input;
End //
DELIMITER ;

CALL editProductPrice (1, 3500);

-- Tạo store procedure xóa thông tin sản phẩm theo id
Delimiter //
Create Procedure deleteProduct (IN id_input int)
Begin
delete from product 
where id = id_input;
End //
DELIMITER ;

CALL deleteProduct (1);