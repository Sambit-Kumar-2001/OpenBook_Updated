﻿using Openbook.Entidades;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Openbook.Data.Inventory
{
    public class SalesMaster : IEntidadTenant
	{
		[Key]
		public int SalesMasterId { get; set; }
        [Required]
        public string SerialNo { get; set; }
        [Required]
        public string VoucherNo { get; set; }
        public string OrderNo { get; set; }
        public int WarehouseId { get; set; }
        public int VoucherTypeId { get; set; }
        public DateTime Date { get; set; }
        public DateTime DueDate { get; set; }
        public int CustomerSupplierId { get; set; }
        public int OrderMasterId { get; set; }
        public string Narration { get; set; }
        public decimal TotalTax { get; set; }
        public string Reference { get; set; }
        public string PaymentStatus { get; set; }
        public decimal DisPer { get; set; }
        public decimal BillDiscount { get; set; }
        public string DiscountType { get; set; }
        public decimal GrandTotal { get; set; }
        public decimal TotalAmount { get; set; }
        public decimal NetAmounts { get; set; }
        public decimal PayAmount { get; set; }
        public decimal BalanceDue { get; set; }
        public string Status { get; set; }
        public decimal PreviousDue { get; set; }
        public string UserId { get; set; }
        public int FinancialYearId { get; set; }
		public string TenantId { get; set; } = null!;
		public DateTime? AddedDate { get; set; }
        public DateTime? ModifyDate { get; set; }
        [NotMapped]
        public List<SalesDetails> listOrder { get; set; } = new List<SalesDetails>();
        [NotMapped]
        public List<DeleteItem> listDelete { get; set; } = new List<DeleteItem>();

    }
}
