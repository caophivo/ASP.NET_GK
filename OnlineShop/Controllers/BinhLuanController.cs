﻿using Microsoft.AspNet.Identity;
using OnlineShop.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    public class BinhLuanController : Controller
    {
        // GET: BinhLuan
        [Authorize]
        public ActionResult Create(int MaSanPham=0, string NoiDung="")
        {
            if(MaSanPham == 0)
            {
                return Redirect("/");
            }
            BinhLuanBUS.Them(MaSanPham, User.Identity.GetUserId(), User.Identity.GetUserName(), NoiDung);
            return RedirectToAction("Details", "Product", new { id = MaSanPham });
        }

        public ActionResult Index(int MaSanPham)
        {
            ViewBag.MaSanPham = MaSanPham;
            return View(BinhLuanBUS.DanhSach(MaSanPham));
        }
    }
}