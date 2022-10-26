using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
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
using System.Windows.Threading;

namespace VWH
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static Entities Connection = new Entities();
        DispatcherTimer Timer = new DispatcherTimer();
        int i = 0;
        public MainWindow()
        {
            InitializeComponent();

            ListData.ItemsSource = Connection.StudPars.ToList();
            DGDate.ItemsSource = Connection.StudPars.ToList();
            TxtName.Text = Connection.stud.First().Name;
            CmdDays.ItemsSource = Connection.DatePars.ToList();
            Timer.Interval = new TimeSpan(1000000);
            Timer.Tick += Timer_Tick;
            
            Timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            i++;
            //MessageBox.Show($"{i}");
            // ListData.Margin = new Thickness(i,i,i,i);
            ProgressB.Opacity += 0.01;
            ProgressB.Value = i;
            switch (i)
            {
                case 30:
                    {
                        Timer.Stop();

                        Timer.Start();
                        break;
                    }
                case 50:
                    {
                        Timer.Stop();

                        Timer.Start();
                        break;
                    }
                case 70:
                    {
                        Timer.Stop();

                        Timer.Start();
                        break;
                    }
                case 100:
                    {
                        Timer.Stop();
                        ProgressB.Value = 0;
                        ProgressB.Opacity = 0;
                        i = 0;
                        MessageBox.Show("1000 Баллллов Грифффендору");
                        Timer.Start();

                        break;
                    }
            }
           
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
