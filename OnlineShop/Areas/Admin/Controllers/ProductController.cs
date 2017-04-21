using ASP_OnlineShopConnection;
using OnlineShop.Areas.Admin.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        public ActionResult Index()
        {
            var listProduct = ProductBUS.List();
            return View(listProduct);
        }

        // GET: Admin/Product/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Product/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Product/Create
        [HttpPost]
        public ActionResult Create(SanPham sp)
        {
            try
            {
                // TODO: Add update logic here
                using (var db = new ASP_OnlineShopConnectionDB())
                {

                    if (HttpContext.Request.Files.Count > 0)
                    {
                        var hpf = HttpContext.Request.Files[0];
                        if (hpf.ContentLength > 0)
                        {
                            string fileName = Guid.NewGuid().ToString();
                            string nameImage = fileName + ".jpg";
                            string fullPathWithFileName = "/Images/" + nameImage;
                            hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                            sp.HinhUrl = nameImage;
                        }
                    }

                    db.Insert(sp);
                    //db.Update<SanPham>("SET TenSanPham=@0, GiaBan=@1, SoLuong=@2 WHERE MaSanPham=@3", sp.TenSanPham, sp.GiaBan, sp.SoLuong, id);
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Product/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Product/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Product/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Product/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
