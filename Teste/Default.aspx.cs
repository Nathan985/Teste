using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Teste.DAL_Teste;

namespace Teste
{
    public partial class _Default : Page
    {
        SqlCommand objCommand = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            SelectDataStaff();
        }

        public void SelectDataStaff(string where = null)
        {
            string script = "SELECT vc_func_nome as Nome, vc_func_funcional as Funcional, vc_func_filial as Filial FROM Tbl_Funcionarios ";
            if(where != null)
            {
                script += where; 
            }
            SqlConnection conn = clsDados.OpenConnection();
            objCommand = new SqlCommand(script, conn);
            SqlDataReader data = objCommand.ExecuteReader();

            DataTable dtList = new DataTable();

            dtList.Load(data);

            GridViewStaffList.DataSource = dtList;
            GridViewStaffList.DataBind();
            clsDados.CloseConnection(conn);
        }

        protected void onFilterList(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text.ToString() != "Nenhum")
            {
                SelectDataStaff("WHERE vc_func_filial = '" + DropDownList1.SelectedItem.Text.ToString() + "'");
            }
        }
    }
}