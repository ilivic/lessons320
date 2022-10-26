using System;
using System.Collections.Generic;
using System.Diagnostics;
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

namespace VWH
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static Entities Connection = new Entities();

        public MainWindow()
        {
            InitializeComponent();

            ListData.ItemsSource = Connection.StudPars.ToList();
            DGDate.ItemsSource = Connection.StudPars.ToList();
            TxtName.Text = Connection.stud.First().Name;
            CmdDays.ItemsSource = Connection.DatePars.ToList();
        }

        private void CmdDays_Selected(object sender, RoutedEventArgs e)
        {
            if (CmdDays.SelectedItem != null)
            {
                var DateInfo = CmdDays.SelectedItem as DatePars;
                ListData.ItemsSource = Connection.StudPars.Where(z=>z.datePar_id == DateInfo.id_datePar).ToList();
            }
        }

        private void CmdDays_Selected_1(object sender, RoutedEventArgs e)
        {
            if (CmdDays.SelectedItem != null)
            {
                var DateInfo = CmdDays.SelectedItem as DatePars;
                ListData.ItemsSource = Connection.StudPars.Where(z => z.datePar_id == DateInfo.id_datePar).ToList();
            }
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            Connection.SaveChanges();
        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {

        }
    }
}
