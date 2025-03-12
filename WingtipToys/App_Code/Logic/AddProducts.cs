using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WingtipToys.Models;

namespace WingtipToys.Logic
{
    public class AddProducts
    {
        public bool AddProduct(string ProductName, string ProductDesc, string ProductPrice, string ProductCategory, string ProductImagePath)
        {
            var myProduct = new Product
            {
                ProductName = ProductName,
                Description = ProductDesc,
                UnitPrice = Convert.ToDouble(ProductPrice),
                ImagePath = ProductImagePath,
                CategoryID = Convert.ToInt32(ProductCategory),
            };

            using (ProductContext _db = new ProductContext())
            {
                // Add product to DB.
                _db.Products.Add(myProduct);
                _db.SaveChanges();
            }

            // Success.
            return true;
        }
    }
}