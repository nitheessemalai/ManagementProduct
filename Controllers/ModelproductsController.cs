using ManagementLibrary.EntityframRepository;
using ManagementLibrary.WebApimodel;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static ManagementLibrary.EntityframRepository.Repository;


// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ManagementProduct.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
      public class ModelproductsController : ControllerBase

      {
        public IRepository EFobj;
        public ModelproductsController(IRepository obj)
        {
            EFobj = obj;
        }
        // GET: api/<Modelproducts>
        [HttpGet]
        public IEnumerable<Modelproducts> Get()
        {
            try
            {
                return EFobj.SPGetallModelproducts();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // GET api/<Modelproducts>/5
        [HttpGet("{id}")]
        public Modelproducts Get(int empID)
        {
            try
            {
                return EFobj.SPGetModelproductslID(empID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // POST api/<Modelproducts>
        [HttpPost]
        public void Post([FromBody] Modelproducts detail)
        {
            try
            {
                EFobj.SPInsert(detail);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // PUT api/<Modelproducts>/5
        [HttpPut("{id}")]
        public void Put(int empID, [FromBody] Modelproducts value)
        {
            try
            {
                value.ProductID = empID;
                EFobj.SPupdate(value);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        // DELETE api/<Modelproducts>/5
        [HttpDelete("{ID}")]
        public void Delete(int ID)
        {
            try
            {
                EFobj.SPDelete(ID);
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}