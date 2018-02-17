using System.Collections.Generic;
using SpyStore.DAL.Repos.Base;
using SpyStore.Model.Entities;
namespace SpyStore.DAL.Repos.Interfaces
{
    public interface ICategoryRepo : IRepo<Category>
    {
        IEnumerable<Category> GetAllWithProducts();
        Category GetOneWithProducts(int? id);
    }
}