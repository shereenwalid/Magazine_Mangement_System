using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Magazine_Management;
using disconnect2;
using crystalreports;


namespace main
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void categoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            searchForm f = new searchForm();
            f.Show();
        }

    

        private void publishToolStripMenuItem_Click(object sender, EventArgs e)
        {
            publishForm ds = new publishForm();
            ds.Show();
        }

       

        private void detailsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            magazineDataForm mf = new magazineDataForm();
            mf.Show();
        }

        private void editToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dsForm ds = new dsForm();
            ds.Show();
        }

        private void reportsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            reportForm rf = new reportForm();
            rf.Show();
        }
    }
}
