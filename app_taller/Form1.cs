using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace app_taller
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            baseEntities bd = new baseEntities();
            articulos articulos = new articulos();
            articulos.descripcion = textBox1.Text;
            articulos.precio = float.Parse(textBox2.Text); 
            bd.articulos.Add(articulos);
            bd.SaveChanges();
        }
    }
}
