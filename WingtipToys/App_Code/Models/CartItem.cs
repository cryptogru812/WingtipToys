﻿using System.ComponentModel.DataAnnotations;

/// <summary>
/// This class will provide the business logic to add, remove, and update items in the shopping cart.
/// </summary>

namespace WingtipToys.Models
{
    public class CartItem
    {
        [Key]
        public string ItemId { get; set; }

        public string CartId { get; set; }
        
        public int Quantity { get; set; }
        
        public System.DateTime DateCreated { get; set; }
        
        public int ProductId { get; set; }
        
        public virtual Product Product { get; set; }
    }
}