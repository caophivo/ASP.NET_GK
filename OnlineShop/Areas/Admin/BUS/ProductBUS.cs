using ASP_OnlineShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShop.Areas.Admin.BUS
{
    public class ProductBUS
    {
        public static IEnumerable<SanPham> List()
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.Query<SanPham>("SELECT * FROM SanPham");
        }

        public static SanPham ProductDetail(int id)
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where MaSanPham = @0", id);
        }

        public static IEnumerable<LoaiSanPham> GetListCategogy()
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.Query<LoaiSanPham>("Select * FROM LoaiSanPham");
        }

        public static IEnumerable<NhaCungCap> GetListSupplier()
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.Query<NhaCungCap>("Select * FROM NhaCungCap");
        }

        public static IEnumerable<NhaSanXuat> GetListManufacturer()
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.Query<NhaSanXuat>("Select * FROM NhaSanXuat");
        }
    }
}