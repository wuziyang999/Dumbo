using HPIT.Data.Core;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class FYDAL
    {
        public static FYDAL fydal = new FYDAL();
        public DbContext Countext { get; set; }
        public FYDAL()
        {
            this.Countext = new Model1();

        }
        public object GetPageDate(SearchModel<UserS> search, out int UserID)
        {
            GetPageListParameter<UserS, int> parameter = new GetPageListParameter<UserS, int>();
            parameter.isAsc = true;
            parameter.orderByLambda = t => t.UserID;
            parameter.pageIndex = search.PageIndex;
            parameter.pageSize = search.PageSize;
            parameter.whereLambda = t => t.UserID != 0;
            Model1 Instance = new Model1();
            DBBaseService baseService = new DBBaseService(Instance);
            List<UserS> list = baseService.GetSimplePagedData<UserS, int>(parameter, out UserID);
            return list;

        }





    }
}
