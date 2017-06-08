CREATE PROCEDURE usp_InsertChiTietDonHang @mataikhoan nvarchar(128)
AS
BEGIN
	INSERT INTO chitietgiohang(SoLuong, DonGia, MaSanPham, MaTaiKhoan)
	SELECT DISTINCT SoLuong, GiaBan, MaSanPham, MaTaiKhoan 
    FROM dbo.V_GioHang WHERE MaTaiKhoan=@mataikhoan

	DELETE dbo.GioHang WHERE MaTaiKhoan=@mataikhoan
END 


EXEC dbo.usp_InsertChiTietDonHang @mataikhoan = N'c38848c6-8ab3-42c8-af7c-2d8a2c5b928b' -- nvarchar(128)