using ASP_OnlineShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShop.BUS
{
    public class ProductBUS
    {
        public static IEnumerable<SanPham> List()
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE DaXoa=0");
        }

        public static SanPham ProductDetail(int id)
        {
            var db = new ASP_OnlineShopConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where MaSanPham = @0", id);
        }

    }
}