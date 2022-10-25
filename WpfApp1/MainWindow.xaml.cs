using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static KOTIKI320Entities Connection = new KOTIKI320Entities();
        public MainWindow()
        {
            InitializeComponent();
            RF();

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Connection.SaveChanges();
        }
        public void RF()
        {
            DataGrList.ItemsSource = Connection.Studs.ToList();
            ListStud.ItemsSource = Connection.Studs.ToList();
            TxtList.Text = Connection.Studs.First().Name;
            CmbList.ItemsSource = Connection.Studs.ToList();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            RF();
        }
    }
}
