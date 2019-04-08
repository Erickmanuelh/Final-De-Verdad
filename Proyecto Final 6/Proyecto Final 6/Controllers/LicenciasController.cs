﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Proyecto_Final_6.Models;

namespace Proyecto_Final_6.Controllers
{
    public class LicenciasController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: Licencias
        public ActionResult Index()
        {
            return View(db.LicenciasSet.ToList());
        }

        // GET: Licencias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Licencias licencias = db.LicenciasSet.Find(id);
            if (licencias == null)
            {
                return HttpNotFound();
            }
            return View(licencias);
        }

        // GET: Licencias/Create
        public ActionResult Create()
        {
            var CodigoE = db.EmpleadosSet.ToList();

            var ListaEmpleados = new SelectList(CodigoE, "CodigoE", "CodigoE");
            ViewBag.CodigoE = ListaEmpleados;

            return View();
        }

        // POST: Licencias/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CodigoE,Desde,Hasta,Motivo,Comentarios")] Licencias licencias)
        {
            if (ModelState.IsValid)
            {
                db.LicenciasSet.Add(licencias);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(licencias);
        }

        // GET: Licencias/Edit/5
        public ActionResult Edit(int? id)
        {
            var CodigoE = db.EmpleadosSet.ToList();

            var ListaEmpleados = new SelectList(CodigoE, "CodigoE", "CodigoE");
            ViewBag.CodigoE = ListaEmpleados;

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Licencias licencias = db.LicenciasSet.Find(id);
            if (licencias == null)
            {
                return HttpNotFound();
            }
            return View(licencias);
        }

        // POST: Licencias/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CodigoE,Desde,Hasta,Motivo,Comentarios")] Licencias licencias)
        {
            if (ModelState.IsValid)
            {
                db.Entry(licencias).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(licencias);
        }

        // GET: Licencias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Licencias licencias = db.LicenciasSet.Find(id);
            if (licencias == null)
            {
                return HttpNotFound();
            }
            return View(licencias);
        }

        // POST: Licencias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Licencias licencias = db.LicenciasSet.Find(id);
            db.LicenciasSet.Remove(licencias);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
