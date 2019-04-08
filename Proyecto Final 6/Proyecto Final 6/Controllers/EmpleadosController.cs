using System;
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
    public class EmpleadosController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: Empleados
        public ActionResult Index()
        {
            return View(db.EmpleadosSet.ToList());
        }

        public ActionResult EmpleadoActivo()
        {
            var query = (from a in db.EmpleadosSet
                         where a.Estatus == "Activo"
                         select a).Include(e => e.Cargos).Include(k => k.Departamentos);


            return View(query.ToList());
        }



        public ActionResult EmpleadoInactivo()
        {
            var query = (from a in db.EmpleadosSet
                         where a.Estatus == "Inactivo"
                         select a).Include(e => e.Cargos).Include(k => k.Departamentos);


            return View(query.ToList());
        }

        // GET: Empleados/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleados empleados = db.EmpleadosSet.Find(id);
            if (empleados == null)
            {
                return HttpNotFound();
            }
            return View(empleados);
        }

        // GET: Empleados/Create
        public ActionResult Create()
        {

            var NombreD = db.DepartamentosSet.ToList();

            var listaDepartamentos = new SelectList(NombreD, "NombreD", "NombreD");
            ViewBag.NombreD = listaDepartamentos;

            var Cargo = db.CargosSet.ToList();

            var listaCargos = new SelectList(Cargo, "Cargo", "Cargo");
            ViewBag.Cargo = listaCargos;



            return View();
        }

        // POST: Empleados/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CodigoE,Nombre,Apellido,Telefono,NombreD,Cargo,FechaIngreso,Salario,Estatus")] Empleados empleados)
        {
            if (ModelState.IsValid)
            {
                db.EmpleadosSet.Add(empleados);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(empleados);
        }

        // GET: Empleados/Edit/5
        public ActionResult Edit(int? id)
        {

            var NombreD = db.DepartamentosSet.ToList();

            var listaDepartamentos = new SelectList(NombreD, "NombreD", "NombreD");
            ViewBag.NombreD = listaDepartamentos;

            var Cargo = db.CargosSet.ToList();

            var listaCargos = new SelectList(Cargo, "Cargo", "Cargo");
            ViewBag.Cargo = listaCargos;

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleados empleados = db.EmpleadosSet.Find(id);
            if (empleados == null)
            {
                return HttpNotFound();
            }
            return View(empleados);
        }

        // POST: Empleados/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CodigoE,Nombre,Apellido,Telefono,NombreD,Cargo,FechaIngreso,Salario,Estatus")] Empleados empleados)
        {
            if (ModelState.IsValid)
            {
                db.Entry(empleados).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(empleados);
        }

        // GET: Empleados/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleados empleados = db.EmpleadosSet.Find(id);
            if (empleados == null)
            {
                return HttpNotFound();
            }
            return View(empleados);
        }

        // POST: Empleados/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Empleados empleados = db.EmpleadosSet.Find(id);
            db.EmpleadosSet.Remove(empleados);
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
